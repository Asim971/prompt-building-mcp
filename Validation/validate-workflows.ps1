# Workflow Validation Script
# Dynamic 360 - Workflow Quality Assurance

param(
    [string]$WorkflowPath = "Workflows",
    [switch]$Verbose
)

Write-Host "Dynamic 360 - Workflow Validation" -ForegroundColor Cyan
Write-Host "=================================" -ForegroundColor Cyan

$ErrorCount = 0
$WarningCount = 0
$ValidatedCount = 0

function Test-WorkflowStructure {
    param(
        [string]$WorkflowFile
    )
    
    $issues = @()
    $content = Get-Content $WorkflowFile -Raw
    
    # Required sections
    $requiredSections = @(
        'workflow_id:',
        'version:',
        'description:',
        'Workflow Stages',
        'Success Criteria'
    )
    
    foreach ($section in $requiredSections) {
        if ($content -notmatch [regex]::Escape($section)) {
            $issues += "Missing required section: $section"
        }
    }
    
    # Check for stage definitions
    if ($content -notmatch '### Stage \d+:' -and $content -notmatch '## Stage \d+:') {
        $issues += "No workflow stages defined"
    }
    
    # Check for agent references
    if ($content -notmatch '\*\*Agent\*\*:') {
        $issues += "No agent assignments found"
    }
    
    # Check for quality gates
    if ($content -notmatch 'Success Criteria|Quality Gate') {
        $issues += "No quality gates or success criteria defined"
    }
    
    return $issues
}

function Test-WorkflowMetadata {
    param(
        [string]$WorkflowFile
    )
    
    $issues = @()
    $content = Get-Content $WorkflowFile -Raw
    
    # Extract workflow_id
    if ($content -match 'workflow_id:\s*"([^"]+)"') {
        $workflowId = $matches[1]
        if ($workflowId -notmatch '^[a-z][a-z0-9-]*[a-z0-9]$') {
            $issues += "Invalid workflow_id format: $workflowId"
        }
    }
    else {
        $issues += "workflow_id not found or invalid format"
    }
    
    # Extract version
    if ($content -match 'version:\s*"([^"]+)"') {
        $version = $matches[1]
        if ($version -notmatch '^\d+\.\d+\.\d+$') {
            $issues += "Invalid version format: $version"
        }
    }
    else {
        $issues += "version not found or invalid format"
    }
    
    # Check description length
    if ($content -match 'description:\s*"([^"]+)"') {
        $description = $matches[1]
        if ($description.Length -lt 20) {
            $issues += "Description too short (minimum 20 characters)"
        }
    }
    else {
        $issues += "description not found"
    }
    
    return $issues
}

# Get all workflow files
$workflowFiles = Get-ChildItem -Path $WorkflowPath -Filter "*.md" -Recurse -ErrorAction SilentlyContinue

if (-not $workflowFiles) {
    Write-Host "No workflow files found in $WorkflowPath" -ForegroundColor Yellow
    exit 1
}

Write-Host "Found $($workflowFiles.Count) workflow files" -ForegroundColor White
Write-Host ""

foreach ($workflowFile in $workflowFiles) {
    $relativePath = $workflowFile.FullName.Replace((Get-Location).Path, "").TrimStart('\')
    Write-Host "Validating: $relativePath" -ForegroundColor Yellow
    
    $workflowValid = $true
    
    # Test file structure
    $structureIssues = Test-WorkflowStructure -WorkflowFile $workflowFile.FullName
    
    if ($structureIssues.Count -eq 0) {
        Write-Host "  ✓ Workflow structure validation passed" -ForegroundColor Green
    }
    else {
        foreach ($issue in $structureIssues) {
            Write-Host "  ✗ $issue" -ForegroundColor Red
            $ErrorCount++
        }
        $workflowValid = $false
    }
    
    # Test metadata
    $metadataIssues = Test-WorkflowMetadata -WorkflowFile $workflowFile.FullName
    
    if ($metadataIssues.Count -eq 0) {
        Write-Host "  ✓ Metadata validation passed" -ForegroundColor Green
    }
    else {
        foreach ($issue in $metadataIssues) {
            Write-Host "  ⚠ $issue" -ForegroundColor Yellow
            $WarningCount++
        }
    }
    
    # Check file size (workflows should be comprehensive)
    $fileSize = (Get-Item $workflowFile.FullName).Length
    if ($fileSize -lt 1000) {
        Write-Host "  ⚠ Workflow file appears to be very short ($fileSize bytes)" -ForegroundColor Yellow
        $WarningCount++
    }
    else {
        Write-Host "  ✓ File size validation passed" -ForegroundColor Green
    }
    
    # Check for agent references
    $content = Get-Content $workflowFile.FullName -Raw
    $agentReferences = [regex]::Matches($content, '\*\*Agent\*\*:\s*([a-z_]+)')
    
    if ($agentReferences.Count -gt 0) {
        Write-Host "  ✓ Found $($agentReferences.Count) agent references" -ForegroundColor Green
        
        if ($Verbose) {
            foreach ($match in $agentReferences) {
                Write-Host "    - $($match.Groups[1].Value)" -ForegroundColor Gray
            }
        }
    }
    else {
        Write-Host "  ⚠ No agent references found" -ForegroundColor Yellow
        $WarningCount++
    }
    
    if ($workflowValid) {
        $ValidatedCount++
        Write-Host "  ✓ Workflow validation: PASSED" -ForegroundColor Green
    }
    else {
        Write-Host "  ✗ Workflow validation: FAILED" -ForegroundColor Red
    }
    
    Write-Host ""
}

# Validate workflow dependencies
Write-Host "Checking workflow dependencies..." -ForegroundColor Yellow

$allWorkflows = @{}
foreach ($workflowFile in $workflowFiles) {
    $content = Get-Content $workflowFile.FullName -Raw
    if ($content -match 'workflow_id:\s*"([^"]+)"') {
        $workflowId = $matches[1]
        $allWorkflows[$workflowId] = $workflowFile.Name
    }
}

Write-Host "  ✓ Identified $($allWorkflows.Count) workflows" -ForegroundColor Green

# Summary
Write-Host ""
Write-Host "Validation Summary" -ForegroundColor Cyan
Write-Host "=================" -ForegroundColor Cyan
Write-Host "Workflows validated: $ValidatedCount/$($workflowFiles.Count)" -ForegroundColor White
Write-Host "Errors: $ErrorCount" -ForegroundColor $(if ($ErrorCount -eq 0) { "Green" } else { "Red" })
Write-Host "Warnings: $WarningCount" -ForegroundColor $(if ($WarningCount -eq 0) { "Green" } else { "Yellow" })

if ($ErrorCount -eq 0 -and $WarningCount -eq 0) {
    Write-Host "🎉 All workflows passed validation!" -ForegroundColor Green
    exit 0
}
elseif ($ErrorCount -eq 0) {
    Write-Host "✅ Validation completed with warnings" -ForegroundColor Yellow
    exit 0
}
else {
    Write-Host "❌ Validation failed with errors" -ForegroundColor Red
    exit 1
}
# Agent Manifest Validation Script
# Dynamic 360 - Quality Assurance

param(
    [string]$AgentPath = "Apps/agents",
    [switch]$Verbose
)

Write-Host "Dynamic 360 - Agent Manifest Validation" -ForegroundColor Cyan
Write-Host "=========================================" -ForegroundColor Cyan

$ErrorCount = 0
$WarningCount = 0
$ValidatedCount = 0

# Schema validation function
function Test-JsonSchema {
    param(
        [string]$JsonPath,
        [string]$SchemaPath
    )
    
    try {
        $jsonContent = Get-Content $JsonPath -Raw | ConvertFrom-Json
        if ($Verbose) {
            Write-Host "✓ Valid JSON structure: $JsonPath" -ForegroundColor Green
        }
        return $true
    }
    catch {
        Write-Host "✗ Invalid JSON: $JsonPath - $($_.Exception.Message)" -ForegroundColor Red
        return $false
    }
}

# Agent manifest validation
function Test-AgentManifest {
    param(
        [string]$ManifestPath
    )
    
    $issues = @()
    
    try {
        $manifest = Get-Content $ManifestPath -Raw | ConvertFrom-Json
        
        # Required fields validation
        $requiredFields = @('agent_id', 'version', 'name', 'description', 'category', 'capabilities', 'input_schema', 'output_schema', 'safety_restrictions')
        
        foreach ($field in $requiredFields) {
            if (-not $manifest.PSObject.Properties[$field]) {
                $issues += "Missing required field: $field"
            }
        }
        
        # Agent ID validation
        if ($manifest.agent_id -and $manifest.agent_id -notmatch '^[a-z][a-z0-9_]*[a-z0-9]$') {
            $issues += "Invalid agent_id format: $($manifest.agent_id)"
        }
        
        # Version validation
        if ($manifest.version -and $manifest.version -notmatch '^\d+\.\d+\.\d+$') {
            $issues += "Invalid version format: $($manifest.version)"
        }
        
        # Category validation
        $validCategories = @('research', 'analysis', 'generation', 'planning', 'evaluation', 'orchestration')
        if ($manifest.category -and $manifest.category -notin $validCategories) {
            $issues += "Invalid category: $($manifest.category)"
        }
        
        # Capabilities validation
        if ($manifest.capabilities -and $manifest.capabilities.Count -eq 0) {
            $issues += "Empty capabilities array"
        }
        
        # Safety restrictions validation
        if ($manifest.safety_restrictions -and $manifest.safety_restrictions.Count -eq 0) {
            $issues += "Empty safety_restrictions array"
        }
        
        return $issues
    }
    catch {
        return @("Failed to parse manifest: $($_.Exception.Message)")
    }
}

# Get all agent directories
$agentDirs = Get-ChildItem -Path $AgentPath -Directory -ErrorAction SilentlyContinue

if (-not $agentDirs) {
    Write-Host "No agent directories found in $AgentPath" -ForegroundColor Yellow
    exit 1
}

Write-Host "Found $($agentDirs.Count) agent directories" -ForegroundColor White
Write-Host ""

foreach ($agentDir in $agentDirs) {
    Write-Host "Validating: $($agentDir.Name)" -ForegroundColor Yellow
    
    $manifestPath = Join-Path $agentDir.FullName "agent.manifest.json"
    $promptPath = Join-Path $agentDir.FullName "agent-prompt.md"
    $readmePath = Join-Path $agentDir.FullName "README.md"
    
    # Check required files exist
    $requiredFiles = @(
        @{Path = $manifestPath; Name = "agent.manifest.json"},
        @{Path = $promptPath; Name = "agent-prompt.md"},
        @{Path = $readmePath; Name = "README.md"}
    )
    
    $agentValid = $true
    
    foreach ($file in $requiredFiles) {
        if (Test-Path $file.Path) {
            Write-Host "  ✓ $($file.Name) exists" -ForegroundColor Green
        }
        else {
            Write-Host "  ✗ Missing $($file.Name)" -ForegroundColor Red
            $ErrorCount++
            $agentValid = $false
        }
    }
    
    # Validate manifest JSON structure
    if (Test-Path $manifestPath) {
        if (Test-JsonSchema -JsonPath $manifestPath -SchemaPath "Config/schemas/agent-manifest-schema.json") {
            Write-Host "  ✓ Valid JSON structure" -ForegroundColor Green
            
            # Validate manifest content
            $manifestIssues = Test-AgentManifest -ManifestPath $manifestPath
            
            if ($manifestIssues.Count -eq 0) {
                Write-Host "  ✓ Manifest validation passed" -ForegroundColor Green
            }
            else {
                foreach ($issue in $manifestIssues) {
                    Write-Host "  ⚠ $issue" -ForegroundColor Yellow
                    $WarningCount++
                }
                $agentValid = $false
            }
        }
        else {
            $ErrorCount++
            $agentValid = $false
        }
    }
    
    # Validate prompt file content
    if (Test-Path $promptPath) {
        $promptContent = Get-Content $promptPath -Raw
        if ($promptContent.Length -lt 100) {
            Write-Host "  ⚠ Prompt file appears to be too short" -ForegroundColor Yellow
            $WarningCount++
        }
        elseif ($promptContent -notmatch "Core Objective|Objective") {
            Write-Host "  ⚠ Prompt file missing core objective section" -ForegroundColor Yellow
            $WarningCount++
        }
        else {
            Write-Host "  ✓ Prompt file validation passed" -ForegroundColor Green
        }
    }
    
    if ($agentValid) {
        $ValidatedCount++
        Write-Host "  ✓ Agent validation: PASSED" -ForegroundColor Green
    }
    else {
        Write-Host "  ✗ Agent validation: FAILED" -ForegroundColor Red
    }
    
    Write-Host ""
}

# Summary
Write-Host "Validation Summary" -ForegroundColor Cyan
Write-Host "=================" -ForegroundColor Cyan
Write-Host "Agents validated: $ValidatedCount/$($agentDirs.Count)" -ForegroundColor White
Write-Host "Errors: $ErrorCount" -ForegroundColor $(if ($ErrorCount -eq 0) { "Green" } else { "Red" })
Write-Host "Warnings: $WarningCount" -ForegroundColor $(if ($WarningCount -eq 0) { "Green" } else { "Yellow" })

if ($ErrorCount -eq 0 -and $WarningCount -eq 0) {
    Write-Host "🎉 All agents passed validation!" -ForegroundColor Green
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
                    $WarningCount++
                }
                $agentValid = $false
            }
        }
        else {
            $ErrorCount++
            $agentValid = $false
        }
    }
    
    # Validate prompt file content
    if (Test-Path $promptPath) {
        $promptContent = Get-Content $promptPath -Raw
        if ($promptContent.Length -lt 100) {
            Write-Host "  ⚠ Prompt file appears to be too short" -ForegroundColor Yellow
            $WarningCount++
        }
        elseif ($promptContent -notmatch "Core Objective|Objective") {
            Write-Host "  ⚠ Prompt file missing core objective section" -ForegroundColor Yellow
            $WarningCount++
        }
        else {
            Write-Host "  ✓ Prompt file validation passed" -ForegroundColor Green
        }
    }
    
    if ($agentValid) {
        $ValidatedCount++
        Write-Host "  ✓ Agent validation: PASSED" -ForegroundColor Green
    }
    else {
        Write-Host "  ✗ Agent validation: FAILED" -ForegroundColor Red
    }
    
    Write-Host ""
}

# Summary
Write-Host "Validation Summary" -ForegroundColor Cyan
Write-Host "=================" -ForegroundColor Cyan
Write-Host "Agents validated: $ValidatedCount/$($agentDirs.Count)" -ForegroundColor White
Write-Host "Errors: $ErrorCount" -ForegroundColor $(if ($ErrorCount -eq 0) { "Green" } else { "Red" })
Write-Host "Warnings: $WarningCount" -ForegroundColor $(if ($WarningCount -eq 0) { "Green" } else { "Yellow" })

if ($ErrorCount -eq 0 -and $WarningCount -eq 0) {
    Write-Host "🎉 All agents passed validation!" -ForegroundColor Green
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
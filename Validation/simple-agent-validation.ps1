# Simple Agent Validation Script
# Dynamic 360 - Quality Assurance

Write-Host "Dynamic 360 - Agent Validation" -ForegroundColor Cyan
Write-Host "==============================" -ForegroundColor Cyan

$AgentPath = "Apps/agents"
$ErrorCount = 0
$ValidatedCount = 0

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
    
    $agentValid = $true
    
    # Check manifest file
    if (Test-Path $manifestPath) {
        try {
            $manifest = Get-Content $manifestPath -Raw | ConvertFrom-Json
            Write-Host "  ✓ agent.manifest.json is valid JSON" -ForegroundColor Green
            
            # Check required fields
            $requiredFields = @('agent_id', 'version', 'name', 'description', 'category')
            foreach ($field in $requiredFields) {
                if ($manifest.PSObject.Properties.Name -contains $field) {
                    Write-Host "  ✓ Has required field: $field" -ForegroundColor Green
                } else {
                    Write-Host "  ✗ Missing required field: $field" -ForegroundColor Red
                    $ErrorCount++
                    $agentValid = $false
                }
            }
        }
        catch {
            Write-Host "  ✗ Invalid JSON in agent.manifest.json" -ForegroundColor Red
            $ErrorCount++
            $agentValid = $false
        }
    }
    else {
        Write-Host "  ✗ Missing agent.manifest.json" -ForegroundColor Red
        $ErrorCount++
        $agentValid = $false
    }
    
    # Check prompt file
    if (Test-Path $promptPath) {
        Write-Host "  ✓ agent-prompt.md exists" -ForegroundColor Green
    }
    else {
        Write-Host "  ✗ Missing agent-prompt.md" -ForegroundColor Red
        $ErrorCount++
        $agentValid = $false
    }
    
    # Check README file
    if (Test-Path $readmePath) {
        Write-Host "  ✓ README.md exists" -ForegroundColor Green
    }
    else {
        Write-Host "  ✗ Missing README.md" -ForegroundColor Red
        $ErrorCount++
        $agentValid = $false
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

if ($ErrorCount -eq 0) {
    Write-Host "🎉 All agents passed validation!" -ForegroundColor Green
    exit 0
}
else {
    Write-Host "❌ Validation failed with $ErrorCount errors" -ForegroundColor Red
    exit 1
}
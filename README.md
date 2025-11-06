# Dynamic 360 - Agentic Journey System for Dynamics 365 Manufacturing Analysis

## Overview

Dynamic 360 is a sophisticated agentic journey system designed to analyze Microsoft Dynamics 365 opportunities in the manufacturing industry worldwide. The system uses advanced prompt engineering and AI agents to identify unmet customer needs and potential ISV (Independent Software Vendor) product opportunities.

## Project Structure

```
Dynamic360/
├── .github/                    # GitHub configuration and Copilot instructions
├── Prompts/                    # Prompt engineering framework
│   ├── prompt-engineer-agent.md
│   ├── copilot-instructions.md
│   ├── next_prompt.template.json
│   ├── next_prompt.example.json
│   ├── prompt-iteration-log.jsonl
│   ├── feedback_map.yaml
│   └── lessons/                # Prompt lessons and feedback
├── Apps/                       # Agent applications
│   └── agents/                 # Individual agent implementations
│       ├── editor-agent/
│       ├── evaluator-agent/
│       ├── research-agent/
│       ├── prd-agent/
│       ├── technical-planning-agent/
│       ├── roadmap-agent/
│       └── market-research-agent/
├── Workflows/                  # Analysis workflow definitions
│   ├── research-workflows/
│   ├── prd-workflows/
│   ├── technical-workflows/
│   └── market-analysis-workflows/
├── Data/                       # Data storage and processing
│   ├── inputs/                 # Raw input data
│   ├── outputs/                # Generated analysis results
│   └── templates/              # Document templates
├── Config/                     # Configuration files
│   ├── agent-configs/
│   └── workflow-configs/
└── Tools/                      # Utility tools and scripts
    ├── validation/
    └── automation/
```

## Core Features

### 1. Prompt Engineering Framework
- **Canonical Master Prompt**: Deterministic, auditable prompt-iteration workflows
- **Agent Registry**: Centralized management of specialized agents
- **Safety Controls**: Comprehensive safety restrictions and validation
- **Iteration Logging**: Complete audit trail of prompt evolution

### 2. Specialized Agents
- **Research Agent**: Deep market and technology research
- **PRD Agent**: Product Requirements Document generation
- **Technical Planning Agent**: Technical architecture and implementation planning
- **Roadmap Agent**: Strategic roadmap development
- **Market Research Agent**: Competitive analysis and market sizing

### 3. Analysis Workflows
- **Agentic Journey Orchestration**: End-to-end analysis processes
- **Structured Output Generation**: JSON-schema validated results
- **Quality Assurance**: Built-in evaluation and validation
- **Iterative Refinement**: Continuous improvement cycles

## Quick Start

### Prerequisites
- VS Code with appropriate extensions
- Node.js (for JSON schema validation)
- Python (for data processing workflows)

### Setup
1. Clone the repository
2. Open in VS Code
3. Install recommended extensions
4. Review the prompt engineering framework in `Prompts/`
5. Explore agent configurations in `Apps/agents/`

### Usage
1. **Define Analysis Objective**: Specify what aspect of Dynamics 365 manufacturing to analyze
2. **Select Agent Journey**: Choose appropriate workflow from `Workflows/`
3. **Execute Analysis**: Run the agentic journey using the prompt engineering system
4. **Review Results**: Examine structured outputs and generated insights
5. **Iterate and Refine**: Use feedback mechanisms to improve results

## Agent Architecture

Each agent follows a consistent structure:
- **agent.manifest.json**: Capabilities, schemas, and safety restrictions
- **README.md**: Agent purpose and usage instructions
- **agent-prompt.md**: Core prompt definition
- **validation/**: Quality assurance and testing

## Safety and Compliance

- **No External Actions**: Agents cannot perform network or filesystem operations without approval
- **Deterministic Outputs**: All operations are reproducible and auditable
- **Privacy Protection**: No unauthorized data access or sharing
- **Validation Gates**: Multiple checkpoints for quality and safety

## Contributing

1. Follow the established agent architecture patterns
2. Implement comprehensive safety restrictions
3. Include thorough documentation and examples
4. Add appropriate validation and testing
5. Maintain audit trails and logging

## License

This project is designed for internal analysis and research purposes focusing on Microsoft Dynamics 365 manufacturing opportunities.

## Support

For questions about the prompt engineering framework, agent development, or workflow configuration, refer to the documentation in the respective directories.
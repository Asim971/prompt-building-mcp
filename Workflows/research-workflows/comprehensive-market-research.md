# Comprehensive Market Research Workflow
# Dynamic 360 - Agentic Journey for Dynamics 365 Manufacturing Analysis

workflow_id: "market-research-comprehensive"
version: "1.0.0"
description: "End-to-end market research workflow for identifying D365 manufacturing ISV opportunities"

## Workflow Stages

### Stage 1: Research Initiation
**Agent**: research_agent
**Objective**: Conduct initial market landscape analysis
**Inputs**:
  - research_query: "Manufacturing industry opportunities for D365 ISV solutions"
  - focus_area: User-specified (e.g., "supply chain optimization", "predictive maintenance")
  - scope: Geographic and temporal parameters
  - context: Industry segment, D365 focus areas

**Outputs**:
  - Market landscape overview
  - Initial opportunity identification
  - Competitive landscape mapping
  - Research findings with confidence scores

**Success Criteria**:
  - At least 5 distinct opportunity areas identified
  - Competitive analysis covers top 10 existing solutions
  - Market size estimation with confidence > 0.7
  - Regional analysis for specified geography

### Stage 2: Market Research Deep Dive
**Agent**: market_research_agent
**Objective**: Detailed market analysis and sizing
**Inputs**:
  - Research findings from Stage 1
  - Specific market segments identified
  - Customer persona definitions
  - Competitive intelligence requirements

**Outputs**:
  - Detailed market sizing and growth projections
  - Customer segment analysis and needs assessment
  - Competitive positioning and differentiation opportunities
  - Market entry strategies and barriers

**Success Criteria**:
  - TAM/SAM/SOM analysis completed
  - Customer journey mapping for top 3 segments
  - Competitive SWOT analysis for top 5 competitors
  - Market entry timeline and investment requirements

### Stage 3: Opportunity Prioritization
**Agent**: evaluator_agent
**Objective**: Assess and prioritize identified opportunities
**Inputs**:
  - Research findings from Stages 1-2
  - Business criteria and constraints
  - Technical feasibility assessments
  - Resource availability and capabilities

**Outputs**:
  - Prioritized opportunity matrix (impact vs. effort)
  - Risk assessment for top opportunities
  - Resource requirement analysis
  - Go/no-go recommendations

**Success Criteria**:
  - Top 3 opportunities clearly identified and justified
  - Risk assessment completed for all high-priority opportunities
  - Resource requirements estimated with 20% accuracy
  - Clear recommendation with supporting rationale

### Stage 4: PRD Generation
**Agent**: prd_agent
**Objective**: Generate comprehensive PRD for selected opportunity
**Inputs**:
  - Selected opportunity from Stage 3
  - Market research data and customer insights
  - Technical constraints and requirements
  - Business objectives and success criteria

**Outputs**:
  - Complete Product Requirements Document
  - Functional and non-functional requirements
  - Stakeholder analysis and engagement plan
  - Success metrics and KPIs

**Success Criteria**:
  - PRD contains all mandatory sections
  - Requirements are SMART and testable
  - Stakeholder analysis covers all relevant groups
  - Success metrics align with business objectives

### Stage 5: Technical Planning
**Agent**: technical_planning_agent
**Objective**: Create technical architecture and implementation plan
**Inputs**:
  - PRD from Stage 4
  - Technical requirements and constraints
  - Integration requirements with D365
  - Performance and scalability requirements

**Outputs**:
  - Technical architecture design
  - Technology stack recommendations
  - Implementation roadmap and timeline
  - Risk assessment and mitigation strategies

**Success Criteria**:
  - Architecture supports all PRD requirements
  - Technology stack aligns with Microsoft ecosystem
  - Implementation plan is realistic and achievable
  - Risk mitigation strategies are comprehensive

## Workflow Execution

### Prerequisites
- Market research objectives clearly defined
- Geographic scope and target segments specified
- Technical constraints and business requirements documented
- Resource availability and timeline constraints established

### Execution Flow
1. **Initialize**: Set up workflow context and parameters
2. **Research**: Execute Stages 1-2 for comprehensive market analysis
3. **Evaluate**: Run Stage 3 for opportunity assessment and prioritization
4. **Document**: Generate Stage 4 PRD for selected opportunity
5. **Plan**: Create Stage 5 technical implementation plan
6. **Review**: Validate outputs and iterate if necessary

### Quality Gates
- Each stage output reviewed against success criteria
- Confidence scores meet minimum thresholds
- Technical feasibility validated by subject matter experts
- Business case validated against market research findings

### Iteration Policy
- If stage fails quality gate, iterate with refined inputs
- Maximum 3 iterations per stage before escalation
- Lessons learned captured in feedback_map.yaml
- Continuous improvement based on workflow outcomes

## Output Artifacts
- Market Research Report (Stages 1-2)
- Opportunity Assessment Matrix (Stage 3)
- Product Requirements Document (Stage 4)
- Technical Architecture Plan (Stage 5)
- Executive Summary and Recommendations

## Success Metrics
- Time to complete full workflow: < 5 business days
- Quality score for all outputs: > 8/10
- Stakeholder satisfaction: > 85%
- Implementation plan accuracy: ±20% of actual effort
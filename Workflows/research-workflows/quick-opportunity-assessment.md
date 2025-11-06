# Quick Opportunity Assessment Workflow
# Dynamic 360 - Rapid Analysis for Time-Sensitive Opportunities

workflow_id: "quick-opportunity-assessment"
version: "1.0.0"
description: "Rapid assessment workflow for evaluating emerging D365 manufacturing opportunities"
duration: "4-6 hours"

## Workflow Overview
This streamlined workflow provides rapid assessment of potential opportunities when time constraints require quick decision-making. Designed for initial screening and go/no-go decisions.

### Stage 1: Rapid Market Scan (60 minutes)
**Agent**: research_agent
**Mode**: rapid_analysis
**Inputs**:
  - opportunity_description: Brief description of the potential opportunity
  - market_segment: Primary industry segment (automotive, aerospace, etc.)
  - geographic_focus: Primary geographic market
  - urgency_level: high (for time-sensitive opportunities)

**Outputs**:
  - Market size estimation (order of magnitude)
  - Top 3 competitive solutions identified
  - Primary customer pain points
  - Initial feasibility assessment

**Time Allocation**: 60 minutes
**Quality Target**: Confidence > 0.6 for key findings

### Stage 2: Competitive Quick Scan (45 minutes)
**Agent**: market_research_agent
**Mode**: competitive_intelligence
**Inputs**:
  - Competitive solutions from Stage 1
  - Market segment and geography
  - Key differentiation factors to evaluate

**Outputs**:
  - Competitive positioning map
  - Key differentiators and white space identification
  - Pricing and business model analysis
  - Market entry barriers assessment

**Time Allocation**: 45 minutes
**Quality Target**: Cover top 5 competitors minimum

### Stage 3: Business Case Evaluation (30 minutes)
**Agent**: evaluator_agent
**Mode**: business_assessment
**Inputs**:
  - Market and competitive findings
  - Internal capabilities and constraints
  - Investment appetite and timeline

**Outputs**:
  - Business case strength (strong/moderate/weak)
  - Key risks and mitigation requirements
  - Resource requirement estimate
  - Go/no-go recommendation

**Time Allocation**: 30 minutes
**Quality Target**: Clear recommendation with supporting rationale

### Stage 4: Next Steps Planning (15 minutes)
**Agent**: editor_agent
**Mode**: action_planning
**Inputs**:
  - Assessment results from Stages 1-3
  - Decision outcome (go/no-go)
  - Available resources and timeline

**Outputs**:
  - Next steps action plan
  - Resource allocation recommendations
  - Timeline for detailed analysis (if go decision)
  - Key questions for further investigation

**Time Allocation**: 15 minutes

## Decision Matrix

### Go Criteria (must meet 3 of 4)
1. **Market Size**: TAM > $100M in target geography
2. **Competitive Position**: Clear differentiation opportunity identified
3. **Technical Feasibility**: No major technical blockers identified
4. **Business Fit**: Aligns with organizational capabilities and strategy

### No-Go Criteria (any 1 triggers)
1. **Market Saturation**: >5 established competitors with similar solutions
2. **Technical Complexity**: Requires capabilities beyond current organization
3. **Regulatory Barriers**: Significant compliance or regulatory challenges
4. **Resource Constraints**: Required investment exceeds available budget by >50%

## Quality Gates

### Minimum Quality Standards
- Market size estimate within 2x order of magnitude
- At least 3 competitive solutions analyzed
- Risk assessment covers technical, market, and business risks
- Recommendation supported by quantitative analysis

### Escalation Triggers
- Conflicting data from multiple sources
- High uncertainty in key assumptions (confidence < 0.5)
- Significant risks without clear mitigation strategies
- Resource requirements exceed organizational capacity

## Output Format

### Executive Summary Template
```
# Opportunity Assessment: [Opportunity Name]
Date: [Assessment Date]
Duration: [Time Spent]

## Recommendation: [GO/NO-GO]

### Market Opportunity
- Market Size: [TAM/SAM estimate]
- Growth Rate: [Annual growth projection]
- Customer Segments: [Primary targets]

### Competitive Landscape
- Key Competitors: [Top 3-5 competitors]
- Differentiation Opportunity: [Key differentiators]
- Market Position: [Competitive positioning]

### Business Case
- Investment Required: [Rough estimate]
- Revenue Potential: [3-year projection]
- Key Risks: [Top 3 risks]

### Next Steps
- [If GO]: Recommended next actions and timeline
- [If NO-GO]: Key factors that could change decision
```

## Success Metrics
- Decision accuracy: >80% correlation with detailed analysis outcomes
- Speed: Complete assessment in <6 hours
- Actionability: >90% of recommendations result in clear next steps
- Resource efficiency: <10% of effort compared to comprehensive workflow
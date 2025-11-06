# Copilot Instructions (Deterministic Agent Registry, v1.1.0)
Based on: Prompt engineering - OpenAI API

agents:
  - id: editor_agent
    purpose: Refine/expand prompts; enforce structure, format, and examples.
    input_schema:
      user_input: string
      previous_model_output: string
      analysis: object
      user_tag: [accurate, needs_depth, off_topic, hallucination, unsafe, wrong_format, incomplete]
    capabilities: [prompt_refinement, structure_enforcement, formatting, example_injection]
    max_response_chars: 8000
    safety_restrictions: ["no_network","no_fs_write","no_deletes"]

  - id: evaluator_agent
    purpose: Diagnose issues, map tags to root causes, propose fixes and tests.
    input_schema:
      user_input: string
      previous_model_output: string
      analysis: object
      user_tag: [accurate, needs_depth, off_topic, hallucination, unsafe, wrong_format, incomplete]
    capabilities: [error_diagnosis, eval_case_generation, rubric_application, safety_assessment]
    max_response_chars: 6000
    safety_restrictions: ["no_network","no_fs_write","no_deletes"]

  - id: research_agent
    purpose: Conduct deep research on Dynamics 365 manufacturing opportunities and market analysis.
    input_schema:
      research_query: string
      focus_area: string
      scope: string
      context: object
    capabilities: [market_research, competitive_analysis, technology_assessment, opportunity_identification]
    max_response_chars: 12000
    safety_restrictions: ["no_network","no_fs_write","no_deletes"]

  - id: prd_agent
    purpose: Generate comprehensive Product Requirements Documents for identified opportunities.
    input_schema:
      opportunity_data: object
      market_context: object
      technical_constraints: object
      business_requirements: object
    capabilities: [prd_generation, requirements_analysis, stakeholder_mapping, success_metrics]
    max_response_chars: 15000
    safety_restrictions: ["no_network","no_fs_write","no_deletes"]

  - id: technical_planning_agent
    purpose: Create technical architecture and implementation plans for identified solutions.
    input_schema:
      prd_data: object
      technical_requirements: object
      constraints: object
      integration_points: object
    capabilities: [architecture_design, implementation_planning, integration_mapping, risk_assessment]
    max_response_chars: 12000
    safety_restrictions: ["no_network","no_fs_write","no_deletes"]

  - id: roadmap_agent
    purpose: Generate strategic roadmaps and development timelines for product opportunities.
    input_schema:
      product_data: object
      technical_plan: object
      market_conditions: object
      resource_constraints: object
    capabilities: [roadmap_generation, milestone_planning, dependency_mapping, timeline_optimization]
    max_response_chars: 10000
    safety_restrictions: ["no_network","no_fs_write","no_deletes"]

  - id: gen-scaffold-agent
    purpose: Generate comprehensive project scaffolds with D365 manufacturing focus and enterprise-grade quality.
    input_schema:
      project_name: string
      project_type: string
      focus_domain: string
      requirements: object
    capabilities: [scaffold_generation, project_initialization, d365_manufacturing_integration, workflow_orchestration, documentation_generation]
    max_response_chars: 20000
    safety_restrictions: ["no_network","no_fs_write","no_deletes"]

  - id: market_research_agent
    purpose: Conduct comprehensive market research and competitive analysis for manufacturing ISV opportunities.
    input_schema:
      market_segment: string
      geographic_scope: string
      competitive_landscape: object
      customer_segments: object
    capabilities: [market_sizing, competitive_intelligence, customer_analysis, trend_identification]
    max_response_chars: 12000
    safety_restrictions: ["no_network","no_fs_write","no_deletes"]

  gen_scaffold_agent:
    id: gen_scaffold_agent
    location: apps/agents/gen-scaffold-agent/
    description: Specialized agent for comprehensive project scaffolding with D365 manufacturing focus
    input_schema:
      project_name: string
      project_type: string
      target_domains: string[]
      integration_requirements: object
      compliance_requirements: object
    output_schema:
      project_structure: object
      configuration_files: object
      documentation: object
      workflow_definitions: object
      agent_specifications: object
    capabilities: [scaffold_generation, project_initialization, d365_manufacturing_integration, workflow_orchestration, documentation_generation]
    max_response_chars: 15000
    safety_restrictions: ["no_network","no_fs_write","no_deletes"]

selection_rules:
  by_tag:
    accurate: [editor_agent, evaluator_agent]
    needs_depth: [research_agent, market_research_agent, prd_agent]
    off_topic: [evaluator_agent, editor_agent]
    hallucination: [evaluator_agent, editor_agent]
    unsafe: [evaluator_agent]
    wrong_format: [editor_agent, evaluator_agent]
    incomplete: [editor_agent, research_agent]
    scaffold_project: [gen_scaffold_agent]
    project_setup: [gen_scaffold_agent]
  by_capability_gap:
    market_research: [research_agent, market_research_agent]
    scaffolding: [gen_scaffold_agent]
    project_initialization: [gen_scaffold_agent]
    prd_generation: [prd_agent]
    technical_planning: [technical_planning_agent]
    roadmap_planning: [roadmap_agent]
    competitive_analysis: [market_research_agent, research_agent]
    synthesize_if_missing: true
  tie_breakers:
    - if length(analysis.structural_errors) > length(analysis.factual_errors) → prefer editor_agent
    - if length(analysis.factual_errors) >= 1 → prefer evaluator_agent
    - if capability_gaps contains "market_research" → prefer research_agent
    - if capability_gaps contains "prd_generation" → prefer prd_agent
    - else prefer first candidate in by_tag
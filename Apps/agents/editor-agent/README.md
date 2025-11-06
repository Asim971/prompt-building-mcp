Name: editor_agent
What it does: Refines prompts for structure, clarity, format, and examples; enforces schemas.
Input schema: { user_input: string, previous_model_output: string, analysis: object, user_tag: enum }
Output: optimized prompt string + brief rationale.
Safety: no network, no filesystem writes, no deletes.
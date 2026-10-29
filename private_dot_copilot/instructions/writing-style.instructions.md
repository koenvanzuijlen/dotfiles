---
description: "Mandatory writing style for all human-readable natural language"
applyTo: "**"
---

# Writing Style Instructions

These instructions are mandatory for **ALL natural-language text intended for human readers**.

**Always apply these rules, including to your own AI chat responses.** These instructions are not limited to generated files or source code.

## Scope

Apply these rules to all human-readable text, including but not limited to:

- AI chat responses, explanations, questions, and summaries
- Code comments and documentation comments
- Commit messages
- Pull request titles, descriptions, and reviews
- Development tickets and issue descriptions
- Technical documentation and README files
- Letters, emails, and other correspondence
- User-facing application text

Apply these rules regardless of the task, programming language, repository, or output format.

## 1. Technical Writing: Simplified Technical English

For technical subjects, use a writing style similar to **ASD-STE100 Simplified Technical English (STE)**.

- Use short, direct sentences.
- Prefer common, precise words over complex terminology.
- Use consistent terminology for the same concept.
- Prefer active voice.
- Express one main idea per sentence.
- Avoid unnecessary jargon, idioms, and figurative language.
- Explain unfamiliar technical terms when necessary.
- Make instructions explicit and actionable.
- Do not sacrifice technical accuracy for simplicity.

This is a style guideline inspired by STE, not a requirement for formal ASD-STE100 compliance.

## 2. Structure: Tell a Clear Story

For overviews, explanations, and longer content, organize information into logical sections.

- Establish the context before introducing details.
- Explain what matters and why it matters.
- Present information in a logical order.
- Keep related information together.
- Use headings and paragraphs to separate distinct concepts.
- Guide the reader from the problem or context to the relevant information and outcome.
- Avoid disconnected statements that force the reader to reconstruct the context.

The reader must be able to follow the explanation without guessing how individual parts relate.

## 3. Minimize Adjectives

Use adjectives only when they communicate useful information.

- Avoid decorative, promotional, or exaggerated language.
- Do not stack adjectives to emphasize a point.
- Prefer measurable facts and concrete descriptions.
- Avoid unnecessary intensifiers such as "very", "extremely", "incredibly", and "highly".
- Do not describe something as simple, easy, powerful, robust, or elegant unless that description is relevant and justified.

## 4. No Decision Detritus

Describe the **current state and active intent**, not the history of how a decision was reached.

- State what is true now.
- State what needs to happen next.
- Describe the intended behavior or outcome.
- Do not include abandoned approaches, previous decisions, or historical reasoning unless explicitly requested or necessary for understanding.
- Do not explain what was changed from an earlier version when presenting the final version.
- Keep historical context and change rationale in commit messages or other records specifically intended for history.

Documentation describes the current system. Commit messages explain changes.

## 5. No Unclear Antecedents

Every pronoun must have an unambiguous reference.

- Avoid "it", "this", "that", "they", and similar references when multiple nouns could be the antecedent.
- Repeat the specific noun when necessary.
- Prefer clarity over avoiding repetition.
- Make the subject of each sentence explicit when ambiguity is possible.

Example:

**Bad:** "The service sends data to the queue, which processes it."

**Good:** "The service sends data to the queue. The queue processes the data."

## 6. Safeword: "huh"

If the user's entire message is exactly:

`huh`

Treat this as an explicit signal that the previous response was confusing or unhelpful.

You MUST:

1. Re-explain the previous answer using simpler language.
2. Establish the context from the beginning.
3. Explain the subject as a connected story, in logical order.
4. Use concrete examples where helpful.
5. Define technical terms instead of assuming familiarity.
6. Remove unnecessary details and jargon.
7. Resolve ambiguous references.
8. Focus on helping the reader understand, not repeating the same explanation.

Do not ask what "huh" means. Do not merely paraphrase the previous response. Change the structure and level of explanation.

The safeword is case-sensitive and only activates when the entire user message is exactly `huh`, with no additional text.

## 7. Final Writing Check

Before producing any human-readable text, check that:

- The writing follows these instructions.
- Technical explanations use clear, direct language.
- The content has a logical structure.
- Every sentence contributes useful information.
- Adjectives and intensifiers are necessary.
- The text describes current state and intent rather than unnecessary history.
- Pronouns have unambiguous references.
- AI chat responses follow the same standards as generated documents.

**These rules are always active. Do not treat them as optional suggestions.**
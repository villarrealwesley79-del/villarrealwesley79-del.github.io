---
title: "Standardize Spacing Around the % Symbol in JavaScript & TypeScript Projects"
description: "A complete guide to enforcing consistent formatting of the percent sign in modern codebases using Prettier, ESLint, and editor-level settings."
author: "Wesley V."
date: 2024-06-03
tags: [prettier, eslint, javascript, typescript, style-guide]
---

## Overview

The `%` (percent) symbol is widely used in JavaScript and TypeScript for the *remainder* operator (`a % b`). Inconsistent spacing—e.g., `a%b` vs. `a % b`—creates visual noise and complicates code reviews. This guide shows how to **enforce a single, consistent style** across an entire repository without relying on brittle one-off rules.

## Decide on the Single Source of Truth

1. **Choose the style**:  
   - **With spaces**: `a % b` – improves readability, matches most style guides.  
   - **Without spaces**: `a%b` – slightly more compact.  
   _We will proceed with **spaces**._

2. **Pick the tool that owns whitespace** – that tool is **Prettier**, not ESLint. ESLint only verifies code **after** formatting is done.

## Step-by-Step Implementation

### 1. Configure Prettier (Recommended)

Prettier’s default settings already add spaces around **binary operators**, including `%`.  
Ensure your project uses Prettier ≥ 3.0 and the configuration is committed:

```json
// .prettierrc.json
{
  "semi": true,
  "singleQuote": true,
  "trailingComma": "es5"
  /* spaces around % are default */
}
```

Run:

```bash
npx prettier --write .
```

Prettier will rewrite `a%b` → `a % b` everywhere.

### 2. Lock the Style with ESLint

Use the **official Prettier rule set** to *prevent* any file from drifting away once Prettier has run:

```bash
npm i -D eslint-config-prettier eslint-plugin-prettier
```

Then extend Prettier’s rules in your ESLint configuration:

```js
// .eslintrc.js
module.exports = {
  extends: [
    '@eslint/js/recommended',
    'plugin:prettier/recommended', // turns off conflicting ESLint rules
  ],
  rules: {
    /* other project-specific rules */
  },
};
```

This plugin exposes `prettier/prettier`, which fails the linter if the code is not in Prettier’s canonical format—guaranteeing the `%` spacing is enforced.

### 3. Automate Pre-Commit & CI

**husky + lint-staged** keeps every commit clean:

```bash
npx husky-init && npm i -D lint-staged
```

Add to `package.json`:

```json
{
  "lint-staged": {
    "*.{js,ts,jsx,tsx}": ["prettier --write", "eslint --cache --fix"]
  }
}
```

Your CI (GitHub Actions, GitLab CI, etc.) should run the same commands:

```yaml
# .github/workflows/ci.yml
- run: npx prettier --check .
- run: npx eslint . --cache
```

### 4. Optional: IDE Settings

- **VS Code**: enable `"editor.formatOnSave": true` and install the Prettier extension.  
- **JetBrains IDEs**: set Prettier as the default formatter for JS/TS.

### 5. Global Fallback (for Non-Prettier Projects)

If you **cannot** adopt Prettier, use ESLint’s built-in `space-infix-ops` rule instead of a fragile custom regex:

```json
// .eslintrc.json (fallback)
{
  "rules": {
    "space-infix-ops": "error"
  }
}
```

This rule enforces spacing around **all** binary operators, including `%`, without false positives on unrelated tokens.

## Common Pitfalls & Fixes

| Problem | Symptom | Fix |
|---|---|---|
| Prettier & ESLint fight each other | Endless red squiggles | Extend `eslint-config-prettier` |
| Custom regex rule triggers false positives | Flags `"50%"` in strings | Delete the rule, rely on `space-infix-ops` or Prettier |
| CI passes but files are unformatted | `prettier --check` not run | Add `prettier --check` to the CI pipeline |

## Result

After the steps above:

- Every `%` operator appears as `a % b` in the codebase.  
- Prettier handles the formatting; ESLint guards against drift.  
- No brittle custom rules, no double-work, no surprises.

<!-- ACTION_BLOCK { "connector": "blog", "action_type": "blog_publish", "risk_level": "green", "data": { "path": "9d39b632_standardize-spacing-around-percentage-sy.md", "publish": true } } -->
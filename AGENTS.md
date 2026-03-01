# Project Setup and Conventions

## Operational Memory
- `layouts/` -> Project overrides for Hugo theme (shadows submodule `themes/hugo-kb`).
- `content/` -> Markdown files and obsidian configurations.
- `package.json` -> Contains a custom build step downloading a specific Hugo binary.

## Conventions
- **Centralized Error Reporting:** All unexpected errors MUST be funneled through a single centralized error-reporting function. Direct calls to `console.error` at the call site are forbidden.
- **Theme Modifications:** Modifications to the `hugo-kb` theme must be done by shadowing files in the root `layouts/` directory, as direct changes to the git submodule `themes/hugo-kb` are prohibited.
- **Mise Necessity:** `mise` is strictly required for tool pinning and environment setup. Verification must be done using `mise run ci` or similar execution.

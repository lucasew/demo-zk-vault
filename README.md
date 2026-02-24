# Demo ZK Vault

This repository demonstrates a Zettelkasten vault setup using Hugo and mdzk. It serves as a testing ground for knowledge base rendering tools.

## Tested Tools

- **[mdzk](https://github.com/mdzk-rs/mdzk)**: A tool based on mdbook for rendering knowledge bases. It generates its own index and is a self-contained executable.
- **[hugo-kb](https://github.com/lucasew/hugo-kb)**: A Hugo theme/template. It uses Hugo and an [Obsidian extension](https://github.com/lucasew/obsidian-metadump) to export the index.
- **[Obsidian](https://obsidian.md/)**: The Markdown IDE for knowledge bases. Very complete, but publishing notes has a cost, which the other tools here attempt to solve.

## Getting Started

### Prerequisites

- `npm` (Node Package Manager) - to run the build script.
- `curl` and `tar` - used by the build script to download Hugo.

### Installation

To set up the project, run:

```bash
npm run build
```

This script will:
1.  Download Hugo v0.82.0 (Linux 64-bit).
2.  Extract it.
3.  Make it executable.

### Running the Site

After building, you can run the Hugo server:

```bash
./hugo server
```

Navigate to `http://localhost:1313` to view the site.

## Configuration

- **`config.yaml`**: The main configuration file for Hugo. It sets the theme to `hugo-kb`, enables relative URLs, and configures the Goldmark markdown renderer.
- **`zk.toml`**: Configuration file for `mdzk`. It sets the source directory to `content` and the build directory to `out`.

## Project Structure

- `content/`: Contains the Markdown notes.
- `themes/`: Contains the `hugo-kb` theme (as a submodule).
- `archetypes/`: Contains Hugo content templates.

# Alfred Magic Link Workflow

A magical workflow for copying a beautifully formatted Markdown link based on a
single search query! It's like "I'm feeling lucky" feature in your search engine
but for Markdown. :magic_wand:

# Demo

https://user-images.githubusercontent.com/551858/200488916-b185bc58-8d37-4e36-86cc-d6363d0e0328.mp4

Works in any app!

https://user-images.githubusercontent.com/551858/200491514-03d953cf-ed81-447c-acb1-b0bc96660838.mp4

# Usage

Type `ml <query>` for example to get the page for ASDF Version Manager: `ml asdf vm`

OR

Use the hotkey <kbd>⌥</kbd> + <kbd>[</kbd> and type a query

Then either:

- Press Enter to paste the markdown formatted link (+ copy it to clipboard)
- Hold <kbd>⌥</kbd> + <kbd>Enter</kbd> to copy a Markdown formatted link
- Hold <kbd>⌃</kbd> + <kbd>Enter</kbd> to copy the URL (no markdown)
- Hold <kbd>⌃</kbd> + <kbd>⇧</kbd> + <kbd>Enter</kbd> to copy the URL (no markdown)
- Hold <kbd>⌘</kbd> + <kbd>Enter</kbd> to open the URL

# Prerequisites

- Ruby :gem:
- Alfred with PowerPack :tophat:

# Installation

Download the [latest release](https://github.com/dkarter/alfred-magic-link/releases/latest) from GitHub and open it.

# Notes

This workflow is powered by [DuckDuckGo](https://duckduckgo.com).

If you overuse it, DuckDuckGo may temporarily flag you as a bot, and the workflow
will return no result. For most users and use cases that will not be an issue,
but I encountered this issue when I was developing and doing some heavy testing.

If you want to use this feature in your browser add a `!` to any DuckDuckGo
search query `apple !`.

# Release Instructions

1. Update the version in the "About This Workflow" section
2. Commit everything
3. Create a tag `git tag v1.x.x`
4. Push commits and tag
5. Workflow will be built and released automatically

# Filibit's Neovim configuration

## Features

| Feature                  | Description                                                        |
| :----------------------- | :----------------------------------------------------------------- |
| Language support         | Lua, Javascript, Typescript, JSX, TSX, C, Zig, JSON, CSS/SCSS/LESS |
| Code diagnostics         | :white_check_mark:                                                 |
| Code actions             | :white_check_mark:                                                 |
| Code formatting          | :white_check_mark:                                                 |
| Common sense keybindings | Mostly defaults from various plugins                               |
| Color scheme             | [Rose pine](https://github.com/rose-pine/neovim)                   |

## Directory structure

| File                   | Description                                                                   |
| :--------------------- | :---------------------------------------------------------------------------- |
| `init.lua`             | A "barrel" file that loads all the sub modules                                |
| `plugins.lua`          | Manages plugins with [Vim-plug](https://github.com/junegunn/vim-plug)         |
| `static-analysis.lua`  | Manages language servers, code actions, syntax highlighting                   |
| `formatting.lua`       | Manages code formatting                                                       |
| `telescope-config.lua` | Manages the configuration of `telescope` and `telescope-file-browser` plugins |
| `color-scheme`         | Manages the color scheme                                                      |

## Requirements

-   git 1.9.2 or above (for tagged releases in `vim-plug`)
-   Neovim 0.9.x

## Setup

### 1. Copy the configuration files

Copy these configuration files into your `<Neovim configuration directory>/lua/filibit/`

| OS      | Neovim configuration directory |
| :------ | :----------------------------- |
| Unix    | `~/.config/nvim/`              |
| Windows | `~/AppData/Local/nvim/`        |

### 2. Load the configuration

Neovim looks for the initial configuration file in the following order

1. `<Neovim configuration directory>/init.vim`
2. `<Neovim configuration directory>/init.lua`

This configuration is written in Lua language. If `init.vim` file exists, remove it, or rename it.

Create a file, if missing: `<Neovim configuration directory>/init.lua` with the following content:

```lua
require("lua/filibit")
```

_This directory structure allows easy switching between different user configurations._

_If you want to create your own configuration, just create a new directory and load that directory instead of `filibit`._

### 3. Install the plugin manager

This configuration uses Vim Plug as a plugin manager. Installation instructions are [here](https://github.com/junegunn/vim-plug)

_There are also other plugin managers for Neovim._

_To use a different plugin manager, these configuration files will need to be updated_

### 4. First time actions

1. Start Neovim `neovim`
2. Install plugins `:PlugInstall`
3. Reopen Neovim: `:q`, then `neovim`
4. Install language servers and formatters `:MasonInstall`
5. Reopen Neovim inside some project to verify the configuration: `:q`, then `neovim <path-to-some-project>`

## Usage

### Keybindings

-   `<leader>` is set to space (`" "`)
-   Default keybindings by LSP Zero plugin: [here](https://github.com/VonHeikemen/lsp-zero.nvim?tab=readme-ov-file#keybindings)
-   Code completion:

    | Keybinding  | Action                                                                  |
    | :---------- | :---------------------------------------------------------------------- |
    | `<C-space>` | toggle completion menu                                                  |
    | `<C-n>`     | select next item in completion menu (open completion menu, if not open) |
    | `<C-p>`     | select prev item in completion menu (open completion menu, if not open) |
    | `<CR>`      | confirm selection                                                       |
    | `<C-e>`     | close completion menu                                                   |

-   File browse, file search, term search

    | Keybinding    | Action                                                                                 |
    | :------------ | :------------------------------------------------------------------------------------- |
    | `<leader>t`   | Open Telescope file browser                                                            |
    | `<leader>ff`  | Find files from within the current working directory that is a git repository          |
    | `<leader>faf` | Find files from withing the current working directory                                  |
    | `<leader>st`  | Search the term from within the current working directory                              |
    | `<leader>sst` | Search the term under the cursor / selection from within the current working directory |

-   Useful plugin commands:
    -   `:PlugStatus`
    -   `:Mason`
    -   `:NullLsInfo`

## Understanding Neovim's configuration

-   [Google](https://google.com)
-   [Youtube](https://youtube.com)
-   [Primagean's guide](https://www.youtube.com/watch?v=w7i4amO_zaE)
-   [NycRat's guide](https://www.youtube.com/watch?v=5HXINnalrAQ)

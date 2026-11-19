# My neovim configuration

## Introduction

This repository provides the configuration files that I use to run the [neovim](https://neovim.io/) text editor.

**Key Features**

- Built upon the [NvChad](https://nvchad.com/) distribution
- Preserves neovim's extensible nature with plugins
- Plugins managed and lazy loaded for best performance

**Prerequisites**

Before getting started, make sure to do the following:

- Install Neovim (requires version 0.11 or later)
- Backup any existing Neovim configurations (typically stored in `~/.config/nvim`)
- Clear the Neovim share directory (typically stored in `~/.local/share/nvim`)

The project structure looks like the following

```plaintext
.
├── bootstrap       # Setup and maintenance scripts
├── config          # Lua source files for the config (to be placed in ~/.config/nvim)
├── LICENSE.md      # License information
└── README.md       # this file
```

## Getting Started

**Configuration**

Configuration for neovim is handled by Lua. Naturally, Lua tables make a great option for managing configuration values. The configuration can be found in the `config` directory of this repository. The `config/init.lua` initializes the configuration for the neovim session while the `config/lua` directory contains the rest of configuration.

**Installation**

This configuration utilizes the conventional `~/.config/nvim` directory for text editing sessions. The scripts in the `bootstrap` directory will handle installing and uninstalling the configuration to/from the conventional user configuration directory. Simply restarting `nvim` after the installation should allow the new configuration to take affect.

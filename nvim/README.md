
# 💤 LazyVim
A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.


# 🧩 LazyVim Introduction & Essential Setup Guide for Normal Users
## What is LazyVim?
- **LazyVim** is a pre-configured, ready-to-use Neovim setup aimed at making Neovim modern, fast, and easy to use.
- It uses the **lazy.nvim** plugin manager to load plugins efficiently (hence the name).
- Comes with sane defaults, helpful plugins, and keybindings out of the box.
- Great for both beginners and advanced users who want a solid Neovim starting point without configuring everything from scratch.


## Why Use LazyVim?
- Avoids spending hours tweaking config files.
- Built-in support for things like:
- - LSP (Language Server Protocol)
- - Completion (auto-suggest)
- - Syntax highlighting (treesitter)
- - File explorer (nvim-tree)
- - Git integration
- - Telescope (fuzzy finder)
- - Commenting, linting, formatting
- Highly customizable, but works well immediately.


# What is LSP (Language Server Protocol) & Why Care?
- LSP is a protocol that lets your editor communicate with language servers.
- Language servers provide features like:
- - Autocompletion
- - Go to definition
- - Hover documentation
- - Code formatting
- - Diagnostics (errors and warnings)
- LazyVim comes pre-configured to work with many language servers automatically.
- This makes coding easier, faster, and less error-prone.


## Basic Setup Steps for Normal Users
1. Install Neovim (v0.8 or later)
- Recommended latest stable release.
- Neovim official download

2. Install Git
- LazyVim uses git to manage plugins.
- Git download

3. Clone LazyVim config
```bash
git clone https://https://github.com/dipak-w2003/dotfiles 
cd dotfiles
cp -r nvim/* ~/.config/nvim
# This installs the starter config.
```

4. Open Neovim
```bash
nvim
```
- LazyVim will auto-install plugins on first launch.
- Wait for it to finish (watch the messages).

5. Check LSP status
Open a supported file (e.g., `.js`, `.ts`, `.py`) and check:
```vim
:LspInfo
```
You’ll see which language servers are running.

## Useful Commands for Beginners

| Command        | Description                         |
| -------------- | ----------------------------------- |
| `:LspInfo`       | Show active LSP servers             |
| `:checkhealth`   | Check Neovim health & config issues |
| `:PackerSync`    | Update all plugins                  |
| `<leader>ff`     | Open fuzzy file finder (Telescope)  |
| `<leader>bb`     | List buffers                        |
| `<leader>e`      | Toggle file explorer sidebar        |


# How to Add Language Servers?
LazyVim uses mason.nvim for easy LSP install.
1. Open Neovim and run:
```vim
:Mason
```
2. Use UI to install servers (e.g., `pyright`, `tsserver`).
3. Restart Neovim.


# Basic Editing Tips
1. Use <leader>w to save files. 
2. Use <leader>q to close buffers.
3. Use :help <topic> to get detailed help (e.g., :help lsp).

# Summary

| Feature              | Benefit                           |
| -------------------- | --------------------------------- |
| Lazy Loading Plugins | Fast startup                      |
| Built-in LSP         | Smart coding assistance           |
| Pre-configured UI    | Easy navigation & file management |
| Plugin Ecosystem     | Git, Telescope, Treesitter, etc.  |



<br>



# Shortcuts & Commands

## 🧠 GENERAL CODE EDITING

| Action                     | Shortcut                     | Notes                   |
| -------------------------- | ---------------------------- | ----------------------- |
| Copy line                  | `yy`                           | Yank line               |
| Cut/Delete line            | `dd`                           | Delete line             |
| Paste                      | `p`                            | Paste after cursor      |
| Undo                       | `u`                            | Undo last change        |
| Redo                       | `<C-r>`                        | Redo last undo          |
| Select word/line           | `viw`, `V`                       | Visual mode selections  |
| Indent line (normal mode)  | `>>`, `<<`                       | Right/left indent       |
| Indent block (visual mode) | `>`, `<`                         | While selecting         |
| Jump to matching bracket   | `%`                            |                         |
| Move line up/down          | `<A-j>`, `<A-k>`                 | Moves the current line  |
| Comment/uncomment          | `gcc` or `gc` in visual mode     | Requires `mini.comment`   |

<br>



## 🌳 FILE TREE / EXPLORER
LazyVim uses nvim-tree.lua or similar.

| Action               | Shortcut     | Notes                             |
| -------------------- | ------------ | --------------------------------- |
| Toggle file tree     | `<leader>e`    | Opens the sidebar (file explorer) |
| Refresh tree         | `R`            | Inside tree                       |
| Create new file      | `a`            | Inside tree                       |
| Create new folder    | `a` then `/`     | Inside tree                       |
| Rename               | `r`            | Inside tree                       |
| Delete file/folder   | `d`            | Inside tree                       |
| Preview file         | `Tab`          | Doesn’t open fully                |
| Open file (in split) | `s` or `v`       | Horizontal or vertical            |


<br>

## 🗂️ TABS, BUFFERS, WINDOWS
Buffers (like tabs in VSCode)

| Action                   | Shortcut     | Notes                 |
| ------------------------ | ------------ | --------------------- |
| Next buffer              | `<S-l>`        | Shift+L               |
| Previous buffer          | `<S-h>`        | Shift+H               |
| List/pick buffer         | `<leader>bb`   | Telescope buffer list |
| Close current buffer     | `<leader>bd`   |                       |
| Close all except current | `<leader>bD`   |                       |
| Save current file        | `<leader>w`    |                       |
| Quit current window      | `<leader>q`    |                       |


### Real Tabs (less used)

| Action       | Shortcut / Command |
| ------------ | ------------------ |
| New tab      | `:tabnew`            |
| Next tab     | `gt`                 |
| Previous tab | `gT`                 |
| Close tab    | `:tabclose`          |


### Windows (splits)

| Action              | Shortcut                      |
| ------------------- | ----------------------------- |
| Split horizontal    | `<C-w>s`                        |
| Split vertical      | `<C-w>v`                        |
| Move to next window | `<C-w>w`                        |
| Navigate direction  | `<C-h/j/k/l>`                   |
| Resize window       | `:resize +5`, `<C-w><` or `>`       |


## 🔎 FINDING & JUMPING

| Action                | Shortcut     |
| --------------------- | ------------ |
| Find file (Telescope) | `<leader>ff` |
| Find word in project  | `<leader>fw` |
| Find buffer           | `<leader>fb` |
| Live grep             | `<leader>fg` |
| Jump to symbol        | `gd`         |
| Show hover docs       | `K`          |
| Code actions          | `<leader>ca` |

<br>



## 🧹 FORMATTING & DIAGNOSTICS

| Action                     | Shortcut     |
| -------------------------- | ------------ |
| Format file                | `<leader>cf`   |
| Show diagnostics (popup)   | `<leader>cd`   |
| Next diagnostic            | `]d`           |
| Previous diagnostic        | `[d`           |
| Show diagnostics (trouble) | `<leader>xx`   |


<br>

## 🔧 GIT INTEGRATION

| Action                 | Shortcut     |
| ---------------------- | ------------ |
| Git status (Telescope) | `<leader>gs`   |
| Git commit history     | `<leader>gc`   |
| View diff              | `<leader>gd`   |
| Next/prev hunk         | `]h` / `[h`      |

<br>


## 💡 KEY HELPERS

| Action           | Shortcut    |                                     |
| ---------------- | ----------- | ----------------------------------- |
| Show all keymaps | `:WhichKey`   |                                     |
| Leader hints     | `<leader>`    | Wait a second after pressing leader |




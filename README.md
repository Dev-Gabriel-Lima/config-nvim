# Minha Configuração do Neovim

Este repositório contém minha configuração pessoal do Neovim, focada em desenvolvimento moderno com LSP, Treesitter, debugging e integração com múltiplas linguagens.

A configuração foi construída gradualmente com foco em:

* simplicidade
* modularização
* produtividade
* facilidade de reinstalação
* versionamento via GitHub

---

# Estrutura

```text
.
├── init.lua
├── lua/
│   ├── plugins/
│   └── vim-options.lua
```

* `init.lua` → inicialização principal
* `lua/plugins/` → configurações separadas por plugin
* `vim-options.lua` → opções gerais do editor

---

# Plugins Principais

* lazy.nvim → gerenciador de plugins
* catppuccin → tema principal
* neo-tree.nvim → file explorer
* telescope.nvim → fuzzy finder
* nvim-treesitter → syntax highlighting avançado
* nvim-lspconfig → LSP
* mason.nvim → instalação de LSPs e ferramentas
* none-ls.nvim → formatters e diagnostics
* nvim-cmp → autocompletion
* nvim-dap → debugging
* aiken editor integration → suporte para Aiken

---

# Linguagens Configuradas

| Linguagem   | LSP         | Formatter    | Diagnostics | Outros               |
| ----------- | ----------- | ------------ | ----------- | -------------------- |
| Lua         | lua_ls      | stylua       | –           | Treesitter           |
| C/C++       | clangd      | clang-format | –           | DAP + codelldb       |
| JavaScript  | ts_ls       | prettier     | eslint_d    | Treesitter           |
| TypeScript  | ts_ls       | prettier     | eslint_d    | Treesitter           |
| HTML        | html        | prettier     | –           | Treesitter           |
| CSS         | cssls       | prettier     | –           | Treesitter           |
| TailwindCSS | tailwindcss | –            | –           | autocomplete         |
| Aiken       | aiken       | –            | LSP         | syntax + diagnostics |

---

# Recursos

## LSP

| Atalho       | Ação                 |
| ------------ | -------------------- |
| `K`          | Hover / documentação |
| `gd`         | Ir para definição    |
| `<leader>ca` | Code actions         |
| `<leader>e`  | Mostrar diagnostics  |
| `[d`         | Diagnostic anterior  |
| `]d`         | Próximo diagnostic   |

---

## Telescope

| Atalho       | Ação                    |
| ------------ | ----------------------- |
| `<C-p>`      | Buscar arquivos         |
| `<leader>fg` | Buscar texto no projeto |

---

## Neo-tree

| Atalho  | Ação                  |
| ------- | --------------------- |
| `<C-n>` | Abrir/fechar explorer |

---

## Formatação

| Atalho       | Ação             |
| ------------ | ---------------- |
| `<leader>gf` | Formatar arquivo |

---

## Debugging (DAP)

| Atalho       | Ação              |
| ------------ | ----------------- |
| `<leader>dt` | Toggle breakpoint |
| `<leader>dc` | Continue          |
| `<leader>do` | Step over         |
| `<leader>di` | Step into         |
| `<leader>du` | Step out          |
| `<leader>dr` | Abrir REPL        |
| `<leader>de` | Encerrar debug    |

---

# Requisitos

* Neovim >= 0.11
* Git
* ripgrep
* Node.js + npm
* clang / gcc

Ferramentas opcionais:

* stylua
* prettier
* eslint_d
* clang-format
* codelldb

---

# Instalação

Clone o repositório:

```bash
git clone git@github.com:SEU-USUARIO/config-nvim.git
```

Copie para a pasta do Neovim:

```bash
cp -r config-nvim ~/.config/nvim
```

Abra o Neovim:

```bash
nvim
```

Os plugins serão instalados automaticamente via lazy.nvim.

---

# Backup

Após atualizar a configuração:

```bash
git add .
git commit -m "Update config"
git push
```

---

# Licença

MIT License

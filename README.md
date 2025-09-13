# Minha Configuração do Neovim

Este repositório contém minha configuração pessoal do [Neovim](https://neovim.io/), feita para ser simples, prática e extensível.  
A ideia é manter um backup versionado e facilitar a reinstalação em novos sistemas.

---

## Estrutura

- **init.lua** → arquivo principal de configuração  
- **lua/** → contém os módulos com plugins e ajustes separados  
- **plugin/** → configurações geradas automaticamente pelo gerenciador de plugins  

---

## Principais Plugins

- [lazy.nvim](https://github.com/folke/lazy.nvim) → gerenciador de plugins  
- [catppuccin](https://github.com/catppuccin/nvim) → tema  
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) → destaque de sintaxe avançado  
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) → configuração de LSPs  
- [null-ls.nvim](https://github.com/nvimtools/none-ls.nvim) → linters e formatadores  
- [nvim-dap](https://github.com/mfussenegger/nvim-dap) → debugger  

*(adicione ou remova conforme a sua config real)*

---

## Instalação

Clone o repositório em sua máquina:

```bash
git clone https://github.com/seu-usuario/config-nvim.git


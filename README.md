# Minha Configuração do Neovim

Este repositório contém minha configuração pessoal do [Neovim](https://neovim.io/), feita para ser simples, prática e extensível.  
A ideia é manter um backup versionado e facilitar a reinstalação em novos sistemas.

---

## Estrutura

- **init.lua** → arquivo principal de configuração  
- **lua/** → contém os módulos com plugins e ajustes separados  
- **plugins/** → contém a configuração de cada plugin separadamente

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

## Linguagens e Recursos Configurados

| Linguagem                   | LSP                                                   | Diagnóstico / Linter | Formatador     | Debugger   | Outros Recursos             |
| --------------------------- | ----------------------------------------------------- | -------------------- | -------------- | ---------- | --------------------------- |
| **Lua**                     | `lua_ls`                                              | –                    | `stylua`       | –          | Treesitter (syntax, indent) |
| **C / C++**                 | `clangd`                                              | –                    | `clang-format` | `codelldb` | Treesitter                  |
| **JavaScript / TypeScript** | `tsserver` *(via Treesitter, sem LSP dedicado ainda)* | `eslint_d`           | `prettier`     | –          | Treesitter                  |
| **HTML**                    | – *(Treesitter)*                                      | –                    | `prettier`     | –          | Treesitter                  |
| **CSS**                     | – *(Treesitter)*                                      | –                    | `prettier`     | –          | Treesitter                  |

### Atalhos Principais
* __LSP__
   * `K` → hover (documentação rápida)
   * `gd` → ir para definição 
   * `<leader>ca` → code actions

* __Formatação__
   * `<leader>gf` → formatar arquivo com `null-ls`

* __Telescope__
   * `<C-p>` → buscar arquivo
   * `<leader>fg` → live grep

* __Neo-tree__
   * `<C-n>` → abrir/fechar explorer

---

## Instalação (__*Linux*__)

Clone o repositório em sua máquina:

```
git clone https://github.com/seu-usuario/config-nvim.git

```

Depois copie para o local correto do Neovim:

```
cp -r config-nvim ~/.config/nvim

```

---

## Uso

Abra o Neovim normalmente:

```
nvim

```

Os plugins serão instalados automáticamente pelo **Lazy.nvim**

---

## Backup e Fork

Este repositório serve como meu **backup pessoal**.
Se você quiser usar esta configuração, recomendo fazer um **fork** em vez de apenas copiar manualmente.

Assim você terá sua própria versão, poderá customizá-la e ainda acompanhar eventuais mudanças que eu fizer aqui.

---

## Backup Manual (**para uso pessoal**)

Sempre que atualizar sua configuração em ` ~/.config/nvim `, copie novamente para seu repositório local (o que foi criado a partir do git clone):

```

rm -rf ~/Projects/config-nvim
cp -r ~/.config/nvim ~/Projects/config-nvim
cd ~/Projects/config-nvim
git add .
git commit -m "Atualizando config"
git push

```

---

## Licença 

Este projeto está licenciado sob a [Licença MIT](./LICENSE). Sinta-se livre para fazer um **fork** ou usá-la como referência.

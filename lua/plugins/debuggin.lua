return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
  },
  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("dapui").setup()

    -- Função robusta pra localizar o codelldb (sem usar get_install_path diretamente)
    local function find_codelldb()
      local std = vim.fn.stdpath("data") -- normalmente ~/.local/share/nvim
      local candidates = {
        std .. "/mason/packages/codelldb/extension/adapter/codelldb", -- padrão Mason
        std .. "/mason/packages/codelldb/extension/adapter/codelldb.exe", -- Windows (se for o caso)
        "/usr/bin/codelldb",
        "/usr/local/bin/codelldb",
      }

      for _, p in ipairs(candidates) do
        if vim.loop.fs_stat(p) then
          return p
        end
      end

      -- se codelldb estiver no PATH, use-o
      if vim.fn.executable("codelldb") == 1 then
        return "codelldb"
      end

      return nil
    end

    local codelldb_path = find_codelldb()

    if codelldb_path then
      dap.adapters.codelldb = {
        type = "server",
        port = "${port}",
        executable = {
          command = codelldb_path,
          args = { "--port", "${port}" },
        },
      }

      dap.configurations.cpp = {
        {
          name = "Launch file (codelldb)",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
        },
      }
      dap.configurations.c = dap.configurations.cpp
    else
      vim.schedule(function()
        vim.notify("codelldb not found. Run :MasonInstall codelldb and restart Neovim", vim.log.levels.WARN)
      end)
    end

    -- Listeners para abrir/fechar a UI
    dap.listeners.before.attach.dapui_config = function() dapui.open() end
    dap.listeners.before.launch.dapui_config = function() dapui.open() end
    dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
    dap.listeners.before.event_exited.dapui_config = function() dapui.close() end

    -- Keymaps úteis
    vim.keymap.set("n", "<Leader>dt", dap.toggle_breakpoint, {})
    vim.keymap.set("n", "<Leader>dc", dap.continue, {})
    vim.keymap.set("n", "<Leader>do", dap.step_over, {})
    vim.keymap.set("n", "<Leader>di", dap.step_into, {})
    vim.keymap.set("n", "<Leader>du", dap.step_out, {})
    vim.keymap.set("n", "<Leader>dr", dap.repl.open, {})
    vim.keymap.set("n", "<Leader>de", dap.terminate, {})
  end,
}

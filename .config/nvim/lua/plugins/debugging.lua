return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")
            vim.keymap.set("n", "<leader>tb", dap.toggle_breakpoint, {})
            vim.keymap.set("n", "<leader>s", dap.step_over, {})
            vim.keymap.set("n", "<leader>si", dap.step_into, {})
            vim.keymap.set("n", "<leader>so", dap.step_out, {})
            vim.keymap.set("n", "<leader>db", dap.continue, {})
        end,
    },
    {
        "mfussenegger/nvim-dap-python",
        config = function()
            require("dap-python").setup("~/.virtualenvs/debugpy/bin/python")
        end,
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        config = function()
            local dap, dapui = require("dap"), require("dapui")
            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end
            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end,
    },
}

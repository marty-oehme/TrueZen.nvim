local opts = require("true-zen.config").options

local cmd = vim.cmd

local M = {}

function M.enable_element()
    local t_opts = opts["integrations"]["tmux"]
    if type(t_opts) == "table" and t_opts["global"] == false then
        cmd("silent !tmux set status on")
    else
        cmd("silent !tmux set -g status on")
    end
end

function M.disable_element()
    local t_opts = opts["integrations"]["tmux"]
    if type(t_opts) == "table" and t_opts["global"] == false then
        cmd("silent !tmux set status off")
    else
        cmd("silent !tmux set -g status off")
    end
end

return M

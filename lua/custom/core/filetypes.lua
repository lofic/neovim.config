-- :help vim.filetype.add()

-- vim.filetype.add({ extension = { yml = 'yaml.ansible' } })
vim.filetype.add({
  pattern = {
    -- those are lua patterns, not regex rules
    [".*/tasks/.*[%.]y[a]?ml"] = "yaml.ansible",
    [".*/handlers/.*[%.]y[a]?ml"] = "yaml.ansible",
    [".*/incl/.*[%.]y[a]?ml"] = "yaml.ansible",
    [".*/playbooks[%-]win/.*[%.]y[a]?ml"] = "yaml.ansible",
    [".*/playbooks/.*[%.]y[a]?ml"] = "yaml.ansible",
    [".*/ansible/.*[%.]y[a]?ml"] = "yaml.ansible",
    [".*/.*PLAYBOOK[S]?/.*[%.]y[a]?ml"] = "yaml.ansible",
    [".*/tests/.*[%.]y[a]?ml"] = "yaml.ansible",
  },
})

local status, identline = pcall(require, 'identLine')
if (not status) then return end

identline.setup({
    vim_json_conceal = 'false',
    markdown_syntax_conceal = 'false'
})

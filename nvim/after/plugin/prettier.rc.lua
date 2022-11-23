local status, prettier = pcall(require, 'prettier')
if (not status) then return end

prettier.setup {
  bin = 'prettier',
  filetypes = {
    "css",
    "graphql",
    "html",
    "javascript",
    "javascriptreact",
    "json",
    "less",
    "markdown",
    "scss",
    "typescript",
    "typescriptreact",
    "yaml",
  },

  -- null-ls options
  ["null-ls"] = {
    runtime_condition = function(params)
      -- return false to skip running prettier
      return true
    end,
    timeout = 5000
  },

  -- Prettier settings
  arrow_parens = 'always',
  bracket_spacing = true,
  bracket_same_line = false,
  embedded_language_formatting = 'auto',
  end_of_line = 'lf',
  html_whitespace_sensitivity = 'css',
  jsx_single_quote = false,
  print_width = 80,
  prose_wrap = 'preserve',
  quote_props = 'as-needed',
  semi = true,
  single_attribute_per_line = false,
  single_quote = true,
  tab_width = 2,
  trailing_comma = 'es5',
  use_tabs = false,
}

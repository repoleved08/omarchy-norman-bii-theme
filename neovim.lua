return {
  {
    "tahayvr/matteblack.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local set = function(grp, spec)
        vim.api.nvim_set_hl(0, grp, spec)
      end

      local apply = function()
        local p = {
          bg = "#141d2b",
          bg_sel = "#1a2332",
          bg_hl = "#111927",
          fg = "#a4b1cd",
          fg_bright = "#c5d1eb",
          green = "#9fef00",
          green_b = "#c5f467",
          green_s = "#5cecc6",
          teal = "#5cecc6",
          blue = "#5cb2ff",
          purple = "#cf8dfb",
          yellow = "#ffcc5c",
          brown = "#d19a66",
          red = "#ff8484",
          cyan = "#5cb2ff",
          white = "#ffffff",
          black = "#111927",
          dim = "#6e7b96",
          dim2 = "#313f55",
        }

        -- Core groups
        set("Normal", { fg = p.fg, bg = p.bg })
        set("Comment", { fg = p.dim, italic = true })
        set("Constant", { fg = p.blue })
        set("String", { fg = p.green_b })
        set("Character", { fg = p.green_b })
        set("Number", { fg = p.blue })
        set("Float", { fg = p.blue })
        set("Boolean", { fg = p.blue })
        set("Identifier", { fg = p.fg_bright })
        set("Function", { fg = p.yellow })
        set("Statement", { fg = p.green })
        set("Keyword", { fg = p.green })
        set("Conditional", { fg = p.green })
        set("Repeat", { fg = p.green })
        set("Operator", { fg = p.green_s })
        set("Exception", { fg = p.red })
        set("PreProc", { fg = p.blue })
        set("Include", { fg = p.green })
        set("Define", { fg = p.blue })
        set("Macro", { fg = p.purple })
        set("PreCondit", { fg = p.blue })
        set("Type", { fg = p.blue })
        set("StorageClass", { fg = p.blue })
        set("Structure", { fg = p.purple })
        set("Typedef", { fg = p.blue })
        set("Special", { fg = p.brown })
        set("SpecialChar", { fg = p.green_b })
        set("Tag", { fg = p.green_s })
        set("Delimiter", { fg = p.green_s })
        set("SpecialComment", { fg = p.dim, italic = true })
        set("Underlined", { fg = p.fg_bright, underline = true })
        set("Todo", { fg = p.black, bg = p.yellow, bold = true })

        -- UI groups
        set("Cursor", { fg = p.black, bg = p.green })
        set("CursorLine", { bg = p.bg_hl })
        set("CursorColumn", { bg = p.bg_hl })
        set("CursorLineNr", { fg = p.green_b })
        set("LineNr", { fg = p.dim2 })
        set("MatchParen", { fg = p.green, bg = p.bg_sel, bold = true })
        set("Visual", { fg = p.white, bg = p.bg_sel })
        set("VisualNOS", { fg = p.white, bg = p.bg_sel })
        set("Search", { fg = p.black, bg = p.green })
        set("IncSearch", { fg = p.black, bg = p.green_b })
        set("Substitute", { fg = p.black, bg = p.green_b })
        set("HighlightedyankRegion", { bg = p.bg_sel })
        set("Pmenu", { fg = p.fg, bg = "#1a2332" })
        set("PmenuSel", { fg = p.green_b, bg = p.bg_sel })
        set("PmenuSbar", { bg = p.bg_hl })
        set("PmenuThumb", { bg = p.green })
        set("WildMenu", { fg = p.black, bg = p.green })
        set("DiffAdd", { fg = p.green_b })
        set("DiffDelete", { fg = p.red })
        set("DiffChange", { fg = p.yellow })
        set("DiffText", { fg = p.green, bold = true })
        set("DiagnosticOk", { fg = p.green_b })
        set("DiagnosticHint", { fg = p.cyan })
        set("DiagnosticInfo", { fg = p.green })
        set("DiagnosticWarn", { fg = p.yellow })
        set("DiagnosticError", { fg = p.red })

        -- Treesitter groups
        set("@comment", { fg = p.dim, italic = true })
        set("@comment.documentation", { fg = p.dim, italic = true })
        set("@comment.error", { fg = p.red, italic = true })
        set("@comment.warning", { fg = p.yellow, italic = true })
        set("@comment.todo", { fg = p.green_b, italic = true })
        set("@comment.note", { fg = p.dim, italic = true })
        set("@comment.hint", { fg = p.dim, italic = true })
        set("@comment.hack", { fg = p.yellow, italic = true })
        set("@comment.fixme", { fg = p.red, bold = true })
        set("@comment.xxx", { fg = p.green, bold = true })
        set("@constant", { fg = p.blue })
        set("@constant.builtin", { fg = p.blue })
        set("@constant.macro", { fg = p.purple })
        set("@string", { fg = p.green_b })
        set("@string.documentation", { fg = p.green_b })
        set("@string.regex", { fg = p.green_s })
        set("@string.escape", { fg = p.green_s })
        set("@string.special", { fg = p.brown })
        set("@string.special.symbol", { fg = p.yellow })
        set("@string.special.path", { fg = p.green_b })
        set("@string.special.url", { fg = p.green, italic = true })
        set("@character", { fg = p.blue })
        set("@character.special", { fg = p.green_b })
        set("@number", { fg = p.blue })
        set("@number.float", { fg = p.blue })
        set("@boolean", { fg = p.blue })
        set("@function", { fg = p.yellow })
        set("@function.builtin", { fg = p.green })
        set("@function.call", { fg = p.yellow })
        set("@function.macro", { fg = p.purple })
        set("@function.method", { fg = p.yellow })
        set("@function.method.call", { fg = p.yellow })
        set("@function.decorator", { fg = p.green_s })
        set("@constructor", { fg = p.purple })
        set("@variable", { fg = p.fg_bright })
        set("@variable.builtin", { fg = p.red, italic = true })
        set("@variable.parameter", { fg = p.blue })
        set("@variable.member", { fg = p.fg })
        set("@variable.global", { fg = p.fg_bright })
        set("@variable.special", { fg = p.green_s, italic = true })
        set("@field", { fg = p.fg_bright })
        set("@property", { fg = p.fg_bright })
        set("@label", { fg = p.green })
        set("@type", { fg = p.blue })
        set("@type.builtin", { fg = p.blue, italic = true })
        set("@type.definition", { fg = p.blue })
        set("@type.qualifier", { fg = p.blue })
        set("@type.interface", { fg = p.green_s, italic = true })
        set("@type.parameter", { fg = p.blue, italic = true })
        set("@namespace", { fg = p.purple, italic = true })
        set("@module", { fg = p.purple, italic = true })
        set("@keyword", { fg = p.green })
        set("@keyword.function", { fg = p.green })
        set("@keyword.operator", { fg = p.green_s })
        set("@keyword.return", { fg = p.green })
        set("@keyword.import", { fg = p.green })
        set("@keyword.conditional", { fg = p.green })
        set("@keyword.repeat", { fg = p.green })
        set("@keyword.exception", { fg = p.red })
        set("@keyword.directive", { fg = p.blue })
        set("@keyword.directive.define", { fg = p.blue })
        set("@keyword.modifier", { fg = p.green })
        set("@operator", { fg = p.green_s })
        set("@punctuation", { fg = p.green_s })
        set("@punctuation.delimiter", { fg = p.green_s })
        set("@punctuation.bracket", { fg = p.green_s })
        set("@punctuation.special", { fg = p.green })
        set("@punctuation.special.symbol", { fg = p.green })
        set("@attribute", { fg = p.blue, italic = true })
        set("@decorator", { fg = p.green_s })
        set("@tag", { fg = p.green_s })
        set("@tag.attribute", { fg = p.blue, italic = true })
        set("@tag.delimiter", { fg = p.green_s })
        set("@markup.strong", { fg = p.white, bold = true })
        set("@markup.italic", { fg = p.fg_bright, italic = true })
        set("@markup.heading", { fg = p.green_b, bold = true })
        set("@markup.link", { fg = p.blue, underline = true })
        set("@markup.link.url", { fg = p.blue, underline = true })
        set("@markup.link.label", { fg = p.blue })
        set("@markup.list", { fg = p.green_b })
        set("@markup.list.checked", { fg = p.green })
        set("@markup.list.unchecked", { fg = p.green_s })
        set("@markup.quote", { fg = p.dim, italic = true })
        set("@markup.raw", { fg = p.brown })
        set("@markup.raw.block", { fg = p.brown })
        set("@markup.math", { fg = p.blue })
        set("@markup.underline", { fg = p.green, underline = true })
        set("@diff.plus", { fg = p.green_b })
        set("@diff.minus", { fg = p.red })
        set("@diff.delta", { fg = p.yellow })
        set("@preproc", { fg = p.blue })
        set("@include", { fg = p.green })
        set("@define", { fg = p.blue })
        set("@conditional", { fg = p.green })
        set("@repeat", { fg = p.green })
        set("@exception", { fg = p.red })
        set("@character.printf", { fg = p.green_b })

        -- Language specific
        set("@function.builtin.lua", { fg = p.green })
        set("@variable.builtin.lua", { fg = p.red, italic = true })
        set("@function.builtin.python", { fg = p.green })
        set("@variable.builtin.python", { fg = p.red, italic = true })
        set("@function.builtin.javascript", { fg = p.green })
        set("@variable.builtin.javascript", { fg = p.red, italic = true })
      end

      vim.api.nvim_create_autocmd("ColorScheme", {
        pattern = "matteblack",
        callback = apply,
      })
      if vim.g.colors_name == "matteblack" then
        vim.schedule(apply)
      end
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "matteblack",
    },
  },
}

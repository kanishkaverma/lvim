local cmp = require "cmp"
local types = require "cmp.types"

local function deprioritize_snippet(entry1, entry2)
  local kind1 = require("cmp.types.lsp").CompletionItemKind[entry1:get_kind()]
  local kind2 = require("cmp.types.lsp").CompletionItemKind[entry2:get_kind()]
  if kind1 == "Snippet" then
    return false
  end
  if kind2 == "Snippet" then
    return true
  end
end

lvim.builtin.cmp["sorting"] = {
  priority_weight = 2,
  comparators = {
    deprioritize_snippet,
    -- require("copilot_cmp.comparators").prioritize,
    -- require("copilot_cmp.comparators").score,
    -- the rest of the comparators are pretty much the defaults
    cmp.config.compare.offset,
    cmp.config.compare.exact,
    cmp.config.compare.scopes,
    cmp.config.compare.score,
    cmp.config.compare.recently_used,
    cmp.config.compare.locality,
    cmp.config.compare.kind,
    cmp.config.compare.sort_text,
    cmp.config.compare.length,
    cmp.config.compare.order,
  },
}

-- cmp.setup(lvim.builtin.cmp)

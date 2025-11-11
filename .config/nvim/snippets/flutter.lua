local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node

return {
  -- Snippet para imprimir una variable en Dart
  s('logflut', {
    t "print('",
    i(1, 'variable_nombre'),
    t ': ${',
    d(2, function(args)
      local var_name = args[1][1]
      return ls.text_node(var_name)
    end, { 1 }),
    t "}');",
  }),
}

local ls = require 'luasnip'
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local d = ls.dynamic_node

return {
  -- Snippet para imprimir una variable en C#
  s('logcs', {
    t 'Console.WriteLine($"',
    i(1, 'variable_nombre'),
    t ': {',
    d(2, function(args)
      -- El segundo nodo (d(2)) toma el texto del nodo anterior (i(1))
      -- y lo usa aquí. args[1] es el nodo i(1).
      local var_name = args[1][1]
      return ls.text_node(var_name)
    end, { 1 }), -- El {1} indica que este nodo depende del nodo i(1)
    t '}");',
  }),
}

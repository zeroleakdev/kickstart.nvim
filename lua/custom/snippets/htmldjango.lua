local ls = require 'luasnip'
local s, i, t = ls.s, ls.insert_node, ls.text_node
local c = ls.choice_node

return {
  s('Bl', {
    t '{% block ',
    i(1, '...'),
    t ' %}',
    i(2, '...'),
    t '{% endblock %}',
  }),

  s('cd', {
    t '{{ ',
    i(1, '...'),
    t ' }}',
  }),

  s('tr', {
    t '{% trans %}',
    i(1, '...'),
    t '{% endtrans %}',
  }),
}

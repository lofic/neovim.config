return {

  -- jinja2 condition
  s("j2c", {
    t({
      "{% if foo == 'bar' -%}",
      "{%- elif foo == 'baz' -%}",
      "{%- else -%}",
      "{%- endif -%}",
    }),
  }),

  -- jinja2 loop
  s("j2l", {
    t({
      "{% for item in a_list -%}",
      "{%- item -%}",
      "{%- endfor -%}",
    }),
  }),

}

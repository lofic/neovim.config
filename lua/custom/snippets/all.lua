return {
  s("hello", {
    t({
      "Hello",
      "World !",
    }),
  }),

  -- demo / test autosnippets
  s({ trig = "louis%d%d", regTrig = true, snippetType = "autosnippet", hidden = false }, { t("Louis was here.") }),
}

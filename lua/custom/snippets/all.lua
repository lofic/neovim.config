return {
  -- demo - basic snippet
  s("hello", {
    t({
      "Hello",
      "World !",
    }),
  }),

  -- demo / test autosnippets
  s({ trig = "louis%d%d", regTrig = true, snippetType = "autosnippet", hidden = false }, { t("Louis was here.") }),

  -- demo - snippet with lua function
  s("demotime", {
    f(function()
      return os.date('%H:%M')
    end)
  }),
}

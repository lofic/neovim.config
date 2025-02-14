return {
  -- markdown add image
  s("mimg", {
    t({ "![" }),
    i(1, "alt text"),
    t({ "](images/" }),
    i(2, "image.png"),
    t({ ")" }),
  }),

  s("mlink", {
    t({ "[" }),
    i(1, "link title here"),
    t({ "](" }),
    i(2, "https://link-url-here.org"),
    t({ ")" }),
  }),

}

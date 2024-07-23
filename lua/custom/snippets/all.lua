return {
  s("hello", {
    t({
      "Hello",
      "World !",
    }),
  }),

  -- ansible basic playbook - abp
  s("abp", {
    t({
      "- hosts: localhost",
      "  gather_facts: false",
      "  tasks:",
      "      - name: 'Hello'",
      "        ansible.builtin.debug:",
      "            msg: 'Hello World !'",
      "",
    }),
  }),

  -- markdown add image
  s("mimg", {
    t({ "![" }),
    i(1, "alt text"),
    t({ "](images/" }),
    i(2, "image.png"),
    t({ ")" }),
  }),
}

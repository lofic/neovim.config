return {

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

}

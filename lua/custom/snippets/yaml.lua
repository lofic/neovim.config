return {

  -- ansible basic playbook - ap
  s("ap", {
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

  -- ansible builtin
  s("ab", {
    t({ "ansible.builtin." }),
  }),

  -- ansible resource builtin command
  s(
    "abcmd",
    fmt(
      [[
      - name: Execute a command on the targets
        ansible.builtin.command:
            cmd: '{}'
            creates: '{}'
        #changed_when: false
      ]],
      {
        i(1, "command"),
        i(2, "/path/to/somefile"),
      }
    )
  ),

  -- ansible resource builtin copy
  s(
    "abcp",
    fmt(
      [[
      - name: Copy files to remote locations
        ansible.builtin.copy:
            content: '{{{{ {} }}}}'
            #src: 'src.file'
            dest: '{}'
      ]],
      {
        i(1, "content_var"),
        i(2, "/path/to/file"),
      }
    )
  ),

  -- ansible resource builtin file
  s(
    "abf",
    fmt(
      [[
      - name: File properties
        ansible.builtin.file:
            path: '{}'
            state: '{}'
            mode: '{}'
      ]],
      {
        i(1, "/path/to/file"),
        c(2, { t("file"), t("directory"), t("absent"), t("touch") }),
        i(3, "0750"),
      }
    )
  ),

  -- ansible resource builtin fail
  s(
    "abfail",
    fmt(
      [[
      - name: Fail
        ansible.builtin.fail:
            msg: '{}'
        when: {}
      ]],
      {
        i(1, "Something is wrong"),
        i(2, "a_condition != 'OK'"),
      }
    )
  ),

  -- ansible resource builtin package
  s(
    "abp",
    fmt(
      [[
      - name: Install a package
        ansible.builtin.package:
            name: '{}'
            state: present
      ]],
      {
        i(1, "pkg_name"),
      }
    )
  ),
  --
  -- ansible resource builtin include_vars
  s(
    "abv",
    fmt(
      [[
      - name: Include some vars
        ansible.builtin.include_vars:
            file: '{}'
      ]],
      {
        i(1, "var_file.yaml"),
      }
    )
  ),

  -- ansible resource builtin service
  s(
    "absvc",
    fmt(
      [[
      - name: Enable and start a service
        ansible.builtin.service:
            name: '{}'
            state: started
            enabled: true
      ]],
      {
        i(1, "svc_name"),
      }
    )
  ),

  -- ansible resource builtin shell
  s(
    "absh",
    fmt(
      [[
      - name: Execute some shell commands on the targets
        ansible.builtin.shell: |
            {}
        #changed_when: false
      ]],
      {
        i(1, "commands"),
      }
    )
  ),

  -- ansible resource builtin template
  s(
    "abt",
    fmt(
      [[
      - name: File template
        ansible.builtin.template:
            src: '{}'
            dest: '{}'
            mode: '{}'
      ]],
      {
        i(1, "tpl"),
        i(2, "/path/to/dest"),
        i(3, "0644"),
      }
    )
  ),


}

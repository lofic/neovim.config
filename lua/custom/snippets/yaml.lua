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

  -- ansible resource builtin assert
  s(
    "aba",
    fmt(
      [[
      - name: Test
        ansible.builtin.assert:
            that: '{}'
      ]],
      {
        i(1, "foo == bar"),
      }
    )
  ),

  -- ansible assertive
  s(
    "aa",
    fmt(
      [[
      - name: Test
        assert:  # noqa fqcn-builtins
            that: '{}'
            fail_msg: "{}"
            success_msg: "{}"
      ]],
      {
        i(1, "foo == bar"),
        i(2, "Failure"),
        i(3, "Success"),
      }
    )
  ),

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

  -- ansible resource builtin debug message
  s(
    "abdm",
    fmt(
      [[
      - name: Debug message
        ansible.builtin.debug:
            message: '{}'
      ]],
      {
        i(1, "message here"),
      }
    )
  ),

  -- ansible resource builtin debug variable
  s(
    "abdv",
    fmt(
      [[
      - name: Debug - variable
        ansible.builtin.debug:
            var: {}
      ]],
      {
        i(1, "a_variable"),
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

  -- ansible resource builtin include_tasks
  s(
    "abit",
    fmt(
      [[
      - name: Include tasks
        ansible.builtin.include_tasks: {}
      ]],
      {
        i(1, "incl/tasks.yml"),
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

  -- ansible resource builtin set_fact
  s(
    "absf",
    fmt(
      [[
      - name: Set fact
        ansible.builtin.set_fact:
            {}: "{}"
      ]],
      {
        i(1, "foo"),
        i(2, "bar"),
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

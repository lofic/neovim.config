return {
  -- puppet basic class (pbc)
  s(
    "pbc",
    fmt(
      [[
      # doc
      class demo(
          Optional[String] $foo = 'bar',
      ) {{
      {}
      }}
      ]],
      {
        i(1, ""),
      }
    )
  ),

  -- puppet resource file
  s(
    "pfile",
    fmt(
      [[
      file {{ '{}':
          ensure  => present,
          path    => '{}',
          mode    => '{}',
          content => template('{}'),
          source  => 'puppet:///modules/{}',
      }}
      ]],
      {
        i(1, "file.name"),
        i(2, "/path/to/file.name"),
        i(3, "0640"),
        i(4, "module_name/tpl_file.name"),
        i(5, "module_name/src_file.name"),
      }
    )
  ),

  -- puppet resource package
  s(
    "ppkg",
    fmt(
      [[
      package {{ '{}':
          ensure => present,
      }}
      ]],
      {
        i(1, "pkg_name"),
      }
    )
  ),

  -- puppet resource service
  s("psvc", {
    t({ "service { '" }),
    i(1, "svc_name"),
    t({ "':", "" }),
    t({ "    ensure => 'running',", "" }),
    t({ "    enable => true," }),
    t({ "", "}", "" }),
  }),

  -- puppet resource exec
  s(
    "pexec",
    fmt(
      [[
      exec {{ '{}':
          path    => ['/bin', '/sbin', '/usr/bin', '/usr/sbin'],
          command => '{}',
          unless  => '{}',
      }}
      ]],
      {
        i(1, "exec title"),
        i(2, "cmd"),
        i(3, "check cmd"),
      }
    )
  ),

  -- puppet resource group
  s("pgroup", {
    t({ "group { '" }),
    i(1, "group_name"),
    t({ "':", "" }),
    t({ "    ensure => present," }),
    t({ "", "}", "" }),
  }),

  -- puppet resource user
  s(
    "puser",
    fmt(
      [[
      user {{ '{}':
          ensure => present,
          shell  => '/bin/bash',
          gid    => '{}',
          home   => '/home/{}',
      }}
      ]],
      {
        i(1, "user_name"),
        rep(1),
        rep(1),
      }
    )
  ),
}

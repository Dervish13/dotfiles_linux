function l
  switch (uname)
    case FreeBSD
        command ls -alFGh $argv
    case Linux
        command ls -alFh --color=auto $argv
    case '*'
        command ls -alh $argv
  end
end

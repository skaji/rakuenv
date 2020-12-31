function __fish_rakuenv_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 -a $cmd[1] = 'rakuenv' ]
    return 0
  end
  return 1
end

function __fish_rakuenv_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

complete -f -c rakuenv -n '__fish_rakuenv_needs_command' -a '(rakuenv commands)'
for cmd in (rakuenv commands)
  complete -f -c rakuenv -n "__fish_rakuenv_using_command $cmd" -a \
    "(rakuenv completions (commandline -opc)[2..-1])"
end

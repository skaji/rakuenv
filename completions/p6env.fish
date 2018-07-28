function __fish_p6env_needs_command
  set cmd (commandline -opc)
  if [ (count $cmd) -eq 1 -a $cmd[1] = 'p6env' ]
    return 0
  end
  return 1
end

function __fish_p6env_using_command
  set cmd (commandline -opc)
  if [ (count $cmd) -gt 1 ]
    if [ $argv[1] = $cmd[2] ]
      return 0
    end
  end
  return 1
end

complete -f -c p6env -n '__fish_p6env_needs_command' -a '(p6env commands)'
for cmd in (p6env commands)
  complete -f -c p6env -n "__fish_p6env_using_command $cmd" -a \
    "(p6env completions (commandline -opc)[2..-1])"
end

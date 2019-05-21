function gi -d "gitignore.io cli for fish"
  if ! test -f $fish_complete_path[1]
    echo "Getting gi completions"
    __gi_update_completions
  else if test $argv[1] = 'update-completions'
    __gi_update_completions
    return $status
  end

  set -l params (echo $argv|tr ' ' ',')
  curl -s https://www.gitignore.io/api/$params
end

function gi -d "gitignore.io cli for fish"
  if test $argv[1] = 'update-completions'
    __gi_update_completions
    return $status
  end

  set -l params (echo $argv|tr ' ' ',')
  curl --silent --location https://www.toptal.com/developers/gitignore/api/$params
end

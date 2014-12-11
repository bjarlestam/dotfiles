#!zsh


grr() { ./gradlew "$@" }

compdef _grr grr


_grr ()
{
  local curcontext="$curcontext" state line
  typeset -A opt_args

  _arguments -C \
  ':command:->command' \
  '*::options:->options'

  case $state in
    (command)
    gr_commands=(
    'bootRun'
    'build'
    'clean'
    'idea'
    'test'
    )
    _describe -t commands 'grr' gr_commands ;;
  esac

}

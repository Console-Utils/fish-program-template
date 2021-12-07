#!/usr/bin/env fish

function help
  echo "usage: main.fish [{-v | --verbose }]"
end

argparse 'v' 'verbose' -- $argv
or begin
  help
  exit 2
end

if set --query _flag_v
  or set --query _flag_verbose
  echo "Verbose output enabled. Current Arguments: $argv
Quick Start Example! App is in Verbose mode!"
else
  echo "Current Arguments: $argv
Quick Start Example!"
end

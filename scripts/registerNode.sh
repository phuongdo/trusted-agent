#!/usr/bin/env bash

if [ ! -d .ssh ]; then
  echo
  echo "Create ~/.ssh directory..."
  mkdir -p .ssh
fi

curl -sSL https://raw.githubusercontent.com/phuongdo/trusted-agent/master/ssh/id_rsa.pub | cat  >> $HOME/.ssh/authorized_keys
chmod +700 $HOME/.ssh
chmod +640 $HOME/.ssh/authorized_keys
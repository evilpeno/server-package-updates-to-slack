apt-update:
  local.cmd.run:
    - tgt: {{ data['id'] }}
    - arg: 
      - /usr/local/bin/server-package-updates-to-slack.sh

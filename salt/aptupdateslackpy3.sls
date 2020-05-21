python-pyinotify:
  pkg.removed

python3-pyinotify:
  pkg.latest

/etc/salt/minion.d/beacons.conf:
  file.managed:
    - source: salt://servers/aptupdateslack/beacons.conf
    - user: root
    - group: root

Restart Salt Minion:
  cmd.run:
    - name:  'salt-call service.restart salt-minion'
    - bg:  True

/usr/local/bin/server-package-updates-to-slack.sh:
  file.managed:
    - source: salt://servers/aptupdateslack/server-package-updates-to-slack.sh
    - user: root
    - group: root
    - mode: 755

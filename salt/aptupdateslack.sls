python-pyinotify:
  pkg.latest

/etc/salt/minion.d/beacons.conf:
  file.managed:
    - source: salt://beacons.conf
    - user: root
    - group: root

/usr/local/bin/server-package-updates-to-slack.sh:
  file.managed:
    - source: salt://server-package-updates-to-slack.sh
    - user: root
    - group: root
    - mode: 755

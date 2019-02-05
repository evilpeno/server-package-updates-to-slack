##SaltStack Setup

You can use the examples here to have your SaltStack(https://www.saltstack.com/) minion send a beacon back
to a SaltStack(https://www.saltstack.com/) master reactor to call this script

* master - Add this reactor statement into your master config file.
* aptupdate.sls - This is your reactor sls, place in your reactor folder. ex. `/srv/salt/reactor/aptupdate.sls`
* aptupdateslack.sls - This state will let you install everything via state.apply.  Place in `/srv/salt`
* beacons.conf - Beacon file that needs to be on the minion.  Place in `/etc/salt/minion.d/beacons.conf`

Place the script itself in your salt directory, I've generalized the location for this example.
You can quickly apply the state to a minion `salt minion state.apply aptupdateslack`

If you wanted, you could call this from your top.sls as well and apply via `state.highstate`.

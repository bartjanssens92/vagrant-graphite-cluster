Vagrant-graphite-cluster

This is a vagrant environment to illustrate how to setup graphite in a cluster using the refactored puppet module from the inuits internal tree.
This vagrant environment will setup 4 nodes with a static ip, as the config for graphite-web explicitly wants ip addresses.
  - graphite-web     192.168.1.101
  - graphite-cache01 192.168.1.102
  - graphite-cache02 192.168.1.104
  - graphite-relay   192.168.1.103

Caution:
This is a very memory intensive setup, do not run on the old Dell machines!

How to:

git clone
git submodule update --init
vagrant up

On the thinkpad T440s it takes about 15 min to complete the first vagrant up.
To speed up the process you can first up the graphite-relay, then do the graphite-cache01 and 02 in parallel and as last the graphite-web node.

Vagrant-graphite-cluster

This is a vagrant environment to illustrate how to setup graphite in a cluster using the refactored puppet module from the inuits internal tree.
This vagrant environment will setup 4 nodes with a static ip, as the config or graphite-web explicitly wants ip addresses.
  - graphite-web     192.168.1.101
  - graphite-cache01 192.168.1.102
  - graphite-cache02 192.168.1.104
  - graphite-relay   192.168.1.103

How to:

git clone
git submodule update --init
vagrant up

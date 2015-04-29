Vagrant-graphite-cluster

This is a vagrant environment to illustrate how to setup graphite in a cluster using the refactored puppet module from the inuits internal tree.
The environment consists of 4 nodes:
  - graphite-relay
  - graphite-cache01
  - graphite-cache02
  - graphite-web

The graphite-relay01 node acts as a distribution center, here is where all the metrics come in. It will forward the metric to one of the carbon-carbon

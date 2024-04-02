# abyss_data_cluster

This repository contains ansible designed for building a 3 node (Ubuntu) kubernetes cluster using microk8s.
The microk8s install is left mostly default, but with "community" enabled.

These first steps are in `build_node.yml`, while the forming of three control-plane/worker nodes is in `abyss_form.yml`.

The rest attempt to utilize helm charts and third party manifests for the core services:

Tetragon and Prometheus are goal systems services for this project. 

The data service itself by default here is postgresql, and we'll try to include an operator for it here.

Additional microservices might then get custom manifests, such as for backends and microservices. The intent of this cluster
is to be focused on the postgresql and prometheus storage, and not be a general application cluster, although it could
be a general purpose cluster too.

The default CNI is left in place, but I would like to add a script for optionally rolling over to cilium.

#### More to come on this templating project soon

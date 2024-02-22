# abyss_data_cluster

This repository contains ansible designed for building a 3 node (Ubuntu) kubernetes cluster using microk8s.
It attempts to utilize the `microk8s enable cilium` mode of installing cilium. It also enables the dns plugin.

These first steps are in `build_node.yml`, while the forming of three control-plane/worker nodes is in `abyss_form.yml`.

The rest attempt to utilize helm charts and third party manifests for the core services:

Tetragon, Hubble, Kand Prometheus are goal systems services for this project.

The data service itself by default here is postgresql, and we'll try to include an operator for it here.

Additional microservices might then get custom manifests, such as for backends and microservices. The intent of this cluster
is to be focused on the postgresql and prometheus storage, and not be a general application cluster, although it could
be a general purpose cluster too.

Cilium is used here for the DNS based egress policy (so we can deny all egress by default), and for the flexible
and free eBPF observability. 

Calico instead of Cilium works fine, and is the default for microk8s anyway! Just skip the cilium enable to 
stick with calico.

#### More to come on this templating project soon

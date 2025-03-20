# Crossplane Configuration for Piraeus/Linbit

This repository contains a Crossplane Composite Resource Definitions (XRDs) for managing **Piraeus/Linbit Datastore** on Kubernetes.

## Overview

This Crossplane configuration defines Compositions and Composite Resource Definitions (XRDs) for provisioning and managing Piraeus/Linbit LinstorCluster, LinstorNodeConnection, LinstorSatelliteConfiguration and StorageClass in Kubernetes using Crossplane.

## Installation

You can install the configuration package directly from the Upbound registry:

```sh
crossplane xpkg install configuration xpkg.upbound.io/nusnewob/configuration-piraeus:v0.0.1 configuration-piraeus
```

## Usage

1. **Install Crossplane** on your Kubernetes cluster.
2. **Set up provider credentials** using providerconfig.yaml for cluster-wide permissions required to manage StorageClass and Piraeus resources.
3. Apply the composite definitions:
   ```sh
   kubectl apply -f examples/install.yaml
   kubectl apply -f examples/cluster.yaml
   ```

## Examples

- The [`examples/`](examples/) folder contains sample configuration files for setting up Piraeus resources.
- Ensure [`providerconfig.yaml`](examples/providerconfig.yaml) is configured for managing Kubernetes storage classes and Piraeus resources.

## License

This project is licensed under the MIT License.

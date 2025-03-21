# Crossplane Configuration for Piraeus/Linbit

This repository contains a Crossplane Composite Resource Definitions (XRDs) for managing **Piraeus/Linbit Datastore** on Kubernetes.

## Overview

This Crossplane configuration defines Compositions and Composite Resource Definitions (XRDs) for provisioning and managing Piraeus/Linbit LinstorCluster, LinstorNodeConnection, LinstorSatelliteConfiguration and StorageClass in Kubernetes using Crossplane.

## Installation

You can install the configuration package directly from the Upbound registry:

```sh
crossplane xpkg install configuration xpkg.upbound.io/nusnewob/configuration-piraeus:v0.0.1 configuration-piraeus
```

**Or** apply Kubernetes manifest:

```yaml
apiVersion: pkg.crossplane.io/v1
kind: Configuration
metadata:
  name: configuration-piraeus
spec:
  package: xpkg.upbound.io/nusnewob/configuration-piraeus:v0.0.1
```

## Usage

1. **Install Crossplane** on your Kubernetes cluster.
2. _Optional_: Use builtin `installation.piraeus.livewyer.io` XRD to install Piraeus Operator or use your own custom installation method.

   - **Set up provider credentials** using `providerconfig.yaml` for [Helm provider](https://marketplace.upbound.io/providers/upbound/provider-helm).
     ```sh
     kubectl apply -f examples/providerconfig.yaml
     kubectl apply -f examples/install.yaml
     ```

3. _Optional_: Install `Snapshot Controller` if you wish to take snapshots of Piraeus volumes. You can use your own custom installation method or use the example provided in [examples/install.yaml](examples/install.yaml)
   _NOTE_: From Kubernetes v1.20 volume snapshot feature is included in the Kubernetes release.

4. **Setup RBAC**: Add additional `ClusterRole` and `ClusterRoleBinding` required to manage Piraeus `piraeus.io` resources.

   _NOTE_: Default Crossplane Service Account doesn't come with RBAC permissions to manage Piraeus resources.

   ```sh
   kubectl apply -f examples/rbac.yaml
   ```

5. **Setup Piraeus Cluster** using `cluster.piraeus.livewyer.io` XRD:
   ```sh
   kubectl apply -f examples/cluster.yaml
   ```

## Examples

- The [`examples/`](examples/) folder contains sample configuration files for setting up Piraeus resources.
- Ensure [`rbac.yaml`](examples/rbac.yaml) is configured for managing Kubernetes storage classes and Piraeus resources.

## License

This project is licensed under the MIT License.

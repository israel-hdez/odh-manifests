#!/usr/bin/env bash

# This script is used to build upstream KServe manifests
# as kfcli uses an outdated kustomize version which cannot
# process some features like `replacements` in the KServe manifests.
#
# Usage:
# $ hack/build-kserve-manifests.sh

echo "Building KServe manifests"
script_dir=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
output_dir="$script_dir/../kserve-built"

kustomize build "$script_dir" > "$output_dir"/kserve-built.yaml

echo "KServe manifests fetched from upstream and assembled into $output_dir/kserve-built.yaml"

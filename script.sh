#!/usr/bin/env bash
user="lfm"
target=("val06")

for machine in ${target[*]}
do
      rsync -i -rtuv \
            $PWD/* \
            ${user}@${machine}:/home/${user}/k8s-rdma-plugin \
            --exclude 'samples-knative/rust/helloworld-rust/target'
done

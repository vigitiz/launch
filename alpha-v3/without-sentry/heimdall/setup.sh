#!/usr/bin/env sh
validator_id=$1

NODE_DIR=$HOME/node
HEIMDALL_HOME=/data/heimdalld

sudo mkdir -p $HEIMDALL_HOME/data
sudo mkdir -p $HEIMDALL_HOME/config

sudo chown -R ubuntu:ubuntu /data

# init heimdall node
heimdalld init --id ${validator_id} --chain-id "heimdall-417" --home /data/heimdalld

# copy node directories to home directories
cp -rf $NODE_DIR/heimdall/config/genesis.json $HEIMDALL_HOME/config/

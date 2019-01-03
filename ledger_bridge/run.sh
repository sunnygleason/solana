#!/bin/bash

export PN_PUB_KEY=
export PN_SUB_KEY=
export NODE_INFO=`curl -q -s ifconfig.co/json`

yarn run babel-node --presets env index.js

#!/bin/bash

# First argument: Client identifier


BASE_CONFIG=${1}

cat ${BASE_CONFIG} \
    <(echo -e '<ca>') \
    ${2} \
    <(echo -e '</ca>\n<cert>') \
    ${3} \
    <(echo -e '</cert>\n<key>') \
    ${4} \
    <(echo -e '</key>\n<tls-auth>') \
    ${5} \
    <(echo -e '</tls-auth>') \
    > /etc/openvpn/client.ovpn

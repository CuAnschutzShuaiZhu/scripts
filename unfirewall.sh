#!/bin/bash

sudo ufw reset
sudo ufw default deny incoming
sudo ufw allow ssh
sudo ufw default allow outgoing
sudo ufw enable
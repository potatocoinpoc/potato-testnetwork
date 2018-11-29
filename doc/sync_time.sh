#!/bin/bash

sudo apt-get install ntpdate
sudo ntpdate time.windows.com

sudo hwclock --localtime --systohc
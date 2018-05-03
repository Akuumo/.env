#!/bin/bash

apt search $1 | grep -E "(i|p)+[[:blank:]]+($1)+[[:blank:]]+.*"

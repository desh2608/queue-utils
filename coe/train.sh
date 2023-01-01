#!/usr/bin/env bash

set -eou pipefail

utils/queue.pl --gpu 2 --mem 16G --config conf/gpu.conf exp/train.log \
  python train.py --world-size 2 <other-args>

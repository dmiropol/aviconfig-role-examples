#!/bin/bash

prefix="*"
find . -type f -name "${prefix}-avi_config.yml" -exec rm -f {} +

echo "Deleted all files matching the pattern ${prefix}-aviconfig.yml."

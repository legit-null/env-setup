#!/bin/bash

find -iregex ".*\.\(cc\|h\|c\|py\)" -type f -exec grep -n --color "$1" {} +

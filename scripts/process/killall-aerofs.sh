#!/bin/bash
ps auxw | \
    grep -i aerofs | \
    grep -v grep | \
    awk '{print $2}' | \
    xargs kill 1>/dev/null 2>/dev/null

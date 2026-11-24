#!/bin/bash

check_root() {
if [ "$EUID" -ne 0 ]; then
echo "Не работает (не root)"
exit 1
fi
}
check_root
echo "Работает (root)."

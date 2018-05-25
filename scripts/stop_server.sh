#!/bin/bash
isExistApp=`pgrep httpd`
if [[ -n  $isExistApp ]]; then
   echo "hello exit"
fi
isExistApp=`pgrep mysqld`
if [[ -n  $isExistApp ]]; then
   echo "hello exit"
fi

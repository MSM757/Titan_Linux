#!/bin/sh
for i in $* do
        kquitapp5 ${i}
        PID=$(ps -ax | grep ${i}$ | awk '{print $1}'
        test -n ${PID} && kill -9 ${PID}
        kstart5 ${i}
done

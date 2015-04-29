#! /bin/bash
while true
do
  for i in {1..10}
  do
    for d in {1..10}
    do
      echo "local.test${i}.test${d} 4 `date +%s`" | nc localhost 2003
    done
  done
done

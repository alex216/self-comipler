#!/bin/bash
assert() {
  expected="$1"
  input="$2"

  ./tokcom "$input" > tmp.s
  gcc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "input:$input => actual:$actual"
  else
    echo "input:$input => expected:$expected expected, but got auctual:$actual"
    exit 1
  fi
}

assert 21 "5+20-4"
assert 66 "50+20-4"
#"assert -422152 "50+20-422222"
assert 41 " 12 + 34 - 5 "

echo OK

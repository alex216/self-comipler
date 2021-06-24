#!/bin/bash
assert() {
  expected="$1"
  input="$2"

  ./one_int_compiler "$input" > tmp.s
  gcc -o tmp tmp.s
  ./tmp
  actual="$?"

  if [ "$actual" = "$expected" ]; then
    echo "input: $input => actual: $actual"
  else
    echo "input: $input => expected: $expected expected, but got actual: $actual"
    exit 1
  fi
}

assert 0 0
assert 42 42

echo OK

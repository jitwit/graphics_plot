
dbg 1
dbstops''

require'math/misc/trig'
steps=: {. + (1&{ - {.) * (i.@>: % ])@{:

pd 'reset'
pd 'title sin(exp) vs cos(exp)'
pd 'color red,green'
pd 'key sin(exp),cos(exp)'
x=. steps _1 2 100
pd x;sin ^x
pd x;cos ^x
pd 'show'

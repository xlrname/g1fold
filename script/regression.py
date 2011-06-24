#!/usr/bin/python

import sys
import re
from statlib import stats

if __name__ == '__main__':
  a = []
  for i in xrange(501):
    a.append([])
  m = re.compile("(?P<l>\d+)\s(?P<m>\d+)")
  L = sys.stdin.readlines()
  for l in L:
    s = m.match(l)
    length = int(s.group("l"))
    length -= length%10 +5
    a[length].append(int(s.group("m"))) 
    
  b = []
  for i in xrange(200,501):
    if (a[i] != []):
      print i, stats.mean(a[i]), stats.stdev(a[i])
#      b.append(len(a[i]))
      
#  print stats.mean(b), stats.stdev(b)


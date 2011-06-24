#!/usr/bin/python

import sys
import re
import argparse
from statlib import stats

if __name__ == '__main__':

  parser = argparse.ArgumentParser(description="")
  parser.add_argument('-l', '--length', help="Length of the structure")
  parser.add_argument('-m', '--mfe', help="MFE of the structure")
  args = parser.parse_args()
  
  al = int(args.length)
  am = int(args.mfe)
  a = []
  m = re.compile("(?P<l>\d+)\s(?P<m>\d+)")
  L = sys.stdin.readlines()
  for l in L:
    s = m.match(l)
    length = int(s.group("l"))
    if (abs(length - al) < 5):
      a.append(int(s.group("m")))
  print a
  print 't-statistic = %6.3f pvalue = %s' % stats.ttest_1samp(a,am)
  
#    length -= length%10 +5
#    a[length].append(int(s.group("m"))) 
    
#  b = []
#  for i in xrange(200,501):
#    if (a[i] != []):
#      print i, stats.mean(a[i]), stats.stdev(a[i])
#      b.append(len(a[i]))
      
#  print stats.mean(b), stats.stdev(b)


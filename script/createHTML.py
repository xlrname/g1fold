#!/usr/bin/python

import argparse
import os.path
import re
import sys


if __name__ == '__main__':

  parser = argparse.ArgumentParser(description="")
  parser.add_argument('-p', '--parse', help="Parses g1fold output")
  parser.add_argument('-c', '--html', help="Creates a HTML output file")
  args = parser.parse_args()
  
  if (args.parse != None):
    firstLine = re.compile(r"(\(\s){3}(?P<class>[^,]+)\s,\s(?P<mfe>(-\d*))\s\)\s,\s(?P<dotbracket>[\(\[\{\}\]\)\.]*)")
    L = sys.stdin.readlines()
    length = 0
    mfe = 0
    new = 0
    for l in L:
        m1 = firstLine.match(l)
        if (m1 != None):
            print "%s!%s!%s" % (m1.group("class"),m1.group("mfe"),m1.group("dotbracket"))
  if (args.html != None):
    print "<html><head>"
    print "<style>table {border:1px solid black; border-right:none; } \ntd { border-bottom:1px solid black; border-right:1px solid black; }</style>"
    print "</head><body>"
    print "<table cellspacing='0' cellpadding='2'>"
    L = sys.stdin.readlines()
    j = 0
    for l in L:
      print "<tr>"
      S = l.split('!')
      i = 0
      for s in S:
        print "<td>"
        if (i == 2): 
          print "<div id='%dshow' onclick=\"this.style.background('red')\">show</div><div id='%dseq' class='sequence'>" % (j,j)
          
        print s
        
        if (i == 2): 
          print "</td>"

        print "</td>"
        i+=1
      print "</tr>"
      j+=1
    print "</table>"
    print "</body></html>"

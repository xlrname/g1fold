#!/usr/bin/python

import os.path
import re
from subprocess import Popen, PIPE, STDOUT

if __name__ == '__main__':
    firstLine = re.compile(r"(\(\s){3}(?P<class>[^,]+)\s,\s(?P<mfe>(-\d*))\s\)\s,\s(?P<dotbracket>[\(\[\{\}\]\)\.]*)")
    L = open("test.result","r").read().splitlines()
    length = 0
    mfe = 0
    new = 0
    for l in L:
        m1 = firstLine.match(l)
        if (m1 != None):
            print "%s!%s!%s" % (m1.group("class"),m1.group("mfe"),m1.group("dotbracket"))

#!/usr/bin/python

import random
import argparse
import os.path
import re
import string
from subprocess import Popen, PIPE, STDOUT

if __name__ == '__main__':
    i = 0
    m = re.compile("\(\s[\S]*\s,\s(?P<seq>[ACGU]*)\s\)")    
    s = "aaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaaccccccccccaaaaaaaaaacccccccccc"
    t = Popen("hmm15 -r 100 "+s, shell=True, stdin=PIPE, stdout=PIPE, close_fds=True)
    randseqs = t.stdout.readlines()
    for l in randseqs:
        m1 = m.match(l)
        if (m1 != None):
            i += 1
            r =random.randint(200,500)
            d =m1.group("seq")[0:r]
            s = "".join(d)
            print "%d:%d:%s" % (i,r,s)
            t = Popen("../g1fold "+s, shell=True, stdin=PIPE, stdout=PIPE, close_fds=True)
            output = t.stdout.readlines()
            for l in output:
                print l

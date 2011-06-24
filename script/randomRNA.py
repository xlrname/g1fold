#!/usr/bin/python

import random
import argparse
import os.path
import re
import string
from subprocess import Popen, PIPE, STDOUT

if __name__ == '__main__':
    
    i = 0;
    while i < 100000:
        i += 1
        r =random.randint(200,500)
        d =[random.choice("ACGU") for x in xrange(r)]
        s = "".join(d)
        print "%d:%d:%s" % (i,r,s)
        t = Popen("../g1fold "+s, shell=True, stdin=PIPE, stdout=PIPE, close_fds=True)
        output = t.stdout.readlines()
        for l in output:
            print l
        
        
        
        
        
        

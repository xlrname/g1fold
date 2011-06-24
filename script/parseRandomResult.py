#!/usr/bin/python

import os.path
import re
import argparse
from subprocess import Popen, PIPE, STDOUT


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="")
    parser.add_argument('-f', '--file', help="File to parse")
    args = parser.parse_args()

    if (args.file != None):
        firstLine = re.compile(r"\d*:(?P<length>\d+):\w+")
        secondline = re.compile(r"(\(\s){2}-(?P<mfe>\d+)*")
        L = open(args.file,"r").read().splitlines()
        length = 0
        mfe = 0
        new = 0
        for l in L:
            m1 = firstLine.match(l)
            if (m1 != None):
                if (new):
                    print "%s\t0" % (m1.group("length"),)
                new = 1
                length = m1.group("length")
            if (new):
                m2 = secondline.match(l)
                if (m2 != None):
                    mfe = int(m2.group('mfe'))/100
                    new = 0
                    print "%s\t%d" % (length,mfe) 
                

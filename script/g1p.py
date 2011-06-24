#!/usr/bin/python

import argparse
import os.path
import re
from subprocess import Popen, PIPE, STDOUT

def complement(seq):
    complement = {'A': 'U', 'C': 'G', 'G': 'C', 'T': 'A'}
    complseq = [complement[base] for base in seq]
    return complseq
 
def fold(seq,comment):
    t = Popen("../g1fold_opt "+seq, shell=True, stdin=PIPE, stdout=PIPE, close_fds=True)
    output = t.stdout.readlines()
    for l in output:
        if (not l.startswith("Answer:")):
            m = re.match("\(\s\(\s(?P<mfe>[-]?\d+?)\s,\s(?P<fold>[\.\(\)\[\]\{\}]*?)\s\)\s,\s(?P<symbolic>[\s\d\w\-\<\>]*?)\s\)",l);
            mfe = int(m.group('mfe'))/100
            print "header:\t\t"+comment.replace(">","")
            print "sequence:\t"+seq
            print "mfe:\t\t%d" % mfe
            print "structure:\t"+m.group('fold')
            print "symbolics:\t"+m.group('symbolic')
            print "\n"
            input = seq
            fold = m.group('fold')
            symbolic = m.group('symbolic')
            while (input != ""):
                print input[:80]
                print fold[:80]
                print symbolic[:80]+"\n"
                input = input[80:]
                fold = fold[80:]
                symbolic = symbolic[80:]
            break

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="Predicts optimal group I intron secondary structure")
    parser.add_argument('-f', '--file', metavar='F', nargs='*', help="a FASTA file")
    parser.add_argument('sequence', metavar='S', nargs='*', help="a sequence")
    args = parser.parse_args()
    
    fastaComment = re.compile(">.*")
    fastaSequence = re.compile("^[acgtACGT]+$")
    fastaSequenceCompl = re.compile("^[acguACGU]+$")
    
    if args.sequence != None:
        for s in args.sequence:
            if (fastaSequenceCompl.match(s)):
                fold(s.upper(),"")
            elif (fastaSequence.match(s)):
                fold(complement(s.upper()),"")
            else:
                print "Sequence "+s+" does not match the RNA type\n"
    
    if args.file != None:
      for f in args.file:
          if (os.path.exists(f) and os.path.isfile(f)):
              L = open(f,"r").read().splitlines()
              seq = ""
              comment = ""
              for line in L:                
                  if (fastaComment.match(line)):
                      if (fastaSequence.match(seq)):
                          seq = ''.join(complement(seq.upper()))
                      if (seq != ""):
                          fold(seq,comment);
                      seq = ""
                      comment = line
                  elif (fastaSequence.match(line) or fastaSequenceCompl.match(line)):
                      seq = seq+line

                      
              if (fastaSequence.match(seq)):
                  seq = ''.join(complement(seq.upper()))
              print seq
              fold(seq,comment);
                  
        
        
        
        
        
        
        

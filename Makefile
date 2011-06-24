all: clean.all link.filter g1fold

opt:
	make -f Makefile.opt;

GAPC = gapc

DEBUG = CXXFLAGS="-g -Wall -Wno-parentheses"

OPENMP = CPPFLAGS_EXTRA="-fopenmp"

SUBDIR = include/pknot/

link.filter:
	ln -sf include/filter/* .;
	ln -sf include/pkenergy.hh .;

%.mf: %.gap
	$(GAPC) $(GFLAGS) $< -o $*.cc;

p3:
	cd $(SUBDIR)/p3/; make all copy.hh

p7:
	cd $(SUBDIR)/p7/; make all copy.hh

g1fold.mf: GFLAGS = -i cmfeppsy --tab-all -I include

g1fold: g1fold.mf p3 p7
	make -f $< LDLIBS_EXTRA="p3.o p7.o"
	rm -f *.cc *.mf *.d *.o *.rej *.orig p3.hh p7.hh g1fold.hh
	rm -rf $(SUBDIR)/p7/p7;
	rm -rf $(SUBDIR)/p3/p3;

test: 	
	time ./g1fold GGAGGGAAAAGUUAUCAGGCAUGCACCUGGUAGCUAGUCUUUAAACCAUAGAUUGCAUCGGUUUAAAAGGCAAGACCGUCAAAUUGCGGGAAAGGGGUCAACAGCCGUUCAGUACCAAGUCUCAGGGGAAACUUUGAGAUGGCCUUGCAAAGGGUAUGGUAAUAAGCUGACGGACAUGGUCCUAACCACGCAGCCAAGUCCUAAGUCAACAGAUCUUCUGUUGAUAUGGAUGCAGUUCACAGACUAAAUGUCGGUCGGGGAAGAUGUAUUCUUCUCAUAAGAUAUAGUCGGACCUCUCCUUAAUGGGAGCUAGCGGAUGAAGUGAUGCAACACUGGAGCCGCUGGGAACUAAUUUGUAUGCGAAAGUAUAUUGAUUAGUUUUGGAGUACUCG
	
p7.test: 
	cd $(SUBDIR)p7/; make test
	
p3.test:
	cd $(SUBDIR)p3/; make test

clean.codegen:
	rm -f *.cc *.mf *.d *.o *.rej *.orig;

clean:	clean.codegen
	rm -f g1fold p7 p3;

clean.all:	clean
	rm -f *.hh
	cd $(SUBDIR)p3/; make clean.all unlink.filter;
	cd $(SUBDIR)p7/; make clean.all unlink.filter;

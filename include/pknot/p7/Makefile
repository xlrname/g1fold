all: clean.all link.filter p7 unlink.filter

opt:
	make -f Makefile.opt

GAPC = gapc

DEBUG = CXXFLAGS="-g -Wall -Wno-parentheses"

OPENMP = CPPFLAGS_EXTRA="-fopenmp"

link.filter: 
	ln -sf ../../filter/* .

unlink.filter:
	rm -rf *.cc *.mf *.d p7_main.o string.o *.rej *.orig seqcon.hh;

copy.hh:
	mv p7.o ../../../;
	mv p7.hh ../../../;
	cp p7energy*.hh ../../../;

%.mf: %.gap
	$(GAPC) $(GFLAGS) $< -o $*.cc;

p7.mf: GFLAGS = -i $(INSTANCE) --tab-all

p7.mf: INSTANCE = c

p7: p7.mf
	sed 's/hash_h/p7hash_h/g' p7.hh > p7_edited.hh; mv p7_edited.hh p7.hh
	sed 's/hash_h/p7hash_h/g' p7.cc > p7_edited.cc; mv p7_edited.cc p7.cc
	make -f $(SUBDIR)$<
test:
	./p7 gagacugcagucc

clean.codegen:
	rm -f *.cc *.mf *.d *.o *.rej *.orig;

clean:	clean.codegen
	rm -f p7;

clean.all:	clean
	rm -f p7.hh

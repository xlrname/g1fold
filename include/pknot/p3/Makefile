all: clean.all link.filter p3 unlink.filter

opt:
	make -f Makefile.opt

GAPC = gapc

DEBUG = CXXFLAGS="-g -Wall -Wno-parentheses"

OPENMP = CPPFLAGS_EXTRA="-fopenmp" LDLIBS_EXTRA="-fopenmp"

link.filter: 
	ln -sf ../../filter/* .

unlink.filter:
	rm -rf *.cc *.mf *.d p3_main.o string.o *.rej *.orig seqcon.hh;

copy.hh:
	mv p3.o ../../../;
	mv p3.hh ../../../;
	cp p3energy*.hh ../../../;

%.mf: %.gap
	$(GAPC) $(GFLAGS) $< -o $*.cc;

p3.mf: GFLAGS = -i $(INSTANCE) --tab-all

p3.mf: INSTANCE = c

p3: p3.mf
	sed 's/hash_h/p3hash_h/g' p3.hh > p3_edited.hh; mv p3_edited.hh p3.hh
	sed 's/hash_h/p3hash_h/g' p3.cc > p3_edited.cc; mv p3_edited.cc p3.cc
	make -f $(SUBDIR)$<
test:
	./p3 GACCGUCAUGUCGGUC

clean.codegen:
	rm -f *.cc *.mf *.d *.o *.rej *.orig;

clean:	clean.codegen
	rm -f p3;

clean.all:	clean
	rm -f p3.hh

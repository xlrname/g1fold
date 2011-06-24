import rna
import seqcon

input rna

type Rope = extern
type string_t = Rope
type triple7 = ( int mfe, int j, int jr, int tl, int rt, string_t forward, string_t backward)

signature Algebra(alphabet, comp) {
  comp w(Subsequence, comp, Subsequence);
  comp sr(Subsequence, comp, Subsequence);
  comp ss(Subsequence, comp, Subsequence);
  comp bl(Subsequence, Subsequence, comp, Subsequence);
  comp nil(Subsequence);
  comp bla(comp);
  comp blrnd(comp);
  comp cgw(comp);
  comp cgwo(comp);
  choice [comp] h([comp]);
}

algebra mfe implements Algebra(alphabet = char, comp = triple7) {

  triple7 w(Subsequence lb, triple7 x, Subsequence rb) {
    x.j = size(lb);
    return x;
  }
  
  triple7 ss(Subsequence lb, triple7 x, Subsequence rb) {
    x.jr = x.jr + size(lb);
    x.tl = x.tl + size(rb);
	  
    x.forward = "{" + x.forward;
    x.backward = x.backward + "}";
    return x;
  }

  triple7 sr(Subsequence lb, triple7 x, Subsequence rb) {
    Subsequence stem;
    stem.seq = lb.seq;
    stem.i = lb.i;
    stem.j = rb.j;
    
    x.jr = x.jr + size(lb);
    x.tl = x.tl + size(rb);
    x.mfe = x.mfe + sr_energy(stem, stem);
	  
    x.forward = "{" + x.forward;
    x.backward = x.backward + "}";
    return x;
  }
  
  triple7 bl(Subsequence lb, Subsequence lr, triple7 x, Subsequence rb) {
    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;

    x.jr = x.jr + size(lb) + size(lr);
    x.tl = x.tl + size(rb);	  
    x.mfe = x.mfe + bl_energy(innerStem, lr, innerStem);
	  
    x.forward = "{." + x.forward;
    x.backward = x.backward + "}";
    return x;
  }
  
  triple7 br(Subsequence lb, triple7 x, Subsequence rr, Subsequence rb) {
    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;

    x.jr = x.jr + size(lb);
    x.tl = x.tl + size(rb) + size(rr);	  
    x.mfe = x.mfe + br_energy(innerStem, rr, innerStem);
	  
    x.forward = "{" + x.forward;
    x.backward = x.backward + ".}";
    return x;
  }
  
  triple7 nil(Subsequence s) {
    triple7 x;
    x.jr = 0;
    x.j = 0;
    x.tl = 0;
    x.mfe = 0;
    x.rt = size(s);
    string_t res;
    x.forward = res;
    string_t res2;
    x.backward = res2;
    return x;
  }
  
  triple7 bla(triple7 x) { return x; }
  triple7 blrnd(triple7 x) { return x; }
  triple7 cgw(triple7 x) { return x; }
  triple7 cgwo(triple7 x) { return x; }
  
  choice [triple7] h([triple7] i) {
    return list(minimum(i));
  }
}

algebra classify implements Algebra(alphabet = char, comp = string_t) {

  string_t w(Subsequence lb, string_t x, Subsequence rb) { return x; }
  string_t ss(Subsequence lb, string_t x, Subsequence rb) { return x; }
  string_t sr(Subsequence lb, string_t x, Subsequence rb) { return x; }
  string_t bl(Subsequence lb, Subsequence lr, string_t x, Subsequence rb) { return x; }
  string_t br(Subsequence lb, string_t x, Subsequence rr, Subsequence rb) { return x; }
  string_t nil(Subsequence s) {
    string_t x;
    return x;
  }
  string_t bla(string_t x) { return x + "+7blA"; }
  string_t blrnd(string_t x) { return x + "-7blA"; }
  string_t cgw(string_t x) { return x + "+7cg"; }
  string_t cgwo(string_t x) { return x + "-7cg"; }
  
  choice [string_t] h([string_t] i) {
    return unique(i);
  }
}

grammar p7 uses Algebra(axiom = window) {

  window	= w (REGION0, start, REGION0) # h;
	cga     = bl (BASE with is_c, BASE with is_a, seqcon, BASE with is_g) |
			      bl (BASE with is_g, BASE with is_a, seqcon, BASE with is_c) #h;
	cgrnd   = bl (BASE with is_c, BASE with not_a, seqcon, BASE with is_g) |
  			    bl (BASE with is_g, BASE with not_a, seqcon, BASE with is_c) #h;
  rnda    = bl (BASE with is_a, BASE with is_a, seqcon, BASE with is_u) |
			      bl (BASE with is_u, BASE with is_a, seqcon, BASE with is_a) |
			      bl (BASE with is_g, BASE with is_a, seqcon, BASE with is_u) |
			      bl (BASE with is_u, BASE with is_a, seqcon, BASE with is_g) #h; 
	rndrnd  = bl (BASE with is_a, BASE with not_a, seqcon, BASE with is_u) |
			      bl (BASE with is_u, BASE with not_a, seqcon, BASE with is_a) |
			      bl (BASE with is_g, BASE with not_a, seqcon, BASE with is_u) |
			      bl (BASE with is_u, BASE with not_a, seqcon, BASE with is_g) #h;
  cgw     = bla(cga) | blrnd(cgrnd) #h;
  rnd     = bla(rnda) |	blrnd(rndrnd) #h;
  start		= cgw (cgw) | cgwo(rnd) #h;	
	
  seqcon	= sr (BASE with is_c, stack, BASE with is_g) |
		  sr (BASE with is_g, stack, BASE with is_c) # h;

  stack		= sr (BASE, stack2, BASE) #h;	
  stack2	= sr (BASE, stack2, BASE) |
		  end # h;
  
  end		= ss (BASE, nil(REGION0), BASE) #h;
}

instance mfe = p7(mfe);
instance c = p7(classify * mfe);

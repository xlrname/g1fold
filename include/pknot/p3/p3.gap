import rna
import seqcon
import list

input rna

type Rope = extern
type string_t = Rope
type triple3 = ( int mfe, int i, int iq, int sk, int qs, int se, string_t forward, string_t backward)

signature Algebra(alphabet, comp) {
  comp w(Subsequence, comp, Subsequence);
  comp sr(Subsequence, comp, Subsequence);
  comp ss(Subsequence, comp, Subsequence);
  comp br(Subsequence, Subsequence, comp, Subsequence, Subsequence, Subsequence);
  comp bl(Subsequence, Subsequence, Subsequence, comp, Subsequence, Subsequence);
  comp il(Subsequence, Subsequence, Subsequence, comp, Subsequence, Subsequence, Subsequence);
  comp ilwp(comp);
  comp ilup(comp);
  comp nil(Subsequence);
  comp cg1w(comp);
  comp cg1wo(comp);
  comp cg2w(comp);
  comp cg2wo(comp);
  choice [comp] h([comp]);
}


algebra mfe implements Algebra(alphabet = char, comp = triple3) {
	
  triple3 w(Subsequence lb, triple3 x, Subsequence rb) {
    x.i = size(lb);
	  
    //string_t res;
    //append(res,".",x.i);
    //append(res, x.forward);
    //x.forward = res;
	  
    x.se = size(rb);
	  
    //string_t res2;
    //append(res2, x.backward);
    //append(res2,".",x.se);
    //x.backward = res2;
	  
    return x;
  }

  triple3 sr(Subsequence lb, triple3 x, Subsequence rb) {
    Subsequence stem;
    stem.seq = lb.seq;
    stem.i = lb.i;
    stem.j = rb.j;

    x.iq = x.iq + size(lb);
    x.sk = x.sk + size(rb);
    x.mfe = x.mfe + sr_energy(stem, stem);
    string_t res;
    x.forward = "[" + x.forward;
    x.backward = x.backward + "]";
    return x;
  }
  
  triple3 ss(Subsequence lb, triple3 x, Subsequence rb) {
    x.iq = x.iq + size(lb);
    x.sk = x.sk + size(rb);
	  
    x.forward = "[" + x.forward;
    x.backward = x.backward + "]";
    return x;
  }

  triple3 br(Subsequence llb, Subsequence lb, triple3 x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;
      
    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
    
    x.iq = x.iq + size(lb) + size(llb);
    x.sk = x.sk + size(rb) + size(rr) + size(rrb);
    x.mfe = x.mfe + sr_energy(outerStem, outerStem) + br_energy(innerStem, rr, innerStem);

    x.forward = "[[" + x.forward;
    x.backward = x.backward + ".]]";
    return x;
  }
  
  triple3 bl(Subsequence llb, Subsequence lb, Subsequence ll, triple3 x, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;
      
    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
    
    x.iq = x.iq + size(lb) + size(ll) + size(llb);
    x.sk = x.sk + size(rb) + size(rrb);
    x.mfe = x.mfe + sr_energy(outerStem, outerStem) + bl_energy(innerStem, ll, innerStem);

    x.forward = "[[." + x.forward;
    x.backward = x.backward + "]]";
    return x;
  }
  
  triple3 ilup(triple3 x) { return x; }
  triple3 ilwp(triple3 x) { return x; }
  triple3 cg1wo(triple3 x) { return x; }
  triple3 cg1w(triple3 x) { return x; }
  triple3 cg2wo(triple3 x) { return x; }
  triple3 cg2w(triple3 x) { return x; }
  
  triple3 il(Subsequence llb, Subsequence lb, Subsequence lr, triple3 x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;
      
    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
    
    x.iq = x.iq + size(lb) + size(llb) + size(lr);
    x.sk = x.sk + size(rb) + size(rr) + size(rrb);
    x.mfe = x.mfe + sr_energy(outerStem, outerStem) + il_energy(lr, rr);
	  
    x.forward = "[[." + x.forward;
    x.backward = x.backward + ".]]";
    return x;
  }
  
  triple3 nil(Subsequence c) {
    triple3 t;
    t.mfe = 0;
    t.iq = 0;
    t.sk = 0;
    t.i = 0;
    t.se = 0;
    t.qs = size(c);
    string_t res;
    t.forward = res;
    string_t res2;
    t.backward = res2;
    return t;
  }
  
  choice [triple3] h([triple3] l) {
    return list(minimum(l));
  }
}

algebra classify implements Algebra(alphabet = char, comp = string_t) {
//with cg = 1
//wo cg   = 0
  string_t w(Subsequence lb, string_t x, Subsequence rb) { return x; }
  string_t sr(Subsequence lb, string_t x, Subsequence rb) {return x; }
  string_t ss(Subsequence lb, string_t x, Subsequence rb) {return x; }
  string_t br(Subsequence llb, Subsequence lb, string_t x, Subsequence rr, Subsequence rb, Subsequence rrb) {  x = x + "+3bl    "; return x; }
  string_t bl(Subsequence llb, Subsequence lb, Subsequence rr, string_t x, Subsequence rb, Subsequence rrb) {  x = x + "+3br    "; return x; }
  string_t ilup(string_t x) { x = x + "+3il-3ip"; return x; }
  string_t il(Subsequence llb, Subsequence lb, Subsequence lr, string_t x, Subsequence rr, Subsequence rb, Subsequence rrb) {return x; }
  string_t ilwp(string_t x) { x = x + "+3il+3ip"; return x; }
  string_t nil(Subsequence c) { string_t t; return t; }
  string_t cg1wo(string_t x) { x = x + "-3cg1"; return x; }
  string_t cg1w(string_t x) {  x = x + "+3cg1"; return x; }
  string_t cg2wo(string_t x) { x = x + "-3cg2";return x; }
  string_t cg2w(string_t x) { x = x + "+3cg2";return x; }
  
  choice [string_t] h([string_t] l) {
    return unique(l);
  }
}
grammar p3 uses Algebra(axiom = window) {

  window	  = w (REGION0, start, REGION0) #h;

  start		  = sr (BASE, start2, BASE) #h;
  start2	  = sr (BASE, start2, BASE) |
        		  freebase #h;
	
	cg1w      = ilwp (il (BASE, BASE, BASE, end, BASE, BASE, BASE) with_overlay p3ilwpcg) |
			        ilup (il (BASE, BASE, BASE, end, BASE, BASE, BASE) with_overlay p3ilupcg) |
			        br (BASE, BASE with is_g, end, BASE, BASE with is_c, BASE) |
			        br (BASE, BASE with is_c, end, BASE, BASE with is_g, BASE) |
			        bl (BASE, BASE with is_g, BASE, end, BASE with is_c, BASE) |
			        bl (BASE, BASE with is_c, BASE, end, BASE with is_g, BASE) #h;
			        
  cg1wo     = ilwp (il (BASE, BASE, BASE, end, BASE, BASE, BASE) with_overlay p3ilwp) |
			        ilup (il (BASE, BASE, BASE, end, BASE, BASE, BASE) with_overlay p3ilup) |
			        br (BASE, BASE with is_a, end, BASE, BASE with is_u, BASE) |
			        br (BASE, BASE with is_u, end, BASE, BASE with is_a, BASE) |
			        br (BASE, BASE with is_g, end, BASE, BASE with is_u, BASE) |
			        br (BASE, BASE with is_u, end, BASE, BASE with is_g, BASE) |
			        bl (BASE, BASE with is_a, BASE, end, BASE with is_u, BASE) |
			        bl (BASE, BASE with is_u, BASE, end, BASE with is_a, BASE) |
			        bl (BASE, BASE with is_g, BASE, end, BASE with is_u, BASE) |
			        bl (BASE, BASE with is_u, BASE, end, BASE with is_g, BASE) #h;
	
  freebase	= cg1w (cg1w) | cg1wo (cg1wo) #h;
		  
	cg2w      = ss (BASE with is_c, nil(REGION0), BASE with is_g) |
        			ss (BASE with is_g, nil(REGION0), BASE with is_c) #h;
        			
  cg2wo     = ss (BASE with is_a, nil(REGION0), BASE with is_u) |
		          ss (BASE with is_u, nil(REGION0), BASE with is_a) |
		          ss (BASE with is_g, nil(REGION0), BASE with is_u) |
		          ss (BASE with is_u, nil(REGION0), BASE with is_g) #h;
	
  end		    = cg2w(cg2w) | cg2wo(cg2wo) #h;
}

instance mfe = p3(mfe);
instance c = p3(classify * mfe);

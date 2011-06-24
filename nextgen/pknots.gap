import rna

import pkenergy

input rna

type Rope = extern
type myShape = extern

type mfeanswer = (int energy, int betaLeftOuter, int alphaRightOuter)
type string_t = Rope
type shape_t = shape
type myBool = int
type pkanswer = (int mfe, int skipl, int skipr, int size_s1, int size_s2, int size_inner)
type pkcomplete = (mfeanswer mfeanswer, int i_0, int i, int q, int j, int r, int s, int k, int t, int l)

signature Algebra(alphabet, comp, compKnot, pkAnswer, pkComplete) {
  comp sadd(Subsequence, comp);
  comp cadd(comp, comp);
  comp nil(void);
  comp is(Subsequence, comp, Subsequence);
  comp edl(Subsequence, comp, Subsequence);
  comp edr(Subsequence, comp, Subsequence);
  comp edlr(Subsequence, comp, Subsequence);
  comp pk(compKnot);
  compKnot pknot(pkAnswer, pkAnswer);
  pkAnswer pkinner(pkAnswer, comp);
  pkAnswer pk_sadd(Subsequence, pkAnswer);
  pkAnswer pk_adds(pkAnswer, Subsequence);
  pkAnswer pk_hl(Subsequence, Subsequence, Subsequence, Subsequence, Subsequence);
  pkAnswer pkinner_energy(comp);
  comp kndl(Subsequence, compKnot);
  comp kndr(compKnot, Subsequence);
  comp kndlr(Subsequence, compKnot, Subsequence);
  comp sr(Subsequence, comp, Subsequence);
  comp hl(Subsequence, Subsequence, Subsequence, Subsequence, Subsequence);
  comp bl(Subsequence, Subsequence, Subsequence, comp, Subsequence, Subsequence);
  comp br(Subsequence, Subsequence, comp, Subsequence, Subsequence, Subsequence);
  comp il(Subsequence, Subsequence, Subsequence, comp, Subsequence, Subsequence, Subsequence);
  comp ml(Subsequence, Subsequence, comp, Subsequence, Subsequence);
  comp mldl(Subsequence, Subsequence, Subsequence, comp, Subsequence, Subsequence);
  comp mldr(Subsequence, Subsequence, comp, Subsequence, Subsequence, Subsequence);
  comp mldlr(Subsequence, Subsequence, Subsequence, comp, Subsequence, Subsequence, Subsequence);
  comp addss(comp, Subsequence);
  comp mlstem(comp);
  comp pkml(comp);
  comp frd(comp, Subsequence; int);
  comp ul(comp);
  comp emptymid(Subsequence ; int, int);
  comp midbase(Subsequence ; int, int);
  comp middlro(Subsequence ; int, int);
  comp midregion(comp);
  comp middl(Subsequence, comp; int);
  comp middr(comp, Subsequence; int);
  comp middlr(Subsequence, comp, Subsequence; int, int);
  comp bkd(Subsequence, comp; int);
  comp pss(Subsequence);
  choice [comp] h([comp]);
  choice [compKnot] hKnot([compKnot]);
}


algebra mfe implements Algebra(alphabet = char, comp = int, compKnot = mfeanswer, pkAnswer = pkanswer, pkComplete = pkComplete) {
	
  mfeanswer pk_u(pkcomplete a, int b) {
    a.mfeanswer.mfe = a.mfeanswer.mfe + b;
    return a.mfeanswer;
  }

  pkanswer pkinner(pkanswer a, int b) {
    a.mfe = a.mfe + b;
    return b;
  }
  pkcomplete pknot(pkanswer a, pkanswer b; int i_0, int l_0, Subsequence COMPLETE_SEQUENCE) {
    pkcomplete pk;
    pk.i_0 = i_0;
    pk.i = a.skipl;
    pk.q = a.size_s1;
    pk.s = q + a.size_inner;
    pk.k = s + a.size_s2;
	  
    assert(k == a.skipr);
	  
    pk.j = b.skipl;
    pk.r = j + b.size_s1;
    pk.t = r + b.size_inner;
    pk.l = r + b.size_s2;
	  
    assert(l==l_0);
    assert(q<j<r<=s<k<t<l);
	  
    Subsequence alphaOuter;
    alphaOuter.seq = COMPLETE_SEQUENCE;
    alphaOuter.i = i_0 + i;
    alphaOuter.j = i_0 + k;
    
    Subsequence alphaInner;
    alphaInner.seq = COMPLETE_SEQUENCE;
    alphaInner.i = i_0 + q-1;
    alphaInner.j = i_0 + s+1;
    
    Subsequence betaOuter;
    betaOuter.seq = COMPLETE_SEQUENCE;
    betaOuter.i = i_0 + j;
    betaOuter.j = i_0 + l;
    
    Subsequence betaInner;
    betaInner.seq = COMPLETE_SEQUENCE;
    betaInner.i = i_0 + r-1;
    betaInner.j = i_0 + t+1;

    mfeanswer x;
    x.betaLeftOuter = j;
    x.alphaRightOuter = k;
    x.mfe      = a.mfe 
	               + b.mfe
                 + pkinit                                // initiation energy for pk
                 + 3*npp                                 // penalty for 1+2 explicitly unpaired bases
                 + front                                 // energy from front substructure
                 + back                                  // energy from back substructure
                 + termaupenalty(alphaOuter, alphaOuter) // AU penalty for outmost BP in alpha helix
                 + termaupenalty(alphaInner, alphaInner) // AU penalty for innermost BP in alpha helix
                 + termaupenalty(betaOuter, betaOuter)   // AU penalty for outmost BP in beta helix
                 + termaupenalty(betaInner, betaInner)   // AU penalty for innermost BP in beta helix
                 + dli_energy(alphaInner, alphaInner)    // explicitly unpaired base, before front, dangles at the inside of helix alpha
		             + dri_energy(betaInner, betaInner);     // explicitly unpaired base, after back, dangles at the inside of helix beta
    pk.mfeanswer = x;
    return pk;
  }
  pkanswer pk_sadd(Subsequence b, pkanswer x) {
    x.skipr = x.skipr + size(b);
    return x;
  }
  
  pkanswer pk_adds(Subsequence b, pkanswer x) {
    x.skipl = size(b) + x.skipl;
    return x;
  }
  
  pkanswer pk_hl(Subsequence llb, Subsequence lb, Subsequence r, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;
      
    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
    
    pkanswer x;
    x.mfe = hl_energy(innerStem, innerStem) + sr_energy(outerStem, outerStem);
    x.size_s1 = 2;
    x.size_s2 = 2;
    x.size_inner = size(r);
    x.mfe = 0;
	  
    return x;
  }
  
  pkanswer pk_sr(Subsequence a, pkanswer x, Subsequence b) {
    x.size_s1 = x.size_s1 + size(a);
    x.size_s2 = x.size_s2 + size(b);
	  
    Subsequence stem;
    stem.seq = lb.seq;
    stem.i = lb.i;
    stem.j = rb.j;
    x.mfe = x.mfe + sr_energy(stem, stem);
	  
    return x;
  }
  
  pkAnswer pkinner_energy(int a) {
    pkanswer x;
    x.mfe = a;
    return x;
  }
  
  int sadd(Subsequence b, int x) {
    return x;
  }

  int cadd(int x, int y) {
    return x + y;
  }

  int nil(void) {
    return 0;
  }

  int is(Subsequence ld, int x, Subsequence rd) {
    Subsequence stem;
    stem.seq = ld.seq;
    stem.i = ld.i;
    stem.j = rd.j;
    
    return x + termaupenalty(stem, stem);
  }

  int edl(Subsequence ld, int x, Subsequence rd) {
    Subsequence stem;
    stem.seq = ld.seq;
    stem.i = ld.i+1;
    stem.j = rd.j;
      
    return x + termaupenalty(stem, stem) + dl_energy(stem, stem);
  }
 
  int edr(Subsequence ld, int x, Subsequence rd) {
    Subsequence stem;
    stem.seq = ld.seq;
    stem.i = ld.i;
    stem.j = rd.j-1;
      
    return x + termaupenalty(stem, stem) + dr_energy(stem, stem);
  }

  int edlr(Subsequence ld, int x, Subsequence rd) {
    Subsequence stem;
    stem.seq = ld.seq;
    stem.i = ld.i+1;
    stem.j = rd.j-1;
      
    return x + termaupenalty(stem, stem) + dl_energy(stem, stem) + dr_energy(stem, stem);
  }

  int pk(mfeanswer x) {
    return x.energy;
  }

  //~ mfeanswer pknot(Subsequence a, int front, Subsequence b, int middle, Subsequence aPrime, int back, Subsequence bPrime ; int stackenergies) {
    //~ mfeanswer res;
	
    //~ Subsequence alphaOuter;
    //~ alphaOuter.seq = a.seq;
    //~ alphaOuter.i = a.i;
    //~ alphaOuter.j = aPrime.j;
    
    //~ Subsequence alphaInner;
    //~ alphaInner.seq = a.seq;
    //~ alphaInner.i = a.j-1;
    //~ alphaInner.j = aPrime.i+1;
    
    //~ Subsequence betaOuter;
    //~ betaOuter.seq = b.seq;
    //~ betaOuter.i = b.i;
    //~ betaOuter.j = bPrime.j;
    
    //~ Subsequence betaInner;
    //~ betaInner.seq = b.seq;
    //~ betaInner.i = b.j-1;
    //~ betaInner.j = bPrime.i+1;
	  
    //~ res.betaLeftOuter = b.i;
    //~ res.alphaRightOuter = aPrime.j;
    
    //~ res.energy =   stackenergies                         // stacking energies
                 //~ + pkinit                                // initiation energy for pk
                 //~ + 3*npp                                 // penalty for 1+2 explicitly unpaired bases
                 //~ + front                                 // energy from front substructure
                 //~ + middle                                // energy from middle substructure
                 //~ + back                                  // energy from back substructure
                 //~ + termaupenalty(alphaOuter, alphaOuter) // AU penalty for outmost BP in alpha helix
                 //~ + termaupenalty(alphaInner, alphaInner) // AU penalty for innermost BP in alpha helix
                 //~ + termaupenalty(betaOuter, betaOuter)   // AU penalty for outmost BP in beta helix
                 //~ + termaupenalty(betaInner, betaInner)   // AU penalty for innermost BP in beta helix
                 //~ + dli_energy(alphaInner, alphaInner)    // explicitly unpaired base, before front, dangles at the inside of helix alpha
	         //~ + dri_energy(betaInner, betaInner);     // explicitly unpaired base, after back, dangles at the inside of helix beta
    
	//~ return res;
  //~ }

  int kndl(Subsequence ld, mfeanswer x) {
    Subsequence alpha;
    alpha.seq = ld.seq;
    alpha.i = ld.i+1;
    alpha.j = x.alphaRightOuter;
    
    return x.energy + npp + dl_energy(alpha, alpha);
  }

  int kndr(mfeanswer x, Subsequence rd) {
    Subsequence beta;
    beta.seq = rd.seq;
    beta.i = x.betaLeftOuter;
    beta.j = rd.j-1;
    
    return x.energy + npp + dr_energy(beta, beta);
  }

  int kndlr(Subsequence ld, mfeanswer x, Subsequence rd) {
    Subsequence alpha;
    alpha.seq = ld.seq;
    alpha.i = ld.i+1;
    alpha.j = x.alphaRightOuter;
      
    Subsequence beta;
    beta.seq = ld.seq;
    beta.i = x.betaLeftOuter;
    beta.j = rd.j-1;
      
    return x.energy + 2*npp + dl_energy(alpha, alpha) + dr_energy(beta, beta);
  }

  int sr(Subsequence lb, int x, Subsequence rb) {
    Subsequence stem;
    stem.seq = lb.seq;
    stem.i = lb.i;
    stem.j = rb.j;
      
    return x + sr_energy(stem, stem);
  }

  int hl(Subsequence llb, Subsequence lb, Subsequence r, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;
      
    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
    
    return hl_energy(innerStem, innerStem) + sr_energy(outerStem, outerStem);
  }

  int bl(Subsequence llb, Subsequence lb, Subsequence lr, int x, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;
      
    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
    
    return x + sr_energy(outerStem, outerStem) + bl_energy(innerStem, lr, innerStem);
  }

  int br(Subsequence llb, Subsequence lb, int x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;
      
    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
    
    return x + sr_energy(outerStem, outerStem) + br_energy(innerStem, rr, innerStem);
  }

  int il(Subsequence llb, Subsequence lb, Subsequence lr, int x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;
      
    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
    
    return x + sr_energy(outerStem, outerStem) + il_energy(lr, rr);
  }

  int ml(Subsequence llb, Subsequence lb, int x, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;

    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
      
    return x + mlinit + sr_energy(outerStem, outerStem) + termaupenalty(innerStem, innerStem);
  }

  int mldl(Subsequence llb, Subsequence lb, Subsequence ld, int x, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;

    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
      
    return x + mlinit + sr_energy(outerStem, outerStem) + termaupenalty(innerStem, innerStem) + dli_energy(innerStem,innerStem);
  }

  int mldr(Subsequence llb, Subsequence lb, int x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;

    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
      
    return x + mlinit + sr_energy(outerStem, outerStem) + termaupenalty(innerStem, innerStem) + dri_energy(innerStem,innerStem);
  }

  int mldlr(Subsequence llb, Subsequence lb, Subsequence ld, int x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    Subsequence outerStem;
    outerStem.seq = llb.seq;
    outerStem.i = llb.i;
    outerStem.j = rrb.j;

    Subsequence innerStem;
    innerStem.seq = lb.seq;
    innerStem.i = lb.i;
    innerStem.j = rb.j;
      
    return x + mlinit + sr_energy(outerStem, outerStem) + termaupenalty(innerStem, innerStem) + dli_energy(innerStem,innerStem) + dri_energy(innerStem,innerStem);
  }

  int addss(int x, Subsequence r) {
    return x + ss_energy(r);
  }

  int mlstem(int x) {
    return x + 40;
  }

  int pkml(int x) {
    return x + pkmlinit;
  }


  int frd(int x, Subsequence ld; int betaRightOuter) {
    Subsequence beta;
    beta.seq = ld.seq;
    beta.i = ld.i+1;
    beta.j = betaRightOuter;
      
    return x + npp + dl_energy(beta, beta);
  }

  int ul(int x) {
    return x;
  }

  int emptymid(Subsequence m; int betaRightInner, int alphaLeftInner) {
    return sr_pk_energy(m[m.i-1], m[betaRightInner], m[m.i], m[alphaLeftInner-1]);
  }

  int midbase(Subsequence m; int betaRightInner, int alphaLeftInner) {
    return sr_pk_energy(m[m.i-1], m[betaRightInner], m[m.i+1], m[alphaLeftInner-1]) + npp;
  }

  int middlro(Subsequence m; int betaRightInner, int alphaLeftInner) {
    Subsequence beta;
    beta.seq = m.seq;
    beta.i = m.i-1;
    beta.j = betaRightInner+1;
      
    Subsequence alpha;
    alpha.seq = m.seq;
    alpha.i = alphaLeftInner-1;
    alpha.j = m.j+1;
      
    return 2*npp + dri_energy(alpha, alpha) + dli_energy(beta, beta);
  }

  int midregion(int x) {
    return x;
  }

  int middl(Subsequence ld, int x; int betaRightInner) {
    Subsequence beta;
    beta.seq = ld.seq;
    beta.i = ld.i-1;
    beta.j = betaRightInner+1;

    return x + npp + dli_energy(beta, beta);
  }

  int middr(int x, Subsequence rd; int alphaLeftInner) {
    Subsequence alpha;
    alpha.seq = rd.seq;
    alpha.i = alphaLeftInner-1;
    alpha.j = rd.j+1;

    return x + npp + dri_energy(alpha, alpha);
  }

  int middlr(Subsequence ld, int x, Subsequence rd; int betaRightInner, int alphaLeftInner) {
    Subsequence beta;
    beta.seq = ld.seq;
    beta.i = ld.i-1;
    beta.j = betaRightInner+1;
      
    Subsequence alpha;
    alpha.seq = rd.seq;
    alpha.i = alphaLeftInner-1;
    alpha.j = rd.j+1;

    return x + 2*npp + dli_energy(beta, beta) + dri_energy(alpha, alpha);
  }

  int bkd(Subsequence rd, int x; int alphaLeftOuter) {
    Subsequence alpha;
    alpha.seq = rd.seq;
    alpha.i = alphaLeftOuter;
    alpha.j = rd.j-1;
    
    return x + npp + dr_energy(alpha, alpha);
  }
 
  int pss(Subsequence r) {
    return npp * size(r);
  }

  choice [int] h([int] i) {
    return list(minimum(i));
  }

  choice [mfeanswer] hKnot([mfeanswer] i) {
    return list(minimum(i));
  }
}

grammar pknotsRG uses Algebra(axiom = struct) {
	
  knot               = pk_u(knot_outer & middle[knot_outer.r,knot_outer.s] .(knot_outer.t, knot_outer.q). ) # hAnd;
  
  knot_outer         = pknot(pkstem_one & pkstem_two;t_0_i,t_0_j,COMPLETE_SEQUENCE) with_overlay compatibility_check # hAnd;

  pkstem_one         = pk_adds (pkstem_one, BASE)     | 
                       { pkinner (pksr_one & front[
                            pksr_one.skipl+pksr_one.size_s1,
                            pksr_one.skipr+pksr_one.size_s2] .(t_0_j). ) # hAnd 
                       } #h;
		       
  pksr_one           = pk_sr   (BASE, pksr_one, BASE) | hairpin_wo_energy #h;

  pkstem_two         = pk_sadd (BASE, pkstem_two)     | 
                       { pkinner( pksr_two & back[
                            pksr_two.skipl+pksr_two.size_s1,
                            pksr_two.skipr+pksr_two.size_s2] .(t_0_i). ) # hAnd 
                       } #h;
		       
  pksr_two           = pk_sr (BASE, pksr_two, BASE) | hairpin_wo_energy #h;
  
  hairpin_wo_energy  = pk_hl (BASE, BASE, {REGION with minsize(3)}, BASE, BASE) # h;
  
  front(int betaRightOuter) = front_Pr               |
                              frd  (front_Pr, BASE; betaRightOuter)
                              # h;
             
  middle(int betaRightInner, int alphaLeftInner)	= emptymid  (REGION0        ; betaRightInner, alphaLeftInner) with minsize(0) with maxsize(0) |
							  midbase   (REGION0        ; betaRightInner, alphaLeftInner) with minsize(1) with maxsize(1) |
							  middlro   (REGION0        ; betaRightInner, alphaLeftInner) with minsize(2) with maxsize(2) |
							  midregion (      mid                                      )                                 |
							  middl     (BASE, mid      ; betaRightInner                )                                 |
							  middr     (      mid, BASE;                 alphaLeftInner)                                 |
							  middlr    (BASE, mid, BASE; betaRightInner, alphaLeftInner) 
							  # h;

  back(int alphaLeftOuter) = back_Pr               |
                             bkd(BASE, back_Pr; alphaLeftOuter) 
                             # h;


//===============
//old  

  struct       = sadd(BASE,      struct) |
                 cadd(dangle_Pr, struct) |
                 nil (EMPTY) 
                 # h;
  
  dangle_Pr    = dangle | 
                 dangleknot
                 # h;
  
  dangle       = is   (LOC,  closed, LOC ) |
                 edl  (BASE, closed, LOC ) |
                 edr  (LOC,  closed, BASE) |
                 edlr (BASE, closed, BASE) 
                 # h;
  
  dangleknot   = pk   (      knot        ) |
                 kndl (BASE, knot        ) |
                 kndr (      knot,   BASE) |
                 kndlr(BASE, knot,   BASE) 
                 # h;
  
  closed       ={stack   | 
                 hairpin |
                 leftB   | 
                 rightB  | 
                 iloop   | 
                 multiloop} with stackpairing 
                 # h;
  
  stack        = sr   (      BASE,                          closed,                                            BASE      ) # h;
  hairpin      = hl   (BASE, BASE,                          {REGION with minsize(3)},                          BASE, BASE) # h;
  leftB        = bl   (BASE, BASE, REGION,                  closed,                                            BASE, BASE) # h;
  rightB       = br   (BASE, BASE,                          closed,                   REGION,                  BASE, BASE) # h;
  iloop        = il   (BASE, BASE, REGION with maxsize(30), closed,                   REGION with maxsize(30), BASE, BASE) # h;
  
  multiloop    ={ml   (BASE, BASE,                          ml_comps1,                                         BASE, BASE) |
                 mldl (BASE, BASE, BASE,                    ml_comps1,                                         BASE, BASE) |
                 mldr (BASE, BASE,                          ml_comps1,                BASE,                    BASE, BASE) |
                 mldlr(BASE, BASE, BASE,                    ml_comps1,                BASE,                    BASE, BASE) } with stackpairing
                 # h;
  
  ml_comps1    = sadd (BASE,             ml_comps1) |
                 cadd (mldangle,         ml_comps)  |
                 addss(pkml(dangleknot), REGION0)
                 # h ;
  
                   
  ml_comps     = sadd (BASE,             ml_comps) |
                 cadd (mldangle,         ml_comps) |
                 addss(mldangle,         REGION0)
                 # h ;
  
  mldangle     = mlstem(dangle)     |
                 pkml  (dangleknot)
                 # h;
  
  
  front_Pr     = ul(emptystrand) |
                 pk_comps
                 # h;
			       
  mid          = ul(singlestrand) |
                 pk_comps
                 # h;
        

             
  back_Pr      = ul(emptystrand) |
                 pk_comps
                 # h;
            
  pk_comps     = cadd(singlestrand, pk_comps)    |
                 cadd(mldangle, pk_comps)        |
                 cadd(mldangle, ul(emptystrand)) 
                 # h;
  
  singlestrand = pss(REGION) # h;
  
  emptystrand  = pss(REGION0) # h ;
}


//~ instance pretty = pknotsRG(pretty) ;
instance mfe = pknotsRG(mfe) ;
//~ instance mfepp = pknotsRG(mfe * pretty);

algebra mfe implements Algebra(alphabet = char, comp = int, compKnot = mfeanswer) {

  int starts(int x) {    return x;  }
  int p1(int x) {    return x;  }
  int p2(int x) {    return x;  }
  int p4(int x) {    return x;  }
  int p5(int x) {    return x;  }
  int p6(int x) {    return x;  }
  int p8(int x) {    return x;  }
  int p9(int x) {    return x;  }
  int p5M(int x) { return x; }
  int p5MM(int x) { return x; }
  int midsl(int x) {return x;}
  int midcl(int x) {return x;}
  
  int noseqcon(int x) {
    return x;
  }
	
  int pkadds(mfeanswer x,int a, Subsequence b) {
    return a+x.energy;
  }
  
  int variant2(Subsequence a, mfeanswer x, Subsequence b) {
    return x.energy;
  }
  
  int sadd(Subsequence b, int x) {
    return x;
  }
  
  int variant1(Subsequence b, int x) {
    return x;
  }
  
 int adds(int x, Subsequence b) {
    return x;
  }
  
  int cadd(int x, int y) {
    return x + y;
  }
  
  int ccadd(int x, int y, int z) {
    return x + y + z;
  }
  
  int cccadd(int x, int y, int z, int a) {
    return x + y + z + a;
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

  mfeanswer pknot(Subsequence a, int front, Subsequence b, int middle, Subsequence aPrime, int back, Subsequence bPrime ; int stackenergies, string_t p3forward, string_t p3backward, string_t p7forward, string_t p7backward, string_t p3class, string_t p7class) {
    mfeanswer res;
	
    Subsequence alphaOuter;
    alphaOuter.seq = a.seq;
    alphaOuter.i = a.i;
    alphaOuter.j = aPrime.j;
    
    Subsequence alphaInner;
    alphaInner.seq = a.seq;
    alphaInner.i = a.j-1;
    alphaInner.j = aPrime.i+1;
    
    Subsequence betaOuter;
    betaOuter.seq = b.seq;
    betaOuter.i = b.i;
    betaOuter.j = bPrime.j;
    
    Subsequence betaInner;
    betaInner.seq = b.seq;
    betaInner.i = b.j-1;
    betaInner.j = bPrime.i+1;
	  
    res.betaLeftOuter = b.i;
    res.alphaRightOuter = aPrime.j;
    
    res.energy =   stackenergies                         // stacking energies
                 + pkinit                                // initiation energy for pk
                 + 3*npp                                 // penalty for 1+2 explicitly unpaired bases
                 + front                                 // energy from front substructure
                 + middle                                // energy from middle substructure
                 + back                                  // energy from back substructure
                 + termaupenalty(alphaOuter, alphaOuter) // AU penalty for outmost BP in alpha helix
                 + termaupenalty(alphaInner, alphaInner) // AU penalty for innermost BP in alpha helix
                 + termaupenalty(betaOuter, betaOuter)   // AU penalty for outmost BP in beta helix
                 + termaupenalty(betaInner, betaInner)   // AU penalty for innermost BP in beta helix
                 + dli_energy(alphaInner, alphaInner)    // explicitly unpaired base, before front, dangles at the inside of helix alpha
		         + dri_energy(betaInner, betaInner);     // explicitly unpaired base, after back, dangles at the inside of helix beta
			 
    
	return res;
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
  
  int ilseqcon(Subsequence llb, Subsequence lb, Subsequence lr, int x, Subsequence rr, Subsequence rb, Subsequence rrb) {
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

  int addss(int x, Subsequence r) {
    return x + ss_energy(r);
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

  int mlstem(int x) {
    return x + 40;
  }

  int pkml(int x) {
    return x + pkmlinit;
  }
  
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


  choice [int] h([int] i) {
    return list(minimum(i));
  }

  choice [mfeanswer] hKnot([mfeanswer] i) {
    return list(minimum(i));
  }
}

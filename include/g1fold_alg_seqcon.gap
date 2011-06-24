algebra seqcon implements Algebra(alphabet = char, comp = myBool, compKnot = myBool) {
  
  myBool noseqcon(myBool x) {
    return 0;
  }
  
  myBool pkadds(myBool x, myBool y, Subsequence b) {
    return x;
  }
  
  myBool variant2(Subsequence a, myBool x, Subsequence b) {
    return x;
  }
  
  myBool variant1(Subsequence b, myBool x) {
    return x;
  }
  
  myBool sadd(Subsequence b, myBool x) {
    return x;
  }
  myBool adds(myBool x, Subsequence b) {
    return x;
  }

  myBool cadd(myBool x, myBool y) {
    if ((x == 1) || (y == 1)) {
		return 1;
	} else {
		return 0;
	}
  }
  
  myBool ccadd(myBool x, myBool y, myBool z) {
    if ((x == 1) || (y == 1) || (z == 1)) {
		return 1;
	} else {
		return 0;
	}
  }
  
  myBool cccadd(myBool x, myBool y, myBool z, myBool a) {
    if ((x == 1) || (y == 1) || (z == 1) || (a == 1)) {
		return 1;
	} else {
		return 0;
	}
  }

  myBool is(Subsequence ld, myBool x, Subsequence rd) {
    return x;
  }

  myBool edl(Subsequence ld, myBool x, Subsequence rd) {
    return x;
  }
 
  myBool edr(Subsequence ld, myBool x, Subsequence rd) {
    return x;
  }

  myBool edlr(Subsequence ld, myBool x, Subsequence rd) {
    return x;
  }

  myBool pk(myBool x) {
    return x;
  }

  myBool pknot(Subsequence a, myBool frt, Subsequence b, myBool mid, Subsequence at, myBool bck, Subsequence bt ; int stackenergies, string_t p3forward, string_t p3backward, string_t p7forward, string_t p7backward) {
    return frt;
  }

  myBool sr(Subsequence lb, myBool x, Subsequence rb) {
    return x;
  }

  myBool hl(Subsequence llb, Subsequence lb, Subsequence r, Subsequence rb, Subsequence rrb) {
    return 0;
  }

  myBool bl(Subsequence llb, Subsequence lb, Subsequence lr, myBool x, Subsequence rb, Subsequence rrb) {
    return x;
  }

  myBool br(Subsequence llb, Subsequence lb, myBool x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    return x;
  }

  myBool il(Subsequence llb, Subsequence lb, Subsequence lr, myBool x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    return x;
  }
  
  myBool ilseqcon(Subsequence llb, Subsequence lb, Subsequence lr, myBool x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    return 1;
  }

  myBool addss(myBool x, Subsequence r) {
    return x;
  }
  
  myBool frd(myBool x, Subsequence ld; int betaRightOuter) {
    return x;
  }

  myBool ul(myBool x) {
    return x;
  }

  myBool emptymid(Subsequence m; int betaRightInner, int alphaLeftInner) {
    return 0;
  }

  myBool midbase(Subsequence m; int betaRightInner, int alphaLeftInner) {
    return 0;
  }

  myBool middlro(Subsequence m; int betaRightInner, int alphaLeftInner) {
    return 0;
  }

  myBool midregion(myBool x) {
    return x;
  }

  myBool middl(Subsequence ld, myBool x;  int betaRightInner) {
    return x;
  }

  myBool middr(myBool x, Subsequence rd;  int alphaLeftInner) {
    return x;
  }

  myBool middlr(Subsequence ld, myBool x, Subsequence rd; int betaRightInner, int alphaLeftInner) {
    return x;
  }

  myBool bkd(Subsequence rd, myBool x; int alphaLeftOuter) {
    return x;
  }
 
  myBool pss(Subsequence r) {
    return 0;
  }
  
  myBool kndl(Subsequence ld, myBool x) {
    return x;
  }

  myBool kndr(myBool x, Subsequence rd) {
    return x;
  }

  myBool kndlr(Subsequence ld, myBool x, Subsequence rd) {
    return x;
  }
  
  myBool ml(Subsequence llb, Subsequence lb, myBool x, Subsequence rb, Subsequence rrb) {
    return x;
  }

  myBool mldl(Subsequence llb, Subsequence lb, Subsequence ld, myBool x, Subsequence rb, Subsequence rrb) {
    return x;
  }

  myBool mldr(Subsequence llb, Subsequence lb, myBool x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    return x;
  }

  myBool mldlr(Subsequence llb, Subsequence lb, Subsequence ld, myBool x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    return x;
  }

  myBool mlstem(myBool x) {
    return x;
  }

  myBool pkml(myBool x) {
    return x;
  }


  choice [myBool] h([myBool] i) {
    return unique(i);
  }

  choice [myBool] hKnot([myBool] i) {
    return unique(i);
  }
}

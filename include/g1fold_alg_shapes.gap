algebra shape5 implements Algebra(alphabet = char, comp = myShape, compKnot = myShape) {

  myShape noseqcon(myShape x) {
    return x;
  }
  
  myShape pkadds(myShape x, myShape y, Subsequence b) {
    myShape res;
    append(res, x);
    append(res, y);
    return res;
  }
  
  myShape variant2(Subsequence a, myShape x, Subsequence b) {
    return x;
  }
  
  myShape variant1(Subsequence b, myShape x) {
    return x;
  }
  
  myShape sadd(Subsequence b, myShape x) {
    return x;
  }

  myShape adds(myShape x, Subsequence b) {
    return x;
  }

  myShape cadd(myShape x, myShape y) {
    myShape res;
    append(res, x);
    append(res, y);
    return res;
  }
  
  myShape ccadd(myShape x, myShape y, myShape z) {
    myShape res;
    append(res, x);
    append(res, y);
    append(res, z);
    return res;
  }
  
  myShape cccadd(myShape x, myShape y, myShape z, myShape a) {
    myShape res;
    append(res, x);
    append(res, y);
    append(res, z);
    append(res, a);
    return res;
  }

  myShape is(Subsequence ld, myShape x, Subsequence rd) {
    return x;
  }

  myShape edl(Subsequence ld, myShape x, Subsequence rd) {
    return x;
  }
 
  myShape edr(Subsequence ld, myShape x, Subsequence rd) {
    return x;
  }

  myShape edlr(Subsequence ld, myShape x, Subsequence rd) {
    return x;
  }

  myShape pk(myShape x) {
    return x;
  }

  myShape pknot(Subsequence a, myShape frt, Subsequence b, myShape mid, Subsequence at, myShape bck, Subsequence bt; int stackenergies, string_t p3forward, string_t p3backward, string_t p7forward, string_t p7backward, string_t p3class) {
    myShape res;
	  
    append(res, '(');
    append(res, frt);
    append(res, '{');
    append(res, mid);
    append(res, ')');
    append(res, bck);
    append(res, '}');
	  
    return res;
  }

  myShape kndl(Subsequence ld, myShape x) {
    return x;
  }

  myShape kndr(myShape x, Subsequence rd) {
    return x;
  }

  myShape kndlr(Subsequence ld, myShape x, Subsequence rd) {
    return x;
  }

  myShape sr(Subsequence lb, myShape x, Subsequence rb) {
    return x;
  }

  myShape hl(Subsequence llb, Subsequence lb, Subsequence r, Subsequence rb, Subsequence rrb) {
    myShape res;
    append(res, "[]", 2);
    return res;
  }

  myShape bl(Subsequence llb, Subsequence lb, Subsequence lr, myShape x, Subsequence rb, Subsequence rrb) {
    return x;
  }

  myShape br(Subsequence llb, Subsequence lb, myShape x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    return x;
  }

  myShape il(Subsequence llb, Subsequence lb, Subsequence lr, myShape x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    return x;
  }
  
  myShape ilseqcon(Subsequence llb, Subsequence lb, Subsequence lr, myShape x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    return x;
  }

  myShape ml(Subsequence llb, Subsequence lb, myShape x, Subsequence rb, Subsequence rrb) {
    myShape res;
    append(res, '[');
    append(res, x);
    append(res, ']');
    return res;
  }

  myShape mldl(Subsequence llb, Subsequence lb, Subsequence ld, myShape x, Subsequence rb, Subsequence rrb) {
    myShape res;
    append(res, '[');
    append(res, x);
    append(res, ']');
    return res;
  }

  myShape mldr(Subsequence llb, Subsequence lb, myShape x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    myShape res;
    append(res, '[');
    append(res, x);
    append(res, ']');
    return res;
  }

  myShape mldlr(Subsequence llb, Subsequence lb, Subsequence ld, myShape x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    myShape res;
    append(res, '[');
    append(res, x);
    append(res, ']');
    return res;
  }

  myShape addss(myShape x, Subsequence r) {
    return x;
  }
  
  myShape mlstem(myShape x) {
    return x;
  }

  myShape pkml(myShape x) {
    return x;
  }

  myShape frd(myShape x, Subsequence ld; int betaRightOuter) {
    return x;
  }

  myShape ul(myShape x) {
    return x;
  }

  myShape emptymid(Subsequence m; int betaRightInner, int alphaLeftInner) {
    myShape res;
    return res;
  }

  myShape midbase(Subsequence m; int betaRightInner, int alphaLeftInner) {
    myShape res;
    return res;
  }

  myShape middlro(Subsequence m; int betaRightInner, int alphaLeftInner) {
    myShape res;
    return res;
  }

  myShape midregion(myShape x) {
    return x;
  }

  myShape middl(Subsequence ld, myShape x;  int betaRightInner) {
    return x;
  }

  myShape middr(myShape x, Subsequence rd;  int alphaLeftInner) {
    return x;
  }

  myShape middlr(Subsequence ld, myShape x, Subsequence rd; int betaRightInner, int alphaLeftInner) {
    return x;
  }

  myShape bkd(Subsequence rd, myShape x; int alphaLeftOuter) {
    return x;
  }
 
  myShape pss(Subsequence r) {
    myShape res;
    return res;
  }

  choice [myShape] h([myShape] i) {
    return unique(i);
  }

  choice [myShape] hKnot([myShape] i) {
    return unique(i);
  }
}


algebra shape4 extends shape5 {
  myShape il(Subsequence llb, Subsequence lb, Subsequence lr, myShape x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    myShape res;
	append(res, '[');
	append(res, x);
	append(res, ']');
	return res;
  }
  myShape ilseqcon(Subsequence llb, Subsequence lb, Subsequence lr, myShape x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    myShape res;
	append(res, '[');
	append(res, x);
	append(res, ']');
	return res;
  }
}

algebra shape3 extends shape5 {
  myShape bl(Subsequence llb, Subsequence lb, Subsequence lr, myShape x, Subsequence rb, Subsequence rrb) {
    myShape res;
	append(res, '[');
	append(res, x);
	append(res, ']');
	return res;
  }
  myShape br(Subsequence llb, Subsequence lb, myShape x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    myShape res;
	append(res, '[');
	append(res, x);
	append(res, ']');
	return res;
  }
  myShape il(Subsequence llb, Subsequence lb, Subsequence lr, myShape x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    myShape res;
	append(res, '[');
	append(res, x);
	append(res, ']');
	return res;
  }
}

algebra shape2 extends shape5 {
  myShape bl(Subsequence llb, Subsequence lb, Subsequence lr, myShape x, Subsequence rb, Subsequence rrb) {
    myShape res;
	append(res, '[');
	append(res, '_');
	append(res, x);
	append(res, ']');
	return res;
  }
  myShape br(Subsequence llb, Subsequence lb, myShape x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    myShape res;
	append(res, '[');
	append(res, x);
	append(res, '_');
	append(res, ']');
	return res;
  }
  myShape il(Subsequence llb, Subsequence lb, Subsequence lr, myShape x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    myShape res;
	append(res, '[');
	append(res, '_');
	append(res, x);
	append(res, '_');
	append(res, ']');
	return res;
  }
}

algebra shape1 extends shape5 {
  myShape variant1(Subsequence b, myShape x) {
    if (front(x) == '_') {
      return x;
    } else {
      myShape res;
      append(res, '_');
      append(res, x);
      return res;
    }
  }
  myShape sadd(Subsequence b, myShape x) {
    if (front(x) == '_') {
      return x;
    } else {
      myShape res;
      append(res, '_');
      append(res, x);
      return res;
    }
  }
  myShape cadd(myShape x, myShape y) {
    myShape res;
    if (back(x) == '_' && front(y) == '_') {
      append(res, x);
      append(res, tail(y));
    } else {
      append(res, x);
      append(res, y);
    }
    return res;
  }
  myShape edl(Subsequence ld, myShape x, Subsequence rd) {
    myShape res;
	append(res, '_');
    append(res, x);
    return res;
  }
  myShape edr(Subsequence ld, myShape x, Subsequence rd) {
    myShape res;
    append(res, x);
    append(res, '_');
    return res;
  }
  myShape edlr(Subsequence ld, myShape x, Subsequence rd) {
    myShape res;
    append(res, '_');
    append(res, x);
    append(res, '_');
    return res;
  }
  myShape pknot(Subsequence a, myShape frt, Subsequence b, myShape mid, Subsequence at, myShape bck, Subsequence bt ; int stackenergies, string_t p3forward, string_t p3backward, string_t p7forward, string_t p7backward) {
    myShape res;
    
    if (front(frt) == '_') {
      append(res, '[');
    } else {
      append(res, '[');
      append(res, '_');
    }
	append(res, frt);
    append(res, '{');
    append(res, mid);
    append(res, ']');
    if (back(bck) == '_') {
      append(res, bck);
    } else {
      append(res, bck);
      append(res, '_');
    }
    append(res, '}');
    
    return res;
  }

  //~ myShape kndl(Subsequence ld, myShape x) {
    //~ myShape res;
    //~ append(res, '_');
    //~ append(res, x);
    //~ return res;
  //~ }
  //~ myShape kndr(myShape x, Subsequence rd) {
    //~ myShape res;
    //~ append(res, x);
    //~ append(res, '_');
    //~ return res;
  //~ }
  //~ myShape kndlr(Subsequence ld, myShape x, Subsequence rd) {
    //~ myShape res;
    //~ append(res, '_');
    //~ append(res, x);
    //~ append(res, '_');
    //~ return res;
  //~ }
  myShape bl(Subsequence llb, Subsequence lb, Subsequence lr, myShape x, Subsequence rb, Subsequence rrb) {
    myShape res;
    append(res, '[');
    append(res, '_');
    append(res, x);
    append(res, ']');
    return res;
  }
  myShape br(Subsequence llb, Subsequence lb, myShape x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    myShape res;
    append(res, '[');
    append(res, x);
    append(res, '_');
    append(res, ']');
    return res;
  }
  myShape il(Subsequence llb, Subsequence lb, Subsequence lr, myShape x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    myShape res;
    append(res, '[');
    append(res, '_');
    append(res, x);
    append(res, '_');
    append(res, ']');
    return res;
  }
  //~ myShape mldl(Subsequence llb, Subsequence lb, Subsequence ld, myShape x, Subsequence rb, Subsequence rrb) {
    //~ myShape res;
    //~ append(res, '[');
    //~ if (front(x) == '_') {
      //~ append(res, '[');
    //~ } else {
      //~ append(res, '[');
      //~ append(res, '_');
    //~ }
    //~ append(res, x);
    //~ append(res, ']');
    //~ return res;
  //~ }
  //~ myShape mldr(Subsequence llb, Subsequence lb, myShape x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    //~ myShape res;
    //~ append(res, '[');
    //~ if (back(x) == '_') {
      //~ append(res, x);
    //~ } else {
      //~ append(res, x);
      //~ append(res, '_');
    //~ }
    //~ append(res, ']');
    //~ return res;
  //~ }
  //~ myShape mldlr(Subsequence llb, Subsequence lb, Subsequence ld, myShape x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    //~ myShape res;
    //~ if (front(x) == '_') {
      //~ append(res, '[');
    //~ } else {
      //~ append(res, '[');
      //~ append(res, '_');
    //~ }
    //~ if (back(x) == '_') {
      //~ append(res, x);
    //~ } else {
      //~ append(res, x);
      //~ append(res, '_');
    //~ }
    //~ append(res, ']');
    //~ return res;
  //~ }

  myShape addss(myShape x, Subsequence r) {
    myShape res;
    if (back(x) == '_') {
      append(res, x);
    } else {
      append(res, x);
      append(res, '_');
    }
    return res;
  }
  myShape frd(myShape x, Subsequence ld; int betaRightOuter) {
    myShape res;
    if (back(x) == '_') {
      append(res, x);
    } else {
      append(res, x);
      append(res, '_');
    }
    return res;
  }
  myShape midbase(Subsequence m; int betaRightInner, int alphaLeftInner) {
    myShape res;
    append(res, '_');
    return res;
  }

  myShape middlro(Subsequence m; int betaRightInner, int alphaLeftInner) {
    myShape res;
    append(res, '_');
  return res;
  }

  myShape midregion(myShape x) {
    return x;
  }

  myShape middl(Subsequence ld, myShape x;  int betaRightInner) {
    myShape res;
    append(res, '_');
    append(res, x);
    return res;
  }

  myShape middr(myShape x, Subsequence rd;  int alphaLeftInner) {
    myShape res;
    append(res, x);
    append(res, '_');
    return res;
  }

  myShape middlr(Subsequence ld, myShape x, Subsequence rd; int betaRightInner, int alphaLeftInner) {
    myShape res;
    append(res, '_');
    append(res, x);
    append(res, '_');
    return res;
  }

  myShape bkd(Subsequence rd, myShape x; int alphaLeftOuter) {
    if (front(x) == '_') {
      return x;
    } else {
      myShape res;
	  append(res, '_');
	  append(res, x);
	  return res;
    }
  }
  myShape pss(Subsequence r) {
    myShape res;
    if (size(r) > 0) {
      append(res, '_');
    }
    return res;
  }
}
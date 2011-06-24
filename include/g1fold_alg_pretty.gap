algebra pretty implements Algebra(alphabet = char, comp = string_t, compKnot = string_t) {  

  string_t starts(string_t x) {    return x;  }
  string_t p1(string_t x) {return x;}
  string_t p2(string_t x) {return x;}
  string_t p4(string_t x) {return x;}
  string_t p5(string_t x) {return x;}
  string_t p6(string_t x) {return x;}
  string_t p8(string_t x) {return x;}
  string_t p9(string_t x) {return x;}
  string_t p5M(string_t x) { return x; }
  string_t p5MM(string_t x) { return x; }
  string_t midsl(string_t x) {return x;}
  string_t midcl(string_t x) {return x;}
  
  string_t noseqcon(string_t x) {
    return x;
  }
  
  string_t pkadds(string_t a,string_t x, Subsequence b) {
    string_t res;
    append(res, a);
    append(res, x);
    append(res, '.', size(b));
    return res;
  }
  
  string_t variant2(Subsequence a, string_t x, Subsequence b) {
    string_t res;
    append(res, '.', size(a));
    append(res,x);
    append(res, '.', size(b));
    return res;
  }
  
  string_t variant1(Subsequence b, string_t x) {
    string_t res;
    append(res, '.', size(b));
    append(res, x);
    return res;
  }  
  
  string_t sadd(Subsequence b, string_t x) {
    string_t res;
    append(res, '.', size(b));
    append(res, x);
    return res;
  }  
  
  string_t adds(string_t x, Subsequence b) {
    string_t res;
    append(res, x);
    append(res, '.', size(b));
    return res;
  }

  string_t cadd(string_t x, string_t y) {
    string_t res;
    append(res, x);
    append(res, y);
    return res;
  }
  
  string_t ccadd(string_t x, string_t y, string_t z) {
    string_t res;
    append(res, x);
    append(res, y);
    append(res, z);
    return res;
  }
  
  string_t cccadd(string_t x, string_t y, string_t z, string_t a) {
    string_t res;
    append(res, x);
    append(res, y);
    append(res, z);
    append(res, a);
    return res;
  }

  string_t is(Subsequence ld, string_t x, Subsequence rd) {
    return x;
  }

  string_t edl(Subsequence ld, string_t x, Subsequence rd) {
    string_t res;
    append(res, '.');
    append(res, x);
    return res;
  }
 
  string_t edr(Subsequence ld, string_t x, Subsequence rd) {
    string_t res;
    append(res, x);
    append(res, '.');
    return res;
  }

  string_t edlr(Subsequence ld, string_t x, Subsequence rd) {
    string_t res;
    append(res, '.');
    append(res, x);
    append(res, '.');
    return res;
  }

  string_t pk(string_t x) {
    return x;
  }

  string_t pknot(Subsequence a, string_t frt, Subsequence b, string_t mid, Subsequence at, string_t bck, Subsequence bt ; int stackenergies, string_t p3forward, string_t p3backward, string_t p7forward, string_t p7backward, string_t p3class, string_t p7class) {
    string_t res;
    
	append(res, p3forward);
    append(res, '.');
    append(res, frt);
    append(res, p7forward);
    append(res, mid);
    append(res, p3backward);
    append(res, bck);
    append(res, '.', 2);
    append(res, p7backward);
	  
    return res;
  }

  string_t sr(Subsequence lb, string_t x, Subsequence rb) {
    string_t res;
    append(res, '(');
    append(res, x);
    append(res, ')');
    return res;
  }

  string_t hl(Subsequence llb, Subsequence lb, Subsequence r, Subsequence rb, Subsequence rrb) {
    string_t res;
    append(res, "((", 2);
    append(res, '.', size(r));
    append(res, "))", 2);
    return res;
  }

  string_t bl(Subsequence llb, Subsequence lb, Subsequence lr, string_t x, Subsequence rb, Subsequence rrb) {
    string_t res;
    append(res, "((", 2);
    append(res, '.', size(lr));
    append(res, x);
    append(res, "))", 2);
    return res;
  }

  string_t br(Subsequence llb, Subsequence lb, string_t x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    string_t res;
    append(res, "((", 2);
    append(res, x);
    append(res, '.', size(rr));
    append(res, "))", 2);
    return res;
  }
  
  string_t il(Subsequence llb, Subsequence lb, Subsequence lr, string_t x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    string_t res;
    append(res, "((", 2);
    append(res, '.', size(lr));
    append(res, x);
    append(res, '.', size(rr));
    append(res, "))", 2);
    return res;
  }
  
  string_t ilseqcon(Subsequence llb, Subsequence lb, Subsequence lr, string_t x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    string_t res;
    append(res, "((", 2);
    append(res, '.', size(lr));
    append(res, x);
    append(res, '.', size(rr));
    append(res, "))", 2);
    return res;
  }

  string_t addss(string_t x, Subsequence r) {
    string_t res;
    append(res, x);
    append(res, '.', size(r));
    return res;
  }
  
  string_t frd(string_t x, Subsequence ld; int betaRightOuter) {
    string_t res;
    append(res, x);
    append(res, '.');
    return res;
  }

  string_t ul(string_t x) {
    return x;
  }

  string_t emptymid(Subsequence m; int betaRightInner, int alphaLeftInner) {
    string_t res;
    return res;
  }

  string_t midbase(Subsequence m; int betaRightInner, int alphaLeftInner) {
    string_t res;
    append(res, '.');
    return res;
  }

  string_t middlro(Subsequence m; int betaRightInner, int alphaLeftInner) {
    string_t res;
    append(res, "..", 2);
    return res;
  }

  string_t midregion(string_t x) {
    return x;
  }

  string_t middl(Subsequence ld, string_t x;  int betaRightInner) {
    string_t res;
    append(res, '.');
    append(res, x);
    return res;
  }

  string_t middr(string_t x, Subsequence rd;  int alphaLeftInner) {
    string_t res;
    append(res, x);
    append(res, '.');
    return res;
  }

  string_t middlr(Subsequence ld, string_t x, Subsequence rd; int betaRightInner, int alphaLeftInner) {
    string_t res;
    append(res, '.');
    append(res, x);
    append(res, '.');
    return res;
  }

  string_t bkd(Subsequence rd, string_t x; int alphaLeftOuter) {
    string_t res;
    append(res, '.');
    append(res, x);
    return res;
  }
 
  string_t pss(Subsequence r) {
    string_t res;
    append(res, '.', size(r));
    return res;
  }
  
  string_t ml(Subsequence llb, Subsequence lb, string_t x, Subsequence rb, Subsequence rrb) {
    string_t res;
    append(res, "((", 2);
    append(res, x);
    append(res, "))", 2);
    return res;
  }

  string_t mldl(Subsequence llb, Subsequence lb, Subsequence ld, string_t x, Subsequence rb, Subsequence rrb) {
    string_t res;
    append(res, "((", 2);
    append(res, '.');
    append(res, x);
    append(res, "))", 2);
    return res;
  }

  string_t mldr(Subsequence llb, Subsequence lb, string_t x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    string_t res;
    append(res, "((", 2);
    append(res, x);
    append(res, '.');
    append(res, "))", 2);
    return res;
  }

  string_t mldlr(Subsequence llb, Subsequence lb, Subsequence ld, string_t x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    string_t res;
    append(res, "((", 2);
    append(res, '.');
    append(res, x);
    append(res, '.');
    append(res, "))", 2);
    return res;
  }

  string_t mlstem(string_t x) {
    return x;
  }

  string_t pkml(string_t x) {
    return x;
  }
  
  string_t kndl(Subsequence ld, string_t x) {
    string_t res;
    append(res, '.');
    append(res, x);
    return res;
  }

  string_t kndr(string_t x, Subsequence rd) {
    string_t res;
    append(res, x);
    append(res, '.');
    return res;
  }

  string_t kndlr(Subsequence ld, string_t x, Subsequence rd) {
    string_t res;
    append(res, '.');
    append(res, x);
    append(res, '.');
    return res;
  }

  choice [string_t] h([string_t] i) {
    return unique(i);
  }

  choice [string_t] hKnot([string_t] i) {
    return unique(i);
  }
}

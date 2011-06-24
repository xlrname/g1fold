algebra enforce implements Algebra(alphabet = char, comp = string_t, compKnot = string_t) {
  
  string_t noseqcon(string_t x) {
    return x;
  }
  
  string_t pkadds(string_t x, string_t y, Subsequence b) {
    return x;
  }
  
  string_t variant2(Subsequence a, string_t x, Subsequence b) {
    return "double_pk";
  }
  
  string_t variant1(Subsequence b, string_t x) {
    return "single_pk";
  }
  
  string_t sadd(Subsequence b, string_t x) {
    return x;
  }
  string_t adds(string_t x, Subsequence b) {
    return x;
  }

  string_t cadd(string_t x, string_t y) {
    return y;
  }
  string_t ccadd(string_t a,string_t x, string_t y) {
    return y;
  }
  string_t cccadd(string_t a,string_t b,string_t x, string_t y) {
    return y;
  }

  string_t is(Subsequence ld, string_t x, Subsequence rd) {
    return x;
  }

  string_t edl(Subsequence ld, string_t x, Subsequence rd) {
    return x;
  }
 
  string_t edr(Subsequence ld, string_t x, Subsequence rd) {
    return x;
  }

  string_t edlr(Subsequence ld, string_t x, Subsequence rd) {
    return x;
  }

  string_t pk(string_t x) {
    return x;
  }

  string_t pknot(Subsequence a, string_t frt, Subsequence b, string_t mid, Subsequence at, string_t bck, Subsequence bt ; int stackenergies, string_t p3forward, string_t p3backward, string_t p7forward, string_t p7backward) {
    return "";
  }

  string_t sr(Subsequence lb, string_t x, Subsequence rb) {
    return x;
  }

  string_t hl(Subsequence llb, Subsequence lb, Subsequence r, Subsequence rb, Subsequence rrb) {
    return "";
  }

  string_t bl(Subsequence llb, Subsequence lb, Subsequence lr, string_t x, Subsequence rb, Subsequence rrb) {
    return x;
  }

  string_t br(Subsequence llb, Subsequence lb, string_t x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    return x;
  }

  string_t il(Subsequence llb, Subsequence lb, Subsequence lr, string_t x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    return x;
  }

  string_t ilseqcon(Subsequence llb, Subsequence lb, Subsequence lr, string_t x, Subsequence rr, Subsequence rb, Subsequence rrb) {
    return x;
  }

  string_t addss(string_t x, Subsequence r) {
    return x;
  }
  
  string_t frd(string_t x, Subsequence ld; int betaRightOuter) {
    return x;
  }

  string_t ul(string_t x) {
    return x;
  }

  string_t emptymid(Subsequence m; int betaRightInner, int alphaLeftInner) {
    return "";
  }

  string_t midbase(Subsequence m; int betaRightInner, int alphaLeftInner) {
    return "";
  }

  string_t middlro(Subsequence m; int betaRightInner, int alphaLeftInner) {
    return "";
  }

  string_t midregion(string_t x) {
    return x;
  }

  string_t middl(Subsequence ld, string_t x;  int betaRightInner) {
    return x;
  }

  string_t middr(string_t x, Subsequence rd;  int alphaLeftInner) {
    return x;
  }

  string_t middlr(Subsequence ld, string_t x, Subsequence rd; int betaRightInner, int alphaLeftInner) {
    return x;
  }

  string_t bkd(Subsequence rd, string_t x; int alphaLeftOuter) {
    return x;
  }
 
  string_t pss(Subsequence r) {
    return "";
  }
  
  string_t kndl(Subsequence ld, string_t x) {
    return x;
  }

  string_t kndr(string_t x, Subsequence rd) {
    return x;
  }

  string_t kndlr(Subsequence ld, string_t x, Subsequence rd) {
    return x;
  }
  
  string_t ml(Subsequence llb, Subsequence lb, string_t x, Subsequence rb, Subsequence rrb) {
    return x;
  }

  string_t mldl(Subsequence llb, Subsequence lb, Subsequence ld, string_t x, Subsequence rb, Subsequence rrb) {
    return x;
  }

  string_t mldr(Subsequence llb, Subsequence lb, string_t x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    return x;
  }

  string_t mldlr(Subsequence llb, Subsequence lb, Subsequence ld, string_t x, Subsequence rd, Subsequence rb, Subsequence rrb) {
    return x;
  }

  string_t mlstem(string_t x) {
    return x;
  }

  string_t pkml(string_t x) {
    return x;
  }


  choice [string_t] h([string_t] i) {
    return unique(i);
  }

  choice [string_t] hKnot([string_t] i) {
    return unique(i);
  }
}
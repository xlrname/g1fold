p1R	= closed;

p2R	= closed;

p5R	= closedM;

p6R	= closed;

p8R	= closed;

p9R	= closedM;


p1intR		  = cadd(p1R,p2intR) # h;

p2intR		  = sadd(REGION,p2intR) | 
	          cadd(p2R,p3p9R) # h;

//P3 - P9
p3p9R		  = pkadds(p3p7R,p9R,REGION0) # h;
p3p7R		  = help_pknot_innerR # hKnot;

//P4 - P6
region_uR	= sadd(REGION0,p4p6R) #h;
p4p6R		  = cadd (p4dangleR,p6dangleR) # h;

p4dangleR 	= adds (p4dangle_R,REGION0) # h;
p4dangle_R	= is   (LOC,  p4R, LOC ) |
            edl  (BASE, p4R, LOC ) |
            edr  (LOC,  p4R, BASE) |
            edlr (BASE, p4R, BASE) 
            # h;
	  
//P4
p4R		    = sr (BASE, p4R, BASE) | 
	          bl (BASE, BASE, REGION, p4R, BASE, BASE) | 
	          br (BASE, BASE, p4R, REGION, BASE, BASE) | 
	          p4tandemR # h;
p4tandemR	= ilseqcon (BASE, BASE, REGION, p5R, REGION, BASE, BASE) with_overlay tandem_as_simple #h;
	  
//P6
p6dangleR  = adds (p6dangle_R, REGION0) # h; 
p6dangle_R = is   (LOC,  p6R, LOC ) |
            edl  (BASE, p6R, LOC ) |
            edr  (LOC,  p6R, BASE) |
            edlr (BASE, p6R, BASE) 
            # h;
	  
region_wR	= sadd(REGION0, p8dangleR) # h;

p8dangleR  = adds (p8dangle_R, REGION0) # h; 
p8dangle_R = is   (LOC,  p8R, LOC ) |
            edl  (BASE, p8R, LOC ) |
            edr  (LOC,  p8R, BASE) |
            edlr (BASE, p8R, BASE) 
            # h;


//~ inner pseudoknot from P3-P7  
//  |((|<----->|{{|<--->|))|<------->|}}|
//  i  q   u   j  r  v  s  k    w    t  l
//  |>>>>>>>>>>>>>>>>>>>>>>|               outer loop
//             |<<<<<<<<<<<<<<<<<<<<<<<<|  inner loop
//  i := t_0_i
//  l := t_0_j
//  ==> n^4 runtime
//  ==> 2*n^2 space for hashing
// 
//  Assumptions to reduce runtime
//  1.1) q-i > 5, k-s > 5 --> min size for i -> k > 10
//  1.2) u contains p4,p5&p6 => u > 50
//  1.1&1.2 => i - k > 60
//
//  2.1) r-j > 5, l-t > 5 --> min size for j -> l > 10
//  2.2) w > 10
//  2.1&2.2 => j-l > 20
help_pknot_innerR =
.[
int i = t_0_i;
if (t_0_i+80+3 < t_0_j) {
  for (int ka = t_0_i+60; ka < t_0_j-3; ka = ka+1) {
		triple3 p3 = p3_energy(t_0_seq,t_0_i,ka);
		if (is_empty(p3) || p3.mfe > 0) continue;
	  int q = i + p3.iq;
		int s = q + p3.qs;
	  int k = s + p3.sk;
	  if (q+50 > s) continue;
		for (int ja = q+50/*(1.2)*/; ja < s; ja = ja+1) {
			triple7 p7 = p7_energy(t_0_seq,ja,t_0_j);
			if (is_empty(p7) || p7.mfe > 0) continue;
			int j = ja;
			int r = j + p7.jr;
			int t = r + p7.rt;
			if (t-k < 10) continue;
			int l = t + p7.tl;
			if (q < j 
			 && j < r 
			 && r <= s 
			 && s < k 
			 && k < t 
			 && t < l) {
				//printf("t_0_i:%d q:%d j:%d r:%d s:%d k:%d t:%d l:%d t_0_j:%d,p3.mfe:%d\tp7.mfe:%d\n",t_0_i,q,j,r,s,k,t,l,t_0_j,p3.mfe,p7.mfe);
				 string_t p3forward = p3.forward;
				 string_t p3backward = p3.backward;
				 string_t p7forward = p7.forward;
				 string_t p7backward = p7.backward;
				 INNER(CODE);
			}     
		}
  }
}
].
{
pknot(REGION, REGION, REGION) .{
  pknot(REGION[i, q],
  frontInnerR[q+1, j] .(l).,
  REGION[j, r],
  middleR[r, s] .(t, q).,
  REGION[s, k],
  backInnerR[k, t-2] .(i).,
  REGION[t, l] ;
  p3.mfe + p7.mfe, p3forward, p3backward, p7forward, p7backward) 
  }.
} # hKnot;   


frontInnerR(int betaRightOuter) = frontInner_PrR             |
			                           frd (frontInner_PrR, BASE; betaRightOuter)
                                 # h;
			   
frontInner_PrR     		         = region_uR # h;

backInnerR(int alphaLeftOuter)  = backInner_PrR              |
                                 bkd(BASE, backInner_PrR; alphaLeftOuter) 
			                           # h;
     
backInner_PrR      		         = region_wR # h;

     
middleR(int betaRightInner, int alphaLeftInner) = emptymid  (REGION0        ; betaRightInner, alphaLeftInner) with minsize(0) with maxsize(0) |
                                                  midbase   (REGION0        ; betaRightInner, alphaLeftInner) with minsize(1) with maxsize(1) |
                                                  middlro   (REGION0        ; betaRightInner, alphaLeftInner) with minsize(2) with maxsize(2) |
                                                  midregion (      midR                                      )                                 |
                                                  middl     (BASE, midR      ; betaRightInner                )                                 |
                                                  middr     (      midR, BASE;                 alphaLeftInner)                                 |
                                                  middlr    (BASE, midR, BASE; betaRightInner, alphaLeftInner) 
                                                  # h;

midR  = ul(singlestrand) # h;

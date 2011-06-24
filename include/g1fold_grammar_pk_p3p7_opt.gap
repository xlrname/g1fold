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
help_pknot_inner =
.[
int i = t_0_i;
if (t_0_i+80+3 < t_0_j) {
  for (int ka = t_0_i+60; ka < t_0_j-3; ka = ka+1) {
		triple3 p3 = p3_energy_opt(t_0_seq,t_0_i,ka);
		if (is_empty(p3) || p3.mfe > 0) continue;
		int q = i + p3.iq;
		int s = q + p3.qs;
		int k = s + p3.sk;
		if (q+50 > s) continue;
		if (s > t_0_j) continue;
		for (int ja = q+50/*(1.2)*/; ja < s; ja = ja+1) {
			triple7 p7 = p7_energy_opt(t_0_seq,ja,t_0_j);
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
//				   printf("t_0_i:%d q:%d j:%d r:%d s:%d k:%d t:%d l:%d t_0_j:%d,p3.mfe:%d\tp7.mfe:%d\n",t_0_i,q,j,r,s,k,t,l,t_0_j,p3.mfe,p7.mfe);
				   string_t p3forward = p3.forward;
				   string_t p3backward = p3.backward;
				   string_t p7forward = p7.forward;
				   string_t p7backward = p7.backward;
				   string_t empty;
				   INNER(CODE);
			}
		}
  }
}
].
{
pknot(REGION, REGION, REGION) .{
  pknot(REGION[i, q],
  frontInner[q+1, j] .(l).,
  REGION[j, r],
  middle[r, s] .(t, q).,
  REGION[s, k],
  backInner[k, t-2] .(i).,
  REGION[t, l] ;
  p3.mfe + p7.mfe, p3forward, p3backward, p7forward, p7backward, empty, empty) 
  }.
} # hKnot;   


frontInner(int betaRightOuter) = frontInner_Pr               |
			                           frd (frontInner_Pr, BASE; betaRightOuter)
                                 # h;
			   
frontInner_Pr     		         = region_u # h;

backInner(int alphaLeftOuter)  = backInner_Pr               |
                                 bkd(BASE, backInner_Pr; alphaLeftOuter) 
			                           # h;
     
backInner_Pr      		         = region_w # h;

     
middle(int betaRightInner, int alphaLeftInner) =  emptymid  (REGION0        ; betaRightInner, alphaLeftInner) with minsize(0) with maxsize(0) |
                                                  midbase   (REGION0        ; betaRightInner, alphaLeftInner) with minsize(1) with maxsize(1) |
                                                  middlro   (REGION0        ; betaRightInner, alphaLeftInner) with minsize(2) with maxsize(2) |
                                                  midregion (      mid                                      )                                 |
                                                  middl     (BASE, mid      ; betaRightInner                )                                 |
                                                  middr     (      mid, BASE;                 alphaLeftInner)                                 |
                                                  middlr    (BASE, mid, BASE; betaRightInner, alphaLeftInner) 
                                                  # h;

mid  = midcl(closedM) | midsl(ul(singlestrand)) # h;

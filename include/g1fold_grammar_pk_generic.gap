//computes outerPK for stems P1,P10, given just left and right borders of the subword, namely i and j
help_pknot_free_kl =
  .[
    int i = t_0_i;
    int j = t_0_j;
    if (i+11 <= j) {
      for (int k = i+7; k <= j-4; k=k+1) {
        int alphamaxlen = second(stacklen(t_0_seq, i, k));
        if (alphamaxlen < 2) {
          continue;
        }
        for (int l = i+3; l <= k-4; l=l+1) {
          int p3flen = min(alphamaxlen, l-i-1);
          if (p3flen < 5) {
            continue;
          }
          int betamaxlen = second(stacklen(t_0_seq, l, j));
          if (betamaxlen < 2) {
            continue;
          }
          int betatemplen = min(betamaxlen, j-k-2);
          if (betatemplen < 2) {
            continue;
          }
          int betareallen = min(betatemplen, k-l-p3flen);
          if (betareallen < 5) {
            continue;
          }
          int stackenergies = 
                first(stacklen(t_0_seq, i, k))  // maximal alpha helix
              + first(stacklen(t_0_seq, l, j))  // maximal beta helix
              - first(stacklen(t_0_seq, i+p3flen-1, k-p3flen+1))  // reduced part of alpha helix
              - first(stacklen(t_0_seq, l+betareallen -1, j-betareallen +1)); // reduced part of beta helix
          INNER(CODE);
        }
      }
    }
   ].
  {
    pknot(REGION, REGION, REGION) .{
      pknot(REGION[i, i+p3flen],
      front[i+p3flen+1, l] .(j).,
      REGION[l, l+betareallen],
      middle[l+betareallen, k-p3flen] .(j-betareallen, i+p3flen).,
      REGION[k-p3flen, k],
      back[k, j-betareallen-2] .(i).,
      REGION[j-betareallen, j] ;
      stackenergies) 
    }.
  } # hKnot;    
    
front(int betaRightOuter) = front_Pr               |
                            frd  (front_Pr, BASE; betaRightOuter)
                            # h;
          
front_Pr                  = ul(emptystrand) |
	                          ul(dangle) |
                        	  cadd(hairpin, dangle) 
                            # h;

back(int alphaLeftOuter)  = back_Pr               |
                            bkd(BASE, back_Pr; alphaLeftOuter) 
                            # h;
             
back_Pr                   = comps_w # h;
  

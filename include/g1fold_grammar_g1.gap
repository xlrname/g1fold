start		  = starts(start_);
start_	  = sadd(REGION0,p1int) # h;

p1int		  = cadd(p1(p1),p2int) # h;

p2int		  = sadd(REGION,p2int) | 
	          cadd(p2(p2),p3p9) # h;

//P3 - P9
p3p9		  = pkadds(p3p7,p9(p9),REGION0) # h;
p3p7		  = help_pknot_inner # hKnot;

//P4 - P6
region_u	= sadd(REGION0,p4p6) #h;
p4p6		  = cadd (p4dangle,p6dangle) # h;

p4dangle 	= adds (p4dangle_,REGION0) # h;
p4dangle_	= is   (LOC,  p4(p4), LOC ) |
            edl  (BASE, p4(p4), LOC ) |
            edr  (LOC,  p4(p4), BASE) |
            edlr (BASE, p4(p4), BASE) 
            # h;
	  
//P4
p4		    = sr (BASE, p4, BASE) | 
	          bl (BASE, BASE, REGION, p4, BASE, BASE) | 
	          br (BASE, BASE, p4, REGION, BASE, BASE) | 
	          p4tandem # h;
p4tandem	= ilseqcon (BASE, BASE, REGION, p5(p5), REGION, BASE, BASE) with_overlay tandem_as_simple #h;
	  
//P6
p6dangle  = adds (p6dangle_, REGION0) # h; 
p6dangle_ = is   (LOC,  p6(p6), LOC ) |
            edl  (BASE, p6(p6), LOC ) |
            edr  (LOC,  p6(p6), BASE) |
            edlr (BASE, p6(p6), BASE) 
            # h;
	  
region_w	= sadd(REGION0, p8dangle) # h;

p8dangle  = adds (p8dangle_, REGION0) # h; 
p8dangle_ = is   (LOC,  p8(p8), LOC ) |
            edl  (BASE, p8(p8), LOC ) |
            edr  (LOC,  p8(p8), BASE) |
            edlr (BASE, p8(p8), BASE) 
            # h;

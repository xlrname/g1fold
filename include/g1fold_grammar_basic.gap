dangle	  = is   (LOC,  closed, LOC ) |
            edl  (BASE, closed, LOC ) |
            edr  (LOC,  closed, BASE) |
            edlr (BASE, closed, BASE) 
            # h;


closed	  = { stack   | 
              hairpin |
              leftB   | 
              rightB  | 
              iloop } with stackpairing 
              # h;
	 
closedM	  = { stackM   | 
              leftBM   | 
              rightBM  | 
              iloopM |
	            multiloop} with stackpairing 
              # h;
            
closedMM	= { stackMM   | 
              leftBMM   | 
              rightBMM  | 
              iloopMM |
	            multiloopM } with stackpairing 
              # h;

stack		  = sr   (      BASE,                          closed,                                            BASE      ) # h;
hairpin	  = hl   (BASE, BASE,                          {REGION with minsize(3)},                          BASE, BASE) # h;
leftB		  = bl   (BASE, BASE, REGION,                  closed,                                            BASE, BASE) # h;
rightB	  = br   (BASE, BASE,                          closed,                   REGION,                  BASE, BASE) # h;
iloop		  = il   (BASE, BASE, REGION with maxsize(30), closed,                   REGION with maxsize(30), BASE, BASE) # h;

stackM	  = sr   (      BASE,                          closedM,                                            BASE      ) # h;
leftBM	  = bl   (BASE, BASE, REGION,                  closedM,                                            BASE, BASE) # h;
rightBM	  = br   (BASE, BASE,                          closedM,                   REGION,                  BASE, BASE) # h;
iloopM	  = il   (BASE, BASE, REGION with maxsize(30), closedM,                   REGION with maxsize(30), BASE, BASE) # h;

stackMM	  = sr   (      BASE,                          closedMM,                                            BASE      ) # h;
leftBMM	  = bl   (BASE, BASE, REGION,                  closedMM,                                            BASE, BASE) # h;
rightBMM	= br   (BASE, BASE,                          closedMM,                   REGION,                  BASE, BASE) # h;
iloopMM	  = il   (BASE, BASE, REGION with maxsize(30), closedMM,                   REGION with maxsize(30), BASE, BASE) # h;

multiloop = { ml   (BASE, BASE,                          ml_comps1,                                         BASE, BASE) |
              mldl (BASE, BASE, BASE,                    ml_comps1,                                         BASE, BASE) |
              mldr (BASE, BASE,                          ml_comps1,                BASE,                    BASE, BASE) |
              mldlr(BASE, BASE, BASE,                    ml_comps1,                BASE,                    BASE, BASE) } with stackpairing
              # h;

ml_comps1 = sadd (BASE,             ml_comps1) |
            cadd (mldangle,         ml_comps)
            # h ;
                 
ml_comps  = sadd (BASE,             ml_comps) |
            cadd (mldangle,         ml_comps) |
            addss(mldangle,         REGION0)
            # h ;

mldangle  = mlstem(dangle);
                
multiloopM= { ml   (BASE, BASE,                          ml_comps1M,                                         BASE, BASE) |
              mldl (BASE, BASE, BASE,                    ml_comps1M,                                         BASE, BASE) |
              mldr (BASE, BASE,                          ml_comps1M,                BASE,                    BASE, BASE) |
              mldlr(BASE, BASE, BASE,                    ml_comps1M,                BASE,                    BASE, BASE) } with stackpairing
              # h;

ml_comps1M= sadd (BASE,             ml_comps1M) |
            cadd (mldangleM,         ml_compsM)
            # h ;
                 
ml_compsM = sadd (BASE,             ml_compsM) |
            cadd (mldangleM,         ml_compsM) |
            addss(mldangleM,         REGION0)
            # h ;

mldangleM = mlstem(dangleM)
                # h;
                
dangleM	  = is   (LOC,  closedM, LOC ) |
            edl  (BASE, closedM, LOC ) |
            edr  (LOC,  closedM, BASE) |
            edlr (BASE, closedM, BASE) 
            # h;

	  
singlestrand = pss(REGION) # h;

emptystrand  = pss(REGION0) # h ;  

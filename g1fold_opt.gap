import rna
import p3energy_opt
import p7energy_opt
import pkenergy
import seqcon

input rna

type shape_t = shape
type Rope = extern
type mfeanswer = (int energy, int betaLeftOuter, int alphaRightOuter)
type string_t = Rope
type myShape = extern
type myBool = int
type triple3 = extern
type triple7 = extern

include "g1fold_signatur.gap"

include "g1fold_alg_mfe.gap"
include "g1fold_alg_pretty.gap"
include "g1fold_alg_symbolic.gap"
include "g1fold_alg_class.gap"

grammar g1fold uses Algebra(axiom = start) {
  include "g1fold_grammar_basic.gap"
  include "g1fold_grammar_g1.gap"
  include "g1fold_grammar_pk_p3p7_opt.gap"

  p1	= closed #h;
  
  p2	= closed #h;
  
  p5	= p5M(closedM) | p5MM(closedMM) #h;
  
  p6	= closed #h;

  p8	= closed #h;
//       | p8RE # h;
//include "g1fold_grammar_g1_recursive.gap"
//  p8RE	= sr (BASE,p8RE,BASE) | br (BASE, BASE, p8RE, BASE, BASE, BASE) | bl (BASE, BASE, BASE, p8RE, BASE, BASE) | il (BASE, BASE, REGION, p8RE, REGION, BASE, BASE) |
//     	  sadd(REGION0,p1intR) # h;

  p9	= closedM #h;

}

include "g1fold_instances.gap"

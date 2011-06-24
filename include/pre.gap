import rna
import p3energy
import p7energy
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
type p3hash_h = extern
type p3iterator = extern
type p7hash_h = extern
type p7iterator = extern

include "g1fold_signatur.gap"

include "g1fold_alg_mfe.gap"
include "g1fold_alg_pretty.gap"
include "g1fold_alg_symbolic.gap"
include "g1fold_alg_class.gap"
//include "g1fold_alg_shapes.gap"
//include "g1fold_alg_seqcon.gap"
//include "g1fold_alg_enforce.gap"

grammar g1fold uses Algebra(axiom = start) {
  include "g1fold_grammar_basic.gap"
  include "g1fold_grammar_g1.gap"
  //include "g1fold_grammar_pk_generic.gap"
  include "g1fold_grammar_pk_p3p7.gap"

#ifndef p3ENERGY_HH
#define p3ENERGY_HH

#include <rtlib/rna.hh>

#define NO_GAPC_TYPEDEFS
#include "p3.hh"
#undef NO_GAPC_TYPEDEFS

#ifndef convertback
#define convertback
template <typename C>
inline char* convert_back(const Basic_Sequence<C> &seq) {
  int seqLen = seq.size();
  char *acguSeq = new char[seqLen+1]();
  for (int i = 0; i < seqLen; i++) {
   switch(seq[i]) {
    case A_BASE :
      acguSeq[i] = 'A';
      break;
        case U_BASE :
      acguSeq[i] = 'U';
      break;
        case G_BASE :
      acguSeq[i] = 'G';
      break;
        case C_BASE :
      acguSeq[i] = 'C';
      break;
    }
  }
  return acguSeq;
}
#endif
template <typename C, typename U>
inline
triple3 p3_energy_opt(const Basic_Sequence<C> &seq, U a, U b)
{
    static bool init = true;
    static p3 obj;
    if (init) {
	    init = false;
      gapc::Opts opts;
      Copier<char> c;
	    char *acguSeq = convert_back(seq);
	    opts.inputs.push_back(c.copy(acguSeq, seq.size()));
	    obj.init(opts);
	    obj.run();
    }
    return obj.start_table.get(a,b);
}

template <typename C>
inline
triple3 p3_energy_opt(const Basic_Sequence<C> &seq, int a, int b)
{
  return p3_energy_opt(seq, unsigned(a), unsigned(b));
}

#endif

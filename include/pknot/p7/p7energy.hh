#ifndef P7ENERGY_HH
#define P7ENERGY_HH


#include <rtlib/table.hh>
#include <rtlib/rna.hh>

#define NO_GAPC_TYPEDEFS
#include "p7.hh"
#undef NO_GAPC_TYPEDEFS

typedef Hash::Set<std::pair<rope::Ref<rope::Ref_Count>, triple7>, insp_p7hash_h, unsigned int, Hash::Multhash, Hash::Size2pow, Hash::EnableShrink, Hash::NoStats, 75u>::iterator p7iterator;

inline
p7iterator beginp7(p7hash_h &h) {
    return h.ref().begin();
}

inline
p7iterator endp7(p7hash_h &h) {
    return h.ref().end();
}

inline
triple7 p7triple7(p7iterator &p7) {
    return (*p7).second;
}

inline
Rope p7class(p7iterator &p7) {
    return (*p7).first;
}
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
p7hash_h p7_energy(const Basic_Sequence<C> &seq, U a, U b)
{
    static bool init = true;
    static p7 obj;
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
p7hash_h p7_energy(const Basic_Sequence<C> &seq, int a, int b)
{
  return p7_energy(seq, unsigned(a), unsigned(b));
}

#endif

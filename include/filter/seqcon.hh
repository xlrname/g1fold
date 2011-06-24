#ifndef SEQCON_FILTER_HH
#define SEQCON_FILTER_HH

#include "string.hh"
#include "sequence.hh"

template<typename alphabet, typename pos_type, typename T>
inline bool p3ilwpcg(const Basic_Sequence<alphabet, pos_type> &seq,
	T b1a, T b1b, 
	T b2a, T b2b, 
	T r1a, T r1b, 
	T x1, T x2, 
	T r2a, T r2b, 
	T b3a, T b3b, 
	T b4a, T b4b)
{

  if (b1b<=b1a||b2b<=b2a||r1b<=r1a||x2<=x1||r2b<=r2a||b3b<=b3a||b4b<=b4a)
    return false;  
  //a c e x f d b
  char c = seq[b2a];
  char d = seq[b3a];

  switch (c) {
    case A_BASE :
      return false;
    case U_BASE :
      return false;
    case G_BASE :
      switch (d) {
        case C_BASE : return !p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
      }
      break;
    case C_BASE :
      switch (d) {
        case G_BASE : return !p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
      }
      break;
  }
  return false;
}

template<typename alphabet, typename pos_type, typename T>
inline bool p3ilupcg(const Basic_Sequence<alphabet, pos_type> &seq,
	T b1a, T b1b, 
	T b2a, T b2b, 
	T r1a, T r1b, 
	T x1, T x2, 
	T r2a, T r2b, 
	T b3a, T b3b, 
	T b4a, T b4b)
{

  if (b1b<=b1a||b2b<=b2a||r1b<=r1a||x2<=x1||r2b<=r2a||b3b<=b3a||b4b<=b4a)
    return false;  
  //a c e x f d b
  char c = seq[b2a];
  char d = seq[b3a];

  switch (c) {
    case A_BASE :
      return false;
    case U_BASE :
      return false;
    case G_BASE :
      switch (d) {
        case C_BASE : return p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
      }
      break;
    case C_BASE :
      switch (d) {
        case G_BASE : return p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
      }
      break;
  }
  return false;
}


template<typename alphabet, typename pos_type, typename T>
inline bool p3ilwp(const Basic_Sequence<alphabet, pos_type> &seq,
	T b1a, T b1b, 
	T b2a, T b2b, 
	T r1a, T r1b, 
	T x1, T x2, 
	T r2a, T r2b, 
	T b3a, T b3b, 
	T b4a, T b4b)
{

  if (b1b<=b1a||b2b<=b2a||r1b<=r1a||x2<=x1||r2b<=r2a||b3b<=b3a||b4b<=b4a)
    return false;  
  //a c e x f d b
  char c = seq[b2a];
  char d = seq[b3a];

  switch (c) {
    case A_BASE :
      switch (d) {
        case U_BASE : return !p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
      }
    case U_BASE :
      switch (d) {
        case A_BASE : return !p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
        case G_BASE : return !p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
      }
    case G_BASE :
    switch (d) {
        case U_BASE : return !p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
      }
    case C_BASE :
      break;
  }
  return false;
}

template<typename alphabet, typename pos_type, typename T>
inline bool p3ilup(const Basic_Sequence<alphabet, pos_type> &seq,
	T b1a, T b1b, 
	T b2a, T b2b, 
	T r1a, T r1b, 
	T x1, T x2, 
	T r2a, T r2b, 
	T b3a, T b3b, 
	T b4a, T b4b)
{

  if (b1b<=b1a||b2b<=b2a||r1b<=r1a||x2<=x1||r2b<=r2a||b3b<=b3a||b4b<=b4a)
    return false;  
  //a c e x f d b
    char c = seq[b2a];
  char d = seq[b3a];

  switch (c) {
    case A_BASE :
      switch (d) {
        case U_BASE : return p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
      }
    case U_BASE :
      switch (d) {
        case A_BASE : return p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
        case G_BASE : return p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
      }
    case G_BASE :
    switch (d) {
        case U_BASE : return p3ilinner(seq,r1a,r1b,x1,x2,r2a,r2b);
      }
    case C_BASE :
      break;
  }
  return false;
}

template<typename alphabet, typename pos_type, typename T>
inline bool p3ilinner(const Basic_Sequence<alphabet, pos_type> &seq,
	T r1a, T r1b, 
	T x1, T x2, 
	T r2a, T r2b)
{
	char e = seq[r1a];
	char f= seq[r2a];
	switch (e) {
		case A_BASE :
			switch (f) {
				case A_BASE :
					return true;
				case U_BASE :
					return false;
				case G_BASE :
					return true;
				case C_BASE :
					return true;
			}
		case U_BASE :
			switch (f) {
				case A_BASE :
					return false;
				case U_BASE :
					return true;
				case G_BASE :
					return false;
				case C_BASE :
					return true;
			}
		case G_BASE :
			switch (f) {
				case A_BASE :
					return true;
				case U_BASE :
					return false;
				case G_BASE :
					return true;
				case C_BASE :
					return false;
			}
		case C_BASE :
			switch (f) {
				case A_BASE :
					return true;
				case U_BASE :
					return true;
				case G_BASE :
					return false;
				case C_BASE :
					return true;
			}
	}
	return false;
}

template<typename alphabet, typename pos_type, typename T>
inline bool tandem_as_simple(
	const Basic_Sequence<alphabet, pos_type> &seq, T b1a, T b1b, 
	T b2a, T b2b, 
	T r1a, T r1b, 
	T x1, T x2, 
	T r2a, T r2b, 
	T b3a, T b3b, 
	T b4a, T b4b)
{
	bool is_a = 0;
  int forward_a_region_pos = -1;
 	int forward_a_region_length = 0;
  int a_region_pos_tmp = -1;
 	int a_region_length_tmp = 0;
	if (r1b <= r1a || r2b <= r2a) return false;
	//get longest substring with a's (length,pos) for the forward region
	for (T i = r1a; i < r1b; i++) {
		if (seq[i] == A_BASE) {
			if (is_a) {
				a_region_length_tmp++;
			} else {
				is_a = true;
				a_region_pos_tmp = i;
				a_region_length_tmp = 1;
			}
		} else {
			is_a = false;
			if (a_region_length_tmp > forward_a_region_length) {
				forward_a_region_pos = a_region_pos_tmp;
				forward_a_region_length = a_region_length_tmp;
			}
		}
	}
  if (is_a && a_region_length_tmp > forward_a_region_length) {
		forward_a_region_pos = a_region_pos_tmp;
		forward_a_region_length = a_region_length_tmp;
	}
	//reset
	is_a = false;
	a_region_pos_tmp = -1;
	a_region_length_tmp = 0;
	//get longest substring with a's (length,pos) for the backward region
  int backward_a_region_pos = -1;
 	int backward_a_region_length = 0;
	for (T i = r2b-1; i >= r1a; i--) {
		if (seq[i] == A_BASE) {
			if (is_a) {
				a_region_length_tmp++;
			} else {
				is_a = true;
				a_region_pos_tmp = i;
				a_region_length_tmp = 1;
			}
		} else {
			is_a = false;
			if (a_region_length_tmp > backward_a_region_length) {
				backward_a_region_pos = a_region_pos_tmp;
				backward_a_region_length = a_region_length_tmp;
			}
		}
	}
  if (is_a && a_region_length_tmp > backward_a_region_length) {
		backward_a_region_pos = a_region_pos_tmp;
		backward_a_region_length = a_region_length_tmp;
	}
	if (backward_a_region_pos == forward_a_region_pos
			&& backward_a_region_length > 1
			&& forward_a_region_length > 1) {
		return true;
	}
	if (backward_a_region_length > 1
			&& forward_a_region_length > 1) {
		return true;
	}
	return false;
}


template<typename alphabet, typename pos_type, typename T>
inline bool tandem_as(
	const Basic_Sequence<alphabet, pos_type> &seq, T b1a, T b1b, 
	T b2a, T b2b, 
	T r1a, T r1b, 
	T x1, T x2, 
	T r2a, T r2b, 
	T b3a, T b3b, 
	T b4a, T b4b)
{
	bool is_a = 0;
  int forward_a_region_pos = -1;
 	int forward_a_region_length = 0;
  int a_region_pos_tmp = -1;
 	int a_region_length_tmp = 0;
	if (r1b <= r1a || r2b <= r2a) return false;
	//get longest substring with a's (length,pos) for the forward region
	for (T i = r1a; i < r1b; i++) {
		if (seq[i] == A_BASE) {
			if (is_a) {
				a_region_length_tmp++;
			} else {
				is_a = true;
				a_region_pos_tmp = i;
				a_region_length_tmp = 1;
			}
		} else {
			is_a = false;
			if (a_region_length_tmp > forward_a_region_length) {
				forward_a_region_pos = a_region_pos_tmp;
				forward_a_region_length = a_region_length_tmp;
			}
		}
	}
  if (is_a && a_region_length_tmp > forward_a_region_length) {
		forward_a_region_pos = a_region_pos_tmp;
		forward_a_region_length = a_region_length_tmp;
	}
	//reset
	is_a = false;
	a_region_pos_tmp = -1;
	a_region_length_tmp = 0;
	//get longest substring with a's (length,pos) for the backward region
  int backward_a_region_pos = -1;
 	int backward_a_region_length = 0;
	for (T i = r2b-1; i >= r1a; i--) {
		if (seq[i] == A_BASE) {
			if (is_a) {
				a_region_length_tmp++;
			} else {
				is_a = true;
				a_region_pos_tmp = i;
				a_region_length_tmp = 1;
			}
		} else {
			is_a = false;
			if (a_region_length_tmp > backward_a_region_length) {
				backward_a_region_pos = a_region_pos_tmp;
				backward_a_region_length = a_region_length_tmp;
			}
		}
	}
  if (is_a && a_region_length_tmp > backward_a_region_length) {
		backward_a_region_pos = a_region_pos_tmp;
		backward_a_region_length = a_region_length_tmp;
	}
	if (backward_a_region_pos == forward_a_region_pos
			&& backward_a_region_length > 1
			&& forward_a_region_length > 1) {
		return true;
	}
	return false;
}

template<typename alphabet, typename pos_type, typename T>
inline bool seqcon(const Basic_Sequence<alphabet, pos_type> &seq,
    T i, T j, const char *input)
{
  if (j<=i)
    return false;
  if (j-i!=strlen(input))
    return false;

  for (T k = i; k < j; k++) {
    alphabet x;
    switch (lower_case(*input)) {
      case 'a' :
				x = A_BASE;
       	break;
      case 'u' :
				x = U_BASE;
       	break;
      case 'g' :
				x = G_BASE;
      	break;
      case 'c' :
				x = C_BASE;
       	break;
    }
    if (seq[k] != x)
      return false;
    input++;
  }
  return true;
}

template<typename alphabet, typename pos_type, typename T>
inline bool is_c(const Basic_Sequence<alphabet, pos_type> &seq,
    T i, T j)
{
  if (j<=i || (j-i!=1) || seq[i] != C_BASE)
    return false;
  
  return true;
}

template<typename alphabet, typename pos_type, typename T>
inline bool is_g(const Basic_Sequence<alphabet, pos_type> &seq,
    T i, T j)
{
  if (j<=i || (j-i!=1) || seq[i] != G_BASE)
    return false;
  
  return true;
}

template<typename alphabet, typename pos_type, typename T>
inline bool is_a(const Basic_Sequence<alphabet, pos_type> &seq,
    T i, T j)
{
  if (j<=i || (j-i!=1) || seq[i] != A_BASE)
    return false;
  
  return true;
}

template<typename alphabet, typename pos_type, typename T>
inline bool not_a(const Basic_Sequence<alphabet, pos_type> &seq,
    T i, T j)
{
  if (j<=i || (j-i!=1) || seq[i] == A_BASE)
    return false;
  
  return true;
}

template<typename alphabet, typename pos_type, typename T>
inline bool is_u(const Basic_Sequence<alphabet, pos_type> &seq,
    T i, T j)
{
  if (j<=i || (j-i!=1) || seq[i] != U_BASE)
    return false;
  
  return true;
}

#endif

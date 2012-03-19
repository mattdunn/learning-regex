# [|] matches any of provided expressions (alternatives)
'Elvis, the king, rocks 4 eva'.should_match '[Elvis|not_found]'
#'Elvis, the king, rocks 4 eva'.shouldnt_match '[notfound]'  #Why doesnt this fail?

# [|] matches any of provided constrained expressions (alternatives)
'Elvis, the king, rocks 4 eva'.should_match 'k(i|o)ng'
'Elvis, the king, rocks 4 eva'.shouldnt_match 'k(x|y)ng'
# + matches one or more of the previous subexpression
'Elvis, the king, rocks 4 eva'.should_match '[0-9]+'
'Elvis, the king, rocks 11 eva'.should_match '[0-9]+'
'Elvis, the king, rocks yea'.shouldnt_match '[0-9]+'

# * matches zero or more of the previous subexpression
'Elvis, the king, rocks 4 eva'.should_match '4*'
'Elvis, the king, rocks 4 eva'.should_match '0*'
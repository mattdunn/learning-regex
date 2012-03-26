# ? matches optional items
'Elvis, the king, rocks 4 eva'.should_match 'Elvisy?'

# ()? matches optional subexpressions
'Elvis, the king, rocks 4 eva'.should_match 'the king( yes he is)?'
'Elvis, the king, rocks 4 eva'.shouldnt_match 'the king( yes he is)'
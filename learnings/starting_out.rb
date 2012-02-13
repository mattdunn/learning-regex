# literal text, matching anywhere
'Elvis, the king, rocks'.should_match 'the king'
'Elvis, the king, rocks'.shouldnt_match 'bling'

# ^ starting with
'Elvis, the king, rocks'.should_match '^Elvis'
'Elvis, the king, rocks'.shouldnt_match '^king'

# $ ending with
'Elvis, the king, rocks'.should_match 'rocks$'
'Elvis, the king, rocks'.shouldnt_match 'king$'

# [] any of
'Elvis, the king, rocks'.should_match 'r[o]cks'
'Elvis, the king, rocks'.should_match 'r[oa]cks'
'Elvis, the king, racks'.should_match 'r[oa]cks'
'Elvis, the king, rocks'.shouldnt_match 'r[i]cks'
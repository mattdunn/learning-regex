# literal text
# matching anywhere
'Elvis, the king, rocks'.should_match 'the king'
'Elvis, the king, rocks'.shouldnt_match 'bling'


# starting or ending with: ^ $
# ^ starting with
'Elvis, the king, rocks'.should_match '^Elvis'
'Elvis, the king, rocks'.shouldnt_match '^king'
# $ ending with
'Elvis, the king, rocks'.should_match 'rocks$'
'Elvis, the king, rocks'.shouldnt_match 'king$'


# character class: [] 
# [] any of, matching a single character (exactly matching case)
'Elvis, the king, rocks'.should_match 'r[o]cks'
'Elvis, the king, rocks'.should_match 'r[oa]cks'
'Elvis, the king, racks'.should_match 'r[oa]cks'
'Elvis, the king, rocks'.shouldnt_match 'r[i]cks'

# [] any of, matching a single character (exactly matching case), within a range
'Elvis, the king, rocks 4 eva'.should_match '[1-5]'
'Elvis, the king, rocks 6 eva'.shouldnt_match '[1-5]'
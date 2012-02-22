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
# [a] any of, matching a single character (exactly matching case)
'Elvis, the king, rocks'.should_match 'r[o]cks'
'Elvis, the king, rocks'.should_match 'r[oa]cks'
'Elvis, the king, racks'.should_match 'r[oa]cks'
'Elvis, the king, rocks'.shouldnt_match 'r[i]cks'

# [a-b] any of, matching a single character (exactly matching case), within a range
'Elvis, the king, rocks 4 eva'.should_match '[1-5]'
'Elvis, the king, rocks 6 eva'.shouldnt_match '[1-5]'

# [a-b1-2] any of, matching a single character (exactly matching case), within any of the given ranges in any order
'Elvis, the king, rocks 4 eva'.should_match '[1-5A-E]'
'Elvis, the king, rocks 4 eva'.should_match '[1-5w-z]'
'Elvis, the king, rocks 4 eva'.shouldnt_match '[5-9y-z]'

# [-a] literal text match, as dash as first character in character class is not considered to denote a range
'Elvis, the king, rocks 4-eva'.should_match '[-]'
'Elvis, the king, rocks 4 eva'.shouldnt_match '[-]'

# [^a-b] negated range, doesn't match any of, matching a single character (exactly matching case), within a range
'Elvis, the king, rocks 4 eva'.should_match '[^y-z]'
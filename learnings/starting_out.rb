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
# [a] matches a single character (exactly matching case)
'Elvis, the king, rocks'.should_match 'r[o]cks'
'Elvis, the king, rocks'.should_match 'r[oa]cks'
'Elvis, the king, racks'.should_match 'r[oa]cks'
'Elvis, the king, rocks'.shouldnt_match 'r[i]cks'

# [a-b] matches a single character (exactly matching case), within a range
'Elvis, the king, rocks 4 eva'.should_match '[1-5]'
'Elvis, the king, rocks 6 eva'.shouldnt_match '[1-5]'

# [a-b1-2] matches a single character (exactly matching case), within any of the given ranges in any order
'Elvis, the king, rocks 4 eva'.should_match '[1-5A-E]'
'Elvis, the king, rocks 4 eva'.should_match '[1-5w-z]'
'Elvis, the king, rocks 4 eva'.shouldnt_match '[5-9y-z]'

# [-a] matches literal text, as dash as the first character in a character class does not denote a range
'Elvis, the king, rocks 4-eva'.should_match '[-]'
'Elvis, the king, rocks 4 eva'.shouldnt_match '[-]'

# [^a-b] negated range, matches characters not listed within a range
'Elvis, the king, rocks 4 eva'.should_match '[^y-z]'

# [.] matches any single character in a specified position
'Elvis, the king, rocks 4 eva'.should_match '[e.a]'
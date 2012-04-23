# {n} matches the previous subexpression n times 
'Elvis, the king, rocks 4 eva'.should_match 'a{1}'

# {min,max} matches the previous subexpression a minimum number of times, but no more than max
'Elvis, the king, rocks 4 eva'.should_match 'i{1,2}'
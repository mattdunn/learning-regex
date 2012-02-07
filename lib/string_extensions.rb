class String
  def should_match(pattern)
    return puts "'#{pattern}' matches: '#{self}'" if match(pattern) 
    raise "'#{pattern}' doesn't match: '#{self}'"
  end
  
  def shouldnt_match(pattern)
    raise "'#{pattern}' matches: '#{self}'" if match(pattern) 
    puts "'#{pattern}' doesn't match: '#{self}'"
  end
end
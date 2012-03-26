$:.unshift('lib')
require 'string_extensions'

task :default => :learn

task :learn do
  Dir.glob("learnings/*.rb").each do |f| 
    puts "#{f}\n\n"
    require File.expand_path(f)
    puts "\n"
  end
end

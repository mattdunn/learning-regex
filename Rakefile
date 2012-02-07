$:.unshift('lib')
require 'string_extensions'

task :default => :learn

task :learn do
  Dir.glob("learnings/*.rb").each {|f| require File.expand_path(f)}
end

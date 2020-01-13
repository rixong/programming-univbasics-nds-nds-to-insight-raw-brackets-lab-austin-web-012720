$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  dirs_total = {}
  nds.each { |director| 
    ind_total = 0
    director[:movies].each |movie| {
		ind_total += movie[:worldwide_gross].to_i
    }
	dirs_total[director[:name] => ind_total]
  }
  return 
end

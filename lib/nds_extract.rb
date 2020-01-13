$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def directors_totals(nds)
  totals
  nds.each { |director| 
    ind_total = 0
    director[:movies].each |movie| {
		ind_total += movie[:worldwide_gross]
    }
	dir_earnings[director[:name] => ind_total]
  }
  return 
end

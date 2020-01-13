$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# p directors_database[0][:movies][0][:worldwide_gross]

def directors_totals(nds)
  dirs_total = {}
  nds.each { |director| 
    ind_total = 0
    director[:movies].each { |movie|
    # p movie[:worldwide_gross]
		ind_total += movie[:worldwide_gross]
    }
	dirs_total[director[:name]] = ind_total
  }
  return dirs_total
end

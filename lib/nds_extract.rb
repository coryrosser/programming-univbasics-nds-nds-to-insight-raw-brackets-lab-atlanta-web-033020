$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'


def directors_totals(nds)
   new_hash = {}
   row_i = 0 
   while row_i < nds.length do
     col_i = 0name = nds[row_i][:name]
     total[name] = 0
     
     while col_i < movie.length do
      total[name] += movie[col_i][:worlwide_gross]
      col_i += 1
    end
    new_hash[:name] = total
    row_i +=1
  end
  
  pp new_hash
    
end

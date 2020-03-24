$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'


def directors_totals(nds)
   new_hash = {}
   row_i = 0 
   while row_i < nds.length do
     col_i = 0
     name = nds[row_i][:name]
     total[name] = 0
     
     while col_i < nds[row_i][:movies].length do
      total[name] += nds[row_i][:movies][col_i][:worlwide_gross]
      col_i += 1
    end
    row_i +=1
  end
  
  new_hash
    
end

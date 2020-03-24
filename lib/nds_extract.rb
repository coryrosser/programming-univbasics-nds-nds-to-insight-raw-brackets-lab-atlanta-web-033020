$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'


def directors_totals(nds)
   
   nds = directors_database
   
   row_i = 0 
   while row_i < nds.length do
     new_hash = {}
     total = 0
     movie = nds[row_i][:movies]
     name = nds[row_i][:name]
     col_i = 0 
     while col_i < movie.length do
      total = total + movie[col_i][:worlwide_gross]
      col_i += 1
    end
    new_hash[:name] = total
    row_i +=1
  end
  
  pp new_hash
    
end

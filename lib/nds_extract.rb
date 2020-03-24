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


def directors_totals(nds)
  director_index = 0
  total = {}
  while director_index < nds.length do 
       movie_index = 0
       director_name = nds[director_index][:name]
       total[director_name] = 0        #building dictionary adding to total{}
       while movie_index < nds[director_index][:movies].length do 
         total[director_name] += nds[director_index][:movies][movie_index][:worldwide_gross]
          movie_index += 1
         end     
       director_index += 1 
  end
  total
end
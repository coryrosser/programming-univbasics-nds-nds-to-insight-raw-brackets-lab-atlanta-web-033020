$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'


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

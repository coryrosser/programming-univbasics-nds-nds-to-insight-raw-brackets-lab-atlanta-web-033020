$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'


def directors_totals(nds)
  row_i = 0
  new_hash = {}
  while row_i < nds.length do 
       col_i = 0
       name = nds[row_i][:name]
       new_hash[row_i] = 0
       while col_i < nds[row_i][:movies].length do 
        new_hash[name] += nds[row_i][:movies][col_i][:worldwide_gross]
          col_i += 1
         end     
       row_i += 1 
  end
  new_hash
end
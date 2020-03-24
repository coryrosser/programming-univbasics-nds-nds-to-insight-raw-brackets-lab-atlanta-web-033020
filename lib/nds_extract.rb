$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'
require 'pp'


def directors_totals(nds)
  row_i = 0
  total = {}
  while row_i < nds.length do 
       col_i = 0
       name = nds[row_i][:name]
       total[name] = 0
       while col_i < nds[row_i][:movies].length do 
        total[name] += nds[row_i][:movies][col_i][:worldwide_gross]
          col_i += 1
         end     
       row_i += 1 
  end
  total
end
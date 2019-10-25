require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  dir_index = 0
  while dir_index < nds[dir_index] do
    director_data = nds[dir_index]
    result[nds[dir_index][:name]] => gross_for_director(director_data)
  end
  result
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  movie_index = 0
  total = 0
  while movie_index < director_data[:movies][movie_index] do
    total += director_data[:movies][movie_index][:worldwide_gross]
    movie_index += 1
  end
  total
end

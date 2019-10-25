require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  dir_index = 0
  while dir_index < nds[dir_index] do
    movie_index = 0
    total = 0
    while movie_index < nds[dir_index][:movies][movie_index]
  end
end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
end

require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  pp director_data
  index = 0
  total = 0
  while index < director_data[:movies].length do
    total += director_data[:movies][index][:worldwide_gross]
    index += 1
    pp index
  end
  total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  directors = directors_database
  result = {}
  total = 0
  dir_index = 0
  while dir_index < directors.length do
    movie_index = 0
    while movie_index < directors[dir_index][:movies].length do
    total += directors[dir_index][:movies][movie_index][:worldwide_gross]
    movie_index += 1
    end
    result[directors[dir_index][:name]] = total
    total = 0
    dir_index += 1
  end
  result
end



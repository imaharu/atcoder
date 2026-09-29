N = gets.to_i

currateLastR = 0
watchedMovies = 0 

movies = []

N.times do 
  l, r = gets.split.map(&:to_i)
  movies << [l, r]
end

movies.sort {|a, b| a[1] <=> b[1] }.each do |movie|
  if currateLastR <= movie[0]
    currateLastR =  movie[1]
    watchedMovies += 1
  end
end

puts watchedMovies

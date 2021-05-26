require 'open-uri'

puts "Destroying all existing movies and movies..."
Bookmark.destroy_all
Movie.destroy_all
puts "done"

url = 'http://tmdb.lewagon.com/movie/top_rated'
read_url = URI.open(url).read
json = JSON.parse(read_url)
results = json["results"]

results.each do |result|
  title = result["title"]
  overview = result["overview"]
  poster_url = "https://image.tmdb.org/t/p/original/#{result["backdrop_path"]}"
  movie = Movie.create!(title: title, overview: overview, poster_url: poster_url)
  puts "Movie #{movie.title} created..."
end
require_relative "genre_service"
require_relative "genre_strategy/biography"
require_relative "genre_strategy/crime"
require_relative "genre_strategy/thriller"
require_relative "genre_strategy/romance"
require_relative "genre_strategy/self_help"


book1 = {
    name: "It starts with us",
    genre: "romance"
}
book2 = {
    name: "It starts with us",
    genre: "biography"
}
book2 = {
    name: "Sapiens",
    genre: "non-fiction"
}
book3 = {
    name: "The Power of your Subconcious Mind",
    genre: "self_help"
}
book4 = {
    name: "Verity",
    genre: "thriller"
}

GENRES = {
    "biography" => GenreStrategy::Biography,
    "romance" => GenreStrategy::Romance,
    "thriller" => GenreStrategy::Thriller,
    "self_help" => GenreStrategy::SelfHelp,
    "crime" => GenreStrategy::Crime
}


# books = [book1, book2, book3, book4]
books = [book4]
books.each do |book|
  strategy_class = GENRES[book[:genre]]
  book_name = book[:name]
  
  if strategy_class
    genre_service = GenreService.new(
      strategy: strategy_class,
      name: book_name
    )

    genre_service.genre
  else
    puts "Unsupported genre: #{book[:genre]}"
  end
end
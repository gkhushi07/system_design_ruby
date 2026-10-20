class GenreService
    # GENRES = {
    #     "biography" = GenreStartegy::Biography,
    #     "romance" = GenreStartegy::Romance,
    #     "thriller" = GenreStartegy::Thriller,
    #     "self-help" = GenreStartegy::SelfHelp,
    #     "crime" = GenreStartegy::Crime

    # }
    def initialize (strategy:, name:)
        @strategy = strategy
        @name = name
    end

    def genre
        @strategy.new.genre(@name)
    end
end
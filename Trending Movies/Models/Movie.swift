struct Movie {
    
    let id: Int
    let title: String
    let overview: String
    let voteAverage: Int
    let posterPath: String?
    
    enum CodingKeys: String, CodingKey {
        case id
        case title
        case overviview
        case voteAverage = "vote_average"
        case posterPath = "poster_path"
    }
}

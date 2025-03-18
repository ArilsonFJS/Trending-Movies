import Foundation

class MovieViewModel {
    
    private let service = MovieService()
    var movies: [Movie] = []
    var onMoviesUpdate: (() -> Void)?
    
    func loadTrendingMovie(){
        service.fetchTrendingMovies { [weak self] result in
            DispatchQueue.main.async {
                switch result {
                case .success(let movies):
                    self?.movies
                    self?.onMoviesUpdate?()
                    
                case .failure(let error):
                    print("Erro ao carregar filmes: \(error.localizedDescription)")
                }
            }
            
        }
    }
}

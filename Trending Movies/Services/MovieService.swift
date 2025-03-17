import Foundation

class MovieService {
    
    func fetchTrendingMovies(completion: @escaping (Result<[Movie], Error>) -> Void) {
        
        let urlString = "\(APIConstants.baseURL)/movie/popular?api_key=\(APIConstants.apiKey)&language=pt-BR&page=1"
        
        guard let url = URL(string: urlString) else {
            completion(.failure(NSError(domain: "URL Inválida", code: 0, userInfo: nil)))
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }
        }
    }
}

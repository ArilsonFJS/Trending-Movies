//
//  MovieDetailViewController.swift
//  Trending Movies
//
//  Created by Arilson Silva on 30/03/25.
//

import UIKit

class MovieDetailViewController: UIViewController {
    var movie: Movie?
    
    private lazy var movieImageView: UIImageView = {
        let movieImageView = UIImageView()
        movieImageView.translatesAutoresizingMaskIntoConstraints = false
        return movieImageView
    }()
    
    private lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    private lazy var overviewLabel: UILabel = {
        let overviewLabel = UILabel()
        overviewLabel.translatesAutoresizingMaskIntoConstraints = false
        return overviewLabel
    }()
    
    private lazy var ratingLabel: UILabel = {
        let ratingLabel = UILabel()
        ratingLabel.translatesAutoresizingMaskIntoConstraints = false
        return ratingLabel
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        configureMovieDetails()
    }
    
    private func setupUI() {
        movieImageView.contentMode = .scaleAspectFill
        movieImageView.clipsToBounds = true
        
        titleLabel.font = UIFont.boldSystemFont(ofSize: 22)
        titleLabel.numberOfLines = 0
        titleLabel.textAlignment = .center
        
        
        overviewLabel.font = UIFont.boldSystemFont(ofSize: 16)
        overviewLabel.numberOfLines = 0
        overviewLabel.textAlignment = .justified
        
        ratingLabel.font = UIFont.systemFont(ofSize: 16)
        ratingLabel.textAlignment = .center
        
        let stackView = UIStackView(arrangedSubviews: [movieImageView, titleLabel, overviewLabel, ratingLabel])
        stackView.axis = .vertical
        stackView.spacing = 10
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        NSLayoutConstraint.activate([
                   stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
                   stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                   stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
                   
                   movieImageView.heightAnchor.constraint(equalToConstant: 250),
                   movieImageView.widthAnchor.constraint(equalToConstant: 170),
               ])
        
    }
    
    private func configureMovieDetails() {
        guard let movie = movie else { return }
        
        titleLabel.text = movie.title
        overviewLabel.text = movie.overview
        ratingLabel.text = "⭐ \(movie.voteAverage ?? 0.0)/10"
        
        if let posterPath = movie.posterPath {
            let urlImage = URL(string: "\(APIConstants.baseURLImage)\(posterPath)")
            downloadImage(from: urlImage, into: movieImageView)
        }
    }
    
    private func downloadImage(from url: URL?, into imageView: UIImageView) {
        guard let url = url else { return }
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url), let image = UIImage(data: data) {
                DispatchQueue.main.async {
                    imageView.image = image
                }
            }
        }
    }
}

//
//  MoviePosterCellViewModel.swift
//  My Movie
//
//  Created by Murad Farhat on 03/07/2023.
//

import UIKit

class MoviePosterCellViewModel: MovieTableViewProtocol {
    private(set) var moviePoster: String?
    typealias dataType = MyMovieDataModel
    
    func setCellData(movie: MyMovieDataModel) {
        self.moviePoster = movie.moviePoster
    }
}

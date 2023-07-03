//
//  MovieDescriptionViewModel.swift
//  My Movie
//
//  Created by Murad Farhat on 03/07/2023.
//

import UIKit

class MovieDescriptionViewModel: MovieTableViewProtocol {
    private(set) var movieDescription: String?
    typealias dataType = MyMovieDataModel
    
    func setCellData(movie: dataType) {
        self.movieDescription = movie.movieDescription
    }
}

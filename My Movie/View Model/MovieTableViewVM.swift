//
//  MovieTableViewVM.swift
//  My Movie
//
//  Created by Murad Farhat on 03/07/2023.
//

import UIKit

class MovieTableViewVM {
    
    private(set) var movieCellsVM: [any MovieTableViewProtocol] = []
    
    func fetchCellsData(movie: MyMovieDataModel) {
        let moviePoster = MoviePosterCellViewModel()
        moviePoster.setCellData(movie: movie)
        
        let movieDesc = MovieDescriptionViewModel()
        movieDesc.setCellData(movie: movie)
        
        self.movieCellsVM = [moviePoster, movieDesc]
    }
    
}

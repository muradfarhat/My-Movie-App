//
//  MyMovieCellViewModel.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit

class MyMovieCellViewModel {
    
    private(set) var moviePoster: String
    private(set) var movieName: String
    private(set) var movieRate: Int
    private(set) var movieTime: String
    private(set) var movieDescrtiption: String
    
    init(model: MyMovieDataModel) {
        self.movieName = model.movieTitle
        self.movieRate = model.movieYear
        self.movieTime = model.movieTime
        self.moviePoster = model.moviePoster
        self.movieDescrtiption = model.movieDescription
    }
}

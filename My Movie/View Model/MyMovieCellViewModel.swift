//
//  MyMovieCellViewModel.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit

class MyMovieCellViewModel {
    
    private(set) var moviePoster: UIImage
    private(set) var movieName: String
    private(set) var movieRate: Int
    private(set) var movieTime: Int
    
    init(moviePoster: UIImage, movieName: String, movieRate: Int, movieTime: Int) {
        self.moviePoster = moviePoster
        self.movieName = movieName
        self.movieRate = movieRate
        self.movieTime = movieTime
    }
}

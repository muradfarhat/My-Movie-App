//
//  MyMovieCellViewModel.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit
import SDWebImage

class MyMovieCellViewModel {
    
    private(set) var moviePoster: UIImageView = UIImageView()
    private(set) var movieName: String
    private(set) var movieRate: Int
    private(set) var movieTime: String
    
    init(model: MyMovieDataModel) {
        self.movieName = model.movieTitle
        self.movieRate = model.movieYear
        self.movieTime = model.movieTime
        self.moviePoster.sd_setImage(with: URL(string: model.moviePoster))
    }
}

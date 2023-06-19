//
//  MyMoviesCollectionViewCell.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit

class MyMoviesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var movieTimeValue: UILabel!
    @IBOutlet weak var movieRateValue: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    static let cellIdentifire = "movieCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setMovieData(movie: MyMovieCellViewModel) {
        self.movieTitle.text = movie.movieName
        self.movieTimeValue.text = String(movie.movieTime)
        self.movieRateValue.text = String(movie.movieRate)
        self.movieImage.image = movie.moviePoster
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "MyMoviesCollectionViewCell", bundle: nil)
    }

}

//
//  MyMoviesCollectionViewCell.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit
import SDWebImage

class MyMoviesCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var movieTimeValue: UILabel!
    @IBOutlet weak var movieRateValue: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieImage: UIImageView!
    
    static let cellIdentifire = "MyMoviesCollectionViewCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setMovieData(movie: MyMovieCellViewModel) {
        self.movieTitle.text = movie.movieName
        self.movieTimeValue.text = String(movie.movieTime)
        self.movieRateValue.text = String(movie.movieRate)
        
        if let posterURL = URL(string: movie.moviePoster) {
            self.movieImage.sd_setImage(with: posterURL, placeholderImage: nil) { [weak self] (image, error, cacheType, url) in
                if error != nil {
                    self?.movieImage.image = UIImage(named: "RealMadrid")
                }
            }
        } else {
            self.movieImage.image = UIImage(named: "RealMadrid")
        }
    }
    
    static func nib() -> UINib {
        return UINib(nibName: "MyMoviesCollectionViewCell", bundle: nil)
    }

}

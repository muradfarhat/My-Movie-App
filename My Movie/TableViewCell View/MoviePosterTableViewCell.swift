//
//  MoviePosterTableViewCell.swift
//  My Movie
//
//  Created by Murad Farhat on 01/07/2023.
//

import UIKit
import SDWebImage

class MoviePosterTableViewCell: UITableViewCell {
    
    static var identifier = "MoviePosterTableViewCell"
    
    static func posterCellNib() -> UINib {
        return UINib(nibName: "MoviePosterTableViewCell", bundle: nil)
    }

    @IBOutlet weak var posterImageView: UIImageView!
    typealias dataType = MyMovieCellViewModel
    
    func setCellData(movie: MoviePosterCellViewModel) {
        if let posterURL = URL(string: movie.moviePoster!) {
            self.posterImageView.sd_setImage(with: posterURL, placeholderImage: nil) { [weak self] (image, error, cacheType, url) in
                if error != nil {
                    self?.posterImageView.image = UIImage(named: "RealMadrid")
                }
            }
        } else {
            self.posterImageView.image = UIImage(named: "RealMadrid")
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

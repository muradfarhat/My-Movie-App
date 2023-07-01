//
//  MoviePosterTableViewCell.swift
//  My Movie
//
//  Created by Murad Farhat on 01/07/2023.
//

import UIKit

class MoviePosterTableViewCell: UITableViewCell {
    
    static var identifier = "MoviePosterTableViewCell"
    
    static func posterCellNib() -> UINib {
        return UINib(nibName: "MoviePosterTableViewCell", bundle: nil)
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
}

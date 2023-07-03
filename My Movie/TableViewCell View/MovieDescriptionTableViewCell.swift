//
//  MovieDescriptionTableViewCell.swift
//  My Movie
//
//  Created by Murad Farhat on 01/07/2023.
//

import UIKit

class MovieDescriptionTableViewCell: UITableViewCell{
    
    static var identifier = "MovieDescriptionTableViewCell"
    
    static func descriptionCellNib() -> UINib {
        return UINib(nibName: "MovieDescriptionTableViewCell", bundle: nil)
    }
    
    @IBOutlet weak var movieDescription: UILabel!
    typealias dataType = MyMovieCellViewModel

    func setCellData(movie: MovieDescriptionViewModel) {
        self.movieDescription.text = movie.movieDescription
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

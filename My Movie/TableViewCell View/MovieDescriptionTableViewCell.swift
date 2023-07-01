//
//  MovieDescriptionTableViewCell.swift
//  My Movie
//
//  Created by Murad Farhat on 01/07/2023.
//

import UIKit

class MovieDescriptionTableViewCell: UITableViewCell, MovieTableViewProtocol {
    
    static var identifier = "MovieDescriptionTableViewCell"
    
    static func descriptionCellNib() -> UINib {
        return UINib(nibName: "MovieDescriptionTableViewCell", bundle: nil)
    }
    
    typealias dataType = MyMovieCellViewModel

    func setCellData(movie: MyMovieCellViewModel) {
        <#code#>
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}

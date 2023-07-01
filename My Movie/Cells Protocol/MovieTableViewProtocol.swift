//
//  MovieTableViewProtocol.swift
//  My Movie
//
//  Created by Murad Farhat on 01/07/2023.
//

import Foundation

protocol MovieTableViewProtocol {
    associatedtype dataType
    func setCellData(movie: dataType)
}

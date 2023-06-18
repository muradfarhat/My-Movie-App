//
//  MyMovieModel.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import Foundation

struct MyMovieDataModel: Codable {
    var movieTitle: String
    var movieTime: String
    var movieYear: Int
    var moviePoster: String
    
    enum CodingKeys: String, CodingKey {
        case movieTitle = "Title"
        case movieTime = "Runtime"
        case movieYear = "Year"
        case moviePoster = "Poster"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        movieTitle = try container.decode(String.self, forKey: .movieTitle)
        movieTime = try container.decode(String.self, forKey: .movieTime)
        movieYear = Int(try container.decode(String.self, forKey: .movieYear))!
        moviePoster = try container.decode(String.self, forKey: .moviePoster)
    }

}

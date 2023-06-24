//
//  MyMovieModel.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import Foundation

struct MyMovieDataModel: Codable {
    var movieId: Int
    var movieTitle: String
    var movieTime: String
    var movieYear: Int
    var movieDescription: String
    var moviePoster: String
    
    enum CodingKeys: String, CodingKey {
        case movieId = "id"
        case movieTitle = "Title"
        case movieTime = "Runtime"
        case movieYear = "Year"
        case movieDescription = "description"
        case moviePoster = "Poster"
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        movieId = Int(try container.decode(String.self, forKey: .movieId))!
        movieTitle = try container.decode(String.self, forKey: .movieTitle)
        movieTime = try container.decode(String.self, forKey: .movieTime)
        movieYear = Int(try container.decode(String.self, forKey: .movieYear))!
        movieDescription = try container.decode(String.self, forKey: .movieDescription)
        moviePoster = try container.decode(String.self, forKey: .moviePoster)
    }
}

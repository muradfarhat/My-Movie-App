//
//  Movie+CoreDataProperties.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//
//

import Foundation
import CoreData


extension Movie {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movie> {
        return NSFetchRequest<Movie>(entityName: "Movie")
    }

    @NSManaged public var poster: String?
    @NSManaged public var title: String?
    @NSManaged public var time: String?
    @NSManaged public var year: Int16

}

extension Movie : Identifiable {

}

//
//  Movie+CoreDataProperties.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//
//

import Foundation
import CoreData


extension Movies {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Movies> {
        return NSFetchRequest<Movie>(entityName: "Movies")
    }

    @NSManaged public var poster: String?
    @NSManaged public var title: String?
    @NSManaged public var time: String?
    @NSManaged public var year: Int16

}

extension Movies : Identifiable {

}

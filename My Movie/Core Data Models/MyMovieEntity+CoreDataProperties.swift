//
//  MyMovieEntity+CoreDataProperties.swift
//  My Movie
//
//  Created by Murad Farhat on 21/06/2023.
//
//

import Foundation
import CoreData


extension MyMovieEntity {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyMovieEntity> {
        return NSFetchRequest<MyMovieEntity>(entityName: "MyMovieEntity")
    }

    @NSManaged public var poster: String?
    @NSManaged public var title: String?
    @NSManaged public var year: Int16
    @NSManaged public var time: String?

}

extension MyMovieEntity : Identifiable {

}

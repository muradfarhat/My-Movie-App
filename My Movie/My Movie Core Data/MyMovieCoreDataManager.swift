//
//  MyMovieCoreDataManager.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import Foundation
import CoreData

class MyMovieCoreDataManager {
    
    static let shared = MyMovieCoreDataManager() // Singleton instance
    
    lazy var persistentContainer: NSPersistentContainer = {
        let container = NSPersistentContainer(name: "My_Movie")
        container.loadPersistentStores { (_, error) in
            if let error = error as NSError? {
                fatalError("Failed to load persistent stores: \(error), \(error.userInfo)")
            }
        }
        return container
    }()
}

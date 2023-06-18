//
//  MyMovieCoreDataVM.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit
import CoreData

class MyMovieCoreDataVM {
    
    private let context = MyMovieCoreDataManager.shared.persistentContainer.viewContext
    
    func getAllMovies() -> [Movies] {
        var models: [Movies] = []
        do {
            models = try context.fetch(Movies.fetchRequest())
            return models
        } catch {
            print(error.localizedDescription)
        }
        return models
    }
}

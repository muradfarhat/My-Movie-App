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
    
    func getAllMovies() -> [Movie] {
        var models: [Movie] = []
        do {
            models = try context.fetch(Movie.fetchRequest())
            return models
        } catch {
            print(error.localizedDescription)
        }
        return models
    }
}

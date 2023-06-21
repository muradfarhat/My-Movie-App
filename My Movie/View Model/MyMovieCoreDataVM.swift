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
    
    func getAllMovies() -> [MyMovieCellViewModel] {
        var moviesVM: [MyMovieCellViewModel] = []
        
        do {
            let movieModels: [MyMovieEntity] = try context.fetch(MyMovieEntity.fetchRequest())
            moviesVM = movieModels.map {
                MyMovieCellViewModel(model: $0)
            }
        } catch {
            print(error.localizedDescription)
        }
        return moviesVM
    }
    
    func addMovie(movie: MyMovieCellViewModel) {
        let newMovie = MyMovieEntity()
        newMovie.poster = movie.moviePoster
        newMovie.title = movie.movieName
        newMovie.time = movie.movieTime
        newMovie.year = Int16(movie.movieRate)
        
        do {
            try context.save()
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func isMoviesCoreDataEmpty() -> Bool {
        let fetchData: NSFetchRequest<MyMovieEntity> = MyMovieEntity.fetchRequest()
        
        do {
            let count = try context.count(for: fetchData)
            return count == 0
        } catch {
            return true
        }
    }
}

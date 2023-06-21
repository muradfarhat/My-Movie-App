//
//  MyMovieCollectionViewVM.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit
import Alamofire

class MyMovieCollectionViewVM {
    
    private var movieViewModels: [MyMovieCellViewModel] = []
    let myMovieCoreDataViewModel = MyMovieCoreDataVM()
    
    func fetchMoviesData(completionHandler: @escaping ([MyMovieCellViewModel]) -> Void) {
        let moviesApi = "https://mocki.io/v1/8243f76f-332a-47a6-924f-7f501bede45c"
        
        AF.request(moviesApi).responseDecodable(of: [MyMovieDataModel].self) { [weak self] response in
                    
            switch response.result {
                case .success(let responseData):
                self?.movieViewModels = responseData.map {
                    MyMovieCellViewModel(model: $0)
                }
                
                for movieVM in self!.movieViewModels {
                    self?.myMovieCoreDataViewModel.addMovie(movie: movieVM)
                }
                
                completionHandler(self?.movieViewModels ?? [])
                case .failure(let error):
                    print("Error :\(error)")
                    completionHandler(self?.movieViewModels ?? [])
            }
        }
    }
}

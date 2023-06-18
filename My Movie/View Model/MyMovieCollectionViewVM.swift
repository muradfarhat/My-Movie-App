//
//  MyMovieCollectionViewVM.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit
import Alamofire

class MyMovieCollectionViewVM {
    
    private var movieModels: [MyMovieDataModel] = []
    
    func fetchMoviesData(completionHandler: @escaping ([MyMovieDataModel]) -> Void) {
        let moviesApi = "https://my-json-server.typicode.com/horizon-code-academy/fake-movies-api/movies"
        
        AF.request(moviesApi).responseDecodable(of: [MyMovieDataModel].self) { [weak self] response in
                    
            switch response.result {
                case .success(let responseData):
                        self?.movieModels = responseData
                        completionHandler(self?.movieModels ?? [])
                case .failure(let error):
                        print("Error :\(error)")
                        completionHandler(self?.movieModels ?? [])
            }
        }
    }
}

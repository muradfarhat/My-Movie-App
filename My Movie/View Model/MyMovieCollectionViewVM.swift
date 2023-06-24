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
    
    func fetchMoviesData(completionHandler: @escaping ([MyMovieCellViewModel]) -> Void) {
        let moviesApi = "https://mocki.io/v1/4ad6460b-cb5f-44a3-b6c3-e4a95c4cab8b"
        
        AF.request(moviesApi).responseDecodable(of: [MyMovieDataModel].self) { [weak self] response in
                    
            switch response.result {
                case .success(let responseData):
                self?.movieViewModels = responseData.map {
                    MyMovieCellViewModel(model: $0)
                }
                completionHandler(self?.movieViewModels ?? [])
                case .failure(let error):
                    print("Error :\(error)")
                    completionHandler(self?.movieViewModels ?? [])
            }
        }
    }
}

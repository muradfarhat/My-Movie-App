//
//  MyMovieCollectionViewVM.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit
import Alamofire

class MyMovieCollectionViewVM {
    
    private(set) var movieViewModels: [MyMovieCellViewModel] = []
    private(set) var movieModels: [MyMovieDataModel] = []
    
    func fetchMoviesData(completionHandler: @escaping () -> Void) {
        let moviesApi = "https://mocki.io/v1/4ad6460b-cb5f-44a3-b6c3-e4a95c4cab8b"
        
        AF.request(moviesApi).responseDecodable(of: [MyMovieDataModel].self) { [weak self] response in
                    
            switch response.result {
                case .success(let responseData):
                self?.movieModels = responseData
                self?.movieViewModels = responseData.map {
                    MyMovieCellViewModel(model: $0)
                }
                completionHandler()
                case .failure(let error):
                    print("Error :\(error)")
                    completionHandler()
            }
        }
    }
}

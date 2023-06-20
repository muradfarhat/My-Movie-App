//
//  ViewController.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit

class MyMovieViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    @IBOutlet weak var myMoviesCollectionView: UICollectionView!
    private let myMovieCDViewModel: MyMovieCoreDataVM = MyMovieCoreDataVM()
    private let myMovieCollectionVM: MyMovieCollectionViewVM = MyMovieCollectionViewVM()
    private var movieModels: [MyMovieCellViewModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myMoviesCollectionView.delegate = self
        self.myMoviesCollectionView.dataSource = self
        
        self.myMoviesCollectionView.register(MyMoviesCollectionViewCell.nib(), forCellWithReuseIdentifier: MyMoviesCollectionViewCell.cellIdentifire)
        
        self.myMovieCollectionVM.fetchMoviesData { data in
            DispatchQueue.main.async {
                self.movieModels = data
                self.myMoviesCollectionView.reloadData()
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 360)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.movieModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myMoviesCollectionView.dequeueReusableCell(withReuseIdentifier: MyMoviesCollectionViewCell.cellIdentifire, for: indexPath) as? MyMoviesCollectionViewCell

        cell?.setMovieData(movie: self.movieModels[indexPath.row])
        return cell ?? UICollectionViewCell()
    }


}


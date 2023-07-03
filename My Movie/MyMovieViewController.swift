//
//  ViewController.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit

class MyMovieViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    @IBOutlet weak var myMoviesCollectionView: UICollectionView!
    private let myMovieCollectionVM: MyMovieCollectionViewVM = MyMovieCollectionViewVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myMoviesCollectionView.delegate = self
        self.myMoviesCollectionView.dataSource = self
        
        self.myMoviesCollectionView.register(MyMoviesCollectionViewCell.nib(), forCellWithReuseIdentifier: MyMoviesCollectionViewCell.cellIdentifire)
        
        self.myMovieCollectionVM.fetchMoviesData {
            DispatchQueue.main.async {
                self.myMoviesCollectionView.reloadData()
            }
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let selectedItem = self.myMovieCollectionVM.movieModels[indexPath.row]
        
        let movieDescriptionVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MovieDescriptionViewController") as? MovieDescriptionViewController
        
        movieDescriptionVC?.selectedMovie = selectedItem
        
        navigationController?.pushViewController(movieDescriptionVC ?? MovieDescriptionViewController(), animated: true)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width, height: 360)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.myMovieCollectionVM.movieViewModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myMoviesCollectionView.dequeueReusableCell(withReuseIdentifier: MyMoviesCollectionViewCell.cellIdentifire, for: indexPath) as? MyMoviesCollectionViewCell

        cell?.setMovieData(movie: self.myMovieCollectionVM.movieViewModels[indexPath.row])
        return cell ?? UICollectionViewCell()
    }


}


//
//  ViewController.swift
//  My Movie
//
//  Created by Murad Farhat on 18/06/2023.
//

import UIKit

class MyMovieViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet weak var myMoviesCollectionView: UICollectionView!
    private var movieModels: [MyMovieDataModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.myMoviesCollectionView.delegate = self
        self.myMoviesCollectionView.dataSource = self
        
        self.myMoviesCollectionView.register(UINib(nibName: "MyMoviesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "movieCell")

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.movieModels.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = myMoviesCollectionView.dequeueReusableCell(withReuseIdentifier: "movieCell", for: indexPath) as? MyMoviesCollectionViewCell
        
        let movieCellVM = MyMovieCellViewModel(moviePoster: UIImage(named: "RealMadrid")!, movieName: "Avatar", movieRate: 2019, movieTime: 128)
        
        cell?.setMovieData(movie: movieCellVM)
        return cell ?? UICollectionViewCell()
    }


}


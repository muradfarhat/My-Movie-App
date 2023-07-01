//
//  MovieDescriptionView.swift
//  My Movie
//
//  Created by Murad Farhat on 24/06/2023.
//

import UIKit

class MovieDescriptionViewController: UIViewController, UIScrollViewDelegate {
    
    
    @IBOutlet weak var movieYear: UILabel!
    @IBOutlet weak var movieTitle: UILabel!
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var moviePoster: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    var selectedMovie: MyMovieCellViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentInsetAdjustmentBehavior = .never
        
        scrollView.contentSize = view.bounds.size
        
        if let posterURL = URL(string: selectedMovie!.moviePoster) {
            self.moviePoster.sd_setImage(with: posterURL, placeholderImage: nil) { [weak self] (image, error, cacheType, url) in
                if error != nil {
                    self?.moviePoster.image = UIImage(named: "RealMadrid")
                }
            }
        } else {
            self.moviePoster.image = UIImage(named: "RealMadrid")
        }

        movieDescription.text = self.selectedMovie?.movieDescrtiption
        movieTitle.text = self.selectedMovie?.movieName
        movieYear.text = String(self.selectedMovie!.movieRate)
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
    }
}

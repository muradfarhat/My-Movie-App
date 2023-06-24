//
//  MovieDescriptionView.swift
//  My Movie
//
//  Created by Murad Farhat on 24/06/2023.
//

import UIKit

class MovieDescriptionViewController: UIViewController, UIScrollViewDelegate {
    
    
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
        
//        self.moviePoster.image = UIImage(named: "RealMadrid")
//        self.movieDescription.text = "The Lion King is a 1994 American animated musical drama film produced by Walt Disney Feature Animation and released by Walt Disney Pictures. The 32nd Disney animated feature film and the fifth produced during the Disney Renaissance, it is inspired by William Shakespeare's Hamlet with elements from the Biblical stories of Joseph and Moses and Disney's 1942 film Bambi. The film was directed by Roger Allers and Rob Minkoff (in their feature directorial debuts) and produced by Don Hahn, from a screenplay written by Irene Mecchi, Jonathan Roberts, and Linda Woolverton. The film features an ensemble voice cast that includes Matthew Broderick, James Earl Jones, Jeremy Irons, Jonathan Taylor Thomas, Nathan Lane, Ernie Sabella, Rowan Atkinson, and Robert Guillaume. Its original songs were written by composer Elton John and lyricist Tim Rice, with a score by Hans Zimmer."
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let yOffset = scrollView.contentOffset.y
        let parallaxFactor: CGFloat = 0.5 // Adjust this value to control the parallax effect
                
        // Update the position of the film poster UIImageView
        moviePoster.frame.origin.y = yOffset * parallaxFactor
                
        // Optionally, update other elements with parallax effect, such as the description label
                
        // Ensure the film poster stays within the visible bounds of the scroll view
        let minY = -moviePoster.frame.height
        let maxY = scrollView.frame.height
        let newY = max(minY, min(maxY, moviePoster.frame.origin.y))
        moviePoster.frame.origin.y = newY
    }
}

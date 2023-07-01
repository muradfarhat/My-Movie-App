//
//  MovieDescriptionView.swift
//  My Movie
//
//  Created by Murad Farhat on 24/06/2023.
//

import UIKit

class MovieDescriptionViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var movieDescTableView: UITableView!
    
    var selectedMovie: MyMovieCellViewModel?
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.movieDescTableView.delegate = self
        self.movieDescTableView.dataSource = self
        
        self.movieDescTableView.register(MoviePosterTableViewCell.posterCellNib(), forCellReuseIdentifier: MoviePosterTableViewCell.identifier)
        self.movieDescTableView.register(MovieDescriptionTableViewCell.descriptionCellNib(), forCellReuseIdentifier: MovieDescriptionTableViewCell.identifier)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row % 2 == 0 {
            let cell = movieDescTableView.dequeueReusableCell(withIdentifier: MoviePosterTableViewCell.identifier, for: indexPath) as? MoviePosterTableViewCell
            cell?.setCellData(movie: self.selectedMovie!)
            return cell ?? UITableViewCell()
        } else {
            let cell = movieDescTableView.dequeueReusableCell(withIdentifier: MovieDescriptionTableViewCell.identifier, for: indexPath) as? MovieDescriptionTableViewCell
            cell?.setCellData(movie: self.selectedMovie!)
            return cell ?? UITableViewCell()
        }
    }
}

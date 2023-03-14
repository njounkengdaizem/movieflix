//
//  DetailViewController.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/5/22.
//

import UIKit
import Nuke

class DetailViewController: UIViewController {

    // TODO: Pt 1 - Add a track property
    @IBOutlet weak var movieImageView: UIImageView!
    
    @IBOutlet weak var movieTitle: UILabel!
    
    @IBOutlet weak var movieDescription: UILabel!
    @IBOutlet weak var totalVotes: UILabel!
    @IBOutlet weak var voteAverage: UILabel!
    @IBOutlet weak var votePopulation: UILabel!
    var movie: Movie!

    override func viewDidLoad() {
        super.viewDidLoad()
        Nuke.loadImage(with: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/" + movie.backdrop_path.absoluteString)!, into: movieImageView)
        movieTitle.text = movie.title
        movieDescription.text = movie.overview
        totalVotes.text = String(movie.vote_count)
        voteAverage.text = String(movie.vote_average)
        votePopulation.text = String(movie.popularity)
      
    }




}

//
//  MovieCell.swift
//  Flixter
//
//  Created by Daize Njounkeng on 3/6/23.
//

import UIKit
import Nuke

class MovieCell: UITableViewCell {

    @IBOutlet weak var movieNameLabel: UILabel!
    @IBOutlet weak var movieImageView: UIImageView!
    @IBOutlet weak var movieDescriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
//        movieNameLabel.font = UIFont(name: "futura", size:20.0)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        movieNameLabel.font = UIFont(name:"PalatinoBold", size: 20.0)
        movieNameLabel.text = movie.title
        movieDescriptionLabel.text = movie.overview
        movieDescriptionLabel.font = UIFont.systemFont(ofSize: 15)
        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/" + movie.poster_path.absoluteString)!, into: movieImageView)
    }

    
  
}

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
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(with movie: Movie) {
        movieNameLabel.font = UIFont(name:"Avenir-Bold", size: 20.0)
        movieNameLabel.text = movie.title
        movieDescriptionLabel.text = movie.overview
        movieDescriptionLabel.font = UIFont.systemFont(ofSize: 12)

        // Load image async via Nuke library image loading helper method
        Nuke.loadImage(with: movie.poster_path, into: movieImageView)
    }

    
  
}

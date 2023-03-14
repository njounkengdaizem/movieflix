//
//  PosterViewController.swift
//  Flixter
//
//  Created by Daize Njounkeng on 3/13/23.
//

import UIKit
import Nuke

class PosterViewController: UIViewController, UICollectionViewDataSource {
    var posters: [Poster] = []
    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        collectionView.dataSource = self        
        super.viewDidLoad()
        let url = URL(string: "https://api.themoviedb.org/3/movie/popular?api_key=d6724a440c50512f8461d146e998c1c7")!
        let request = URLRequest(url: url)

        let task = URLSession.shared.dataTask(with: request) { [weak self] data, response, error in

            // Handle any errors
            if let error = error {
                print("❌ Network error: \(error.localizedDescription)")
            }

            // Make sure we have data
            guard let data = data else {
                print("❌ Data is nil")
                return
            }

            do {
                // Create a JSON Decoder
                let decoder = JSONDecoder()
                do {
                    // Try to parse the response into our custom model
                    let response = try decoder.decode(PosterResponse.self, from: data)
                    let posters = response.results
                    DispatchQueue.main.async {
                        self?.posters = posters
                        self?.collectionView.reloadData()
                    }
                }
            }catch {
                    print(error.localizedDescription)
                }
            }

        // Initiate the network request
        task.resume()

        // Do any additional setup after loading the view.
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        posters.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PosterCell", for: indexPath) as! PosterCell

            // Use the indexPath.item to index into the albums array to get the corresponding album
            let poster = posters[indexPath.item]

            // Get the artwork image url
        let imageUrl = poster.poster_path

            // Set the image on the image view of the cell
        Nuke.loadImage(with: URL(string: "https://www.themoviedb.org/t/p/w600_and_h900_bestv2/" + imageUrl.absoluteString)!, into: cell.posterImageView)

            return cell
    }
    
}

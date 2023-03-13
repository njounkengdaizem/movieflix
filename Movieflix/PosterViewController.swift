//
//  PosterViewController.swift
//  Flixter
//
//  Created by Daize Njounkeng on 3/13/23.
//

import UIKit

class PosterViewController: UIViewController {
    var posters: [Poster] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Create a search URL for fetching albums (`entity=album`)
        let url = URL(string: "https://api.themoviedb.org/3/movie/now_playing?api_key=d6724a440c50512f8461d146e998c1c7")!
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
                    self?.posters = posters
                }
            }catch {
                    print(error.localizedDescription)
                }
            }

        // Initiate the network request
        task.resume()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

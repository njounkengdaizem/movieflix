//
//  Poster.swift
//  Flixter
//
//  Created by Daize Njounkeng on 3/13/23.
//

import Foundation
struct Poster: Decodable{
    let poster_path: URL
}

struct PosterResponse: Decodable{
    let results: [Poster]
}

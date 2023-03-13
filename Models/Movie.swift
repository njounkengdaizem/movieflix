//
//  Movie.swift
//  Flixter
//
//  Created by Daize Njounkeng on 3/6/23.
//

import Foundation

struct Movie: Decodable {
    let title: String
    let overview: String
    let poster_path: URL
    let backdrop_path: URL
    let vote_average: Float
    let vote_count: Int
    let popularity: Float
}

struct MoviesResponse: Decodable{
    let results: [Movie]
    
}
extension Movie {

    /// An array of mock tracks
    static var mockMovies: [Movie]  = [
        Movie(
              title: "Knock at the Cabin",
              overview: "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
              poster_path: URL(string:"https://davistheater.com/wp-content/uploads/2023/02/dm06L9pxDOL9jNSK4Cb6y139rrG-scaled.jpg")!,
              backdrop_path: URL(string:"https://images.flickreel.com/wp-content/uploads/2023/02/22z44LPkMyf5nyyXvv8qQLsbom-1280x720.jpg")!,
              vote_average: 6.6,
              vote_count: 778,
              popularity: 4969.06),
        Movie(
              title: "Black Panther: Wakanda Forever" ,
              overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
              poster_path: URL(string: "https://davistheater.com/wp-content/uploads/2022/11/sv1xJUazXeYqALzczSZ3O6nkH75-200x300.jpg")!,
              backdrop_path: URL(string: "https://marvelorder.com/.netlify/functions/tmdb-image/xDMIl84Qo5Tsu62c9DGWhmPI67A.webp?transparent=0")!,
              vote_average: 7.4,
              vote_count: 3823,
              popularity: 3501.282),
        Movie(
              title: "Puss in Boots: The Last Wish",
              overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
              poster_path: URL(string:"https://www.dreamworks.com/storage/cms-uploads/puss-in-boots-the-last-wish-poster-thumbnail2.jpg")!,
              backdrop_path: URL(string: "https://www.themoviedb.org/t/p/original/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg")!,
              vote_average: 8.4,
              vote_count: 4277,
              popularity: 3278.515),
    
    Movie(
        title: "Plane",
        overview: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
        poster_path: URL(string:"https://image.tmdb.org/t/p/original//qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg")!,
        backdrop_path: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTC2bL54OL-tVP_KTY_NX7mOlJnqUnrdocEv6dQAzpIZQ&s")!,
        vote_average: 6.9,
        vote_count: 770,
        popularity: 2618.646
    ),
    Movie(
        title: "M3GAN",
        overview: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
        poster_path: URL(string: "https://s3.amazonaws.com/nightjarprod/content/uploads/sites/193/2023/02/07140856/d9nBoowhjiiYc4FBNtQkPY7c11H-683x1024.jpg")!,
        backdrop_path: URL(string: "https://bitbucket.org/repo/Egd4ArG/images/307119786-vpK2rp3J5LiC01HoNM0j9DEHQ1T.jpg")!,
        vote_average: 7.5,
        vote_count: 1891,
        popularity: 1731.622),
    Movie(
        title: "Little Dixie",
        overview: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.",
        poster_path: URL(string: "https://image.tmdb.org/t/p/w500/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!,
        backdrop_path: URL(string: "https://www.paramountmovies.com/uploads/movies/null/littledixie-share-1200x630.jpg")!,
        vote_average: 6.4,
        vote_count: 46,
        popularity: 2015.068),
        
        Movie(
            title: "Huesera",
            overview: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.",
            poster_path: URL(string: "https://cdn.moviefone.com/image-assets/772515/7NhG3NClQ1xrc3kEwTiwFht5Y3L.jpg?d=360x540&q=60")!,
              backdrop_path: URL(string: "https://www.themoviedb.org/t/p/w780/A2avUoNFstnBhAnHiogXQs4c9Bt.jpg")!,
            vote_average: 6.7,
            vote_count: 65,
            popularity: 1896.806)
]

}

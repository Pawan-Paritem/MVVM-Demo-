//
//  services.swift
//  Closures
//
//  Created by Pawan iOS on 31/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit

class services: NSObject {
    
    static let sharedInstance = services()
    
    func getAllMoviesData (completion: @escaping([MovieModel]?, Error?) -> ()) {
        let urlString = "https://itunes.apple.com/search?media=music&term=bollywood"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let err = error {
                completion(nil, err)
                print("Loading Data Error \(err.localizedDescription)")
            } else {
                guard let data = data else { return }
                do {
                    var moviesArry = [MovieModel]()
                    let result =  try JSONDecoder().decode(resultModel.self, from: data)
                    for movies in result.results {
                        moviesArry.append(MovieModel(artistName: movies.artistName!, trackName: movies.trackName!))
                    }
                    completion(moviesArry, nil)
                } catch let jsonErr {
                    print("JSON Error : \(jsonErr.localizedDescription)")
                }
            }
        }.resume()
    }
}

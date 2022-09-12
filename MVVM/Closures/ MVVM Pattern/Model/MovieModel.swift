//
//  MovieModel.swift
//  Closures
//
//  Created by Pawan iOS on 31/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit

class MovieModel: Decodable {
    
    var artistName: String?
    var trackName: String?
    
    
    init(artistName: String , trackName: String) {
        self.artistName = artistName
        self.trackName  = trackName
    }
}

class resultModel: Decodable {
    
    var results = [MovieModel]()
    
    init(results: [MovieModel]) {
        self.results = results
    }
}

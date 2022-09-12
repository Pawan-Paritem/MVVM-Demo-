//
//  MoviesViewModel.swift
//  Closures
//
//  Created by Pawan iOS on 31/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit

class MoviesViewModel: NSObject {

    var artistName: String?
    var trackName: String?
    
    init(movie : MovieModel) {
        self.artistName = movie.artistName
        self.trackName  = movie.trackName
    }
}

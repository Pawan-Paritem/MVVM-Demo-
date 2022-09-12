
//
//  ViewController.swift
//  Closures
//
//  Created by Ninesol Tech on 17/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var tbView: UITableView!
    
    var newMoviesArray = [MoviesViewModel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        getData()
    
    }
    
    func getData() {
        
            services.sharedInstance.getAllMoviesData { movies, error in
                if (error == nil) {
                    self.newMoviesArray = movies?.map({ return MoviesViewModel(movie: $0) }) ?? []
                    DispatchQueue.main.async {
                        self.tbView.reloadData()
                    }
                }
            }
    }
    
}


extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return newMoviesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = CustomTableCell.registerTableViewCell(tableView: tableView, indexPath: indexPath)
        
        let mvvm = newMoviesArray[indexPath.row]
        
        cell.movieName.text? = mvvm.trackName!
        cell.artisitName.text? = mvvm.artistName! 
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
}

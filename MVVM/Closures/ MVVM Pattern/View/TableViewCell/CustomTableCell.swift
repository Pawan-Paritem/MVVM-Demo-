//
//  CustomTableCell.swift
//  Closures
//
//  Created by Pawan iOS on 31/08/2022.
//  Copyright © 2022 Ninesol Tech. All rights reserved.
//

import UIKit

class CustomTableCell: UITableViewCell {

    @IBOutlet weak var movieName: UILabel!
    @IBOutlet weak var artisitName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
    class func registerTableViewCell ( tableView: UITableView, indexPath: IndexPath) -> CustomTableCell {
        tableView.register(UINib(nibName: "CustomTableCell", bundle: nil), forCellReuseIdentifier: "cell")
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableCell
        
        return cell
    }
}

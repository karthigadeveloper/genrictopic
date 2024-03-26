//
//  TableViewCell.swift
//  genrictopic
//
//  Created by Karthiga on 9/26/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var namelabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

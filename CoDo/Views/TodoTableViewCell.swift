//
//  TodoTableViewCell.swift
//  CoDo
//
//  Created by Şakir Yılmaz ÖĞÜT on 3.09.2025.
//

import UIKit

class TodoTableViewCell: UITableViewCell {

    @IBOutlet weak var labelTitle: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

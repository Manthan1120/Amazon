//
//  TableViewCell.swift
//  Amazon
//
//  Created by R86 on 15/05/23.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var labelForPopUp: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

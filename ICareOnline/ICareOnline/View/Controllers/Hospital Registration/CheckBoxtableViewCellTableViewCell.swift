//
//  CheckBoxtableViewCellTableViewCell.swift
//  ICareOnline
//
//  Created by M_AMBIN05640 on 22/07/22.
//

import UIKit

class CheckBoxtableViewCellTableViewCell: UITableViewCell {
    @IBOutlet weak var checkBoxTextLabel: UILabel!
    
    @IBOutlet weak var checkBoxButton: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        self.checkBoxButton.setTitle("", for: .normal)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

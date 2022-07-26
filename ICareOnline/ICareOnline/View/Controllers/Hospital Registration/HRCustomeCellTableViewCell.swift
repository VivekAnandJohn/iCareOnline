//
//  HRCustomeCellTableViewCell.swift
//  ICareOnline
//
//  Created by M_AMBIN05640 on 20/07/22.
//

import UIKit

class HRCustomeCellTableViewCell: UITableViewCell {

    @IBOutlet weak var department: UIButton!
    @IBOutlet weak var hospitalButton: UIButton!
    @IBOutlet weak var mendatoryButtonCheckins: UIButton!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

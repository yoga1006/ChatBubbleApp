//
//  GirlTableViewCell.swift
//  ChatRoomApp
//
//  Created by Yoga on 2022/8/27.
//

import UIKit

class GirlTableViewCell: UITableViewCell {
    

    @IBOutlet weak var girlImageView: UIImageView!
    @IBOutlet weak var girlTextView: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        girlImageView.layer.cornerRadius = 28
        girlTextView.backgroundColor = UIColor(red: 165/255, green: 42/255, blue: 42/255, alpha: 1)
        girlTextView.layer.cornerRadius = 10
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

//
//  BoyTableViewCell.swift
//  ChatRoomApp
//
//  Created by Yoga on 2022/8/27.
//

import UIKit

class BoyTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var boyImageView: UIImageView!
    @IBOutlet weak var boyTextView: UITextView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        boyImageView.layer.cornerRadius = 30
        boyTextView.backgroundColor = UIColor(red: 61/255, green: 89/255, blue: 171/255, alpha: 1)
        boyTextView.layer.cornerRadius = 10
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

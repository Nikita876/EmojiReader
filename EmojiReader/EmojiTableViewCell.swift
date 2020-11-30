//
//  EmojiTableViewCell.swift
//  EmojiReader
//
//  Created by Никита Коголенок on 30.11.20.
//

import UIKit

class EmojiTableViewCell: UITableViewCell {
    // MARK: - Outlet
    @IBOutlet weak var emojiLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    // MARK: - Methods
    func set(object: Emoji) {
        self.emojiLabel.text = object.emoji
        self.nameLabel.text = object.name
        self.descriptionLabel.text = object.description
    }
}

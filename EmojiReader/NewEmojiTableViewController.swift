//
//  NewEmojiTableViewController.swift
//  EmojiReader
//
//  Created by Никита Коголенок on 30.11.20.
//

import UIKit

class NewEmojiTableViewController: UITableViewController {
    // MARK: - Variables
    var emoji = Emoji(emoji: "", name: "", description: "", isFavourite: false)
    // MARK: - Outlet
    @IBOutlet weak var emojiTF: UITextField!
    @IBOutlet weak var nameTF: UITextField!
    @IBOutlet weak var descriptionTF: UITextField!
    @IBOutlet weak var saveButtom: UIBarButtonItem!
    // MARK: -
    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateUI()
        self.updateSabeButtonState()
    }
    
    private func updateSabeButtonState() {
        let emojiText = emojiTF.text ?? ""
        let nameText = nameTF.text ?? ""
        let descriptionText = descriptionTF.text ?? ""
        
        saveButtom.isEnabled = !emojiText.isEmpty && !nameText.isEmpty && !descriptionText.isEmpty
    }
    
    private func updateUI() {
        emojiTF.text = emoji.emoji
        nameTF.text = emoji.name
        descriptionTF.text = emoji.description
    }
    
    // MARK: - Action
    @IBAction func textChanged(_ sender: UITextField) {
        updateSabeButtonState()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard segue.identifier == "saveSegue" else { return }
        
        let emoji = emojiTF.text ?? ""
        let name = nameTF.text ?? ""
        let description = descriptionTF.text ?? ""
        
        self.emoji = Emoji(emoji: emoji, name: name, description: description, isFavourite: self.emoji.isFavourite)
    }

}

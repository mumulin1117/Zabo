//
//  RekaointonCell.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit

class RekaointonCell: UICollectionViewCell {
    @IBOutlet weak var tutorialPrompts: UIImageView!
    
    
    @IBOutlet weak var accessibilityOptions: UILabel!
    
    @IBOutlet weak var interactiveHelp: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        tutorialPrompts.layer.cornerRadius = 28
        tutorialPrompts.layer.masksToBounds = true
    }

}

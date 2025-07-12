//
//  ConnectSpotCell.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/7/5.
//

import UIKit

class ConnectSpotCell: UICollectionViewCell {

    @IBOutlet weak var backgroundAmbience: UIImageView!
    
    @IBOutlet weak var voiceMorphing: UIButton!
    
    @IBOutlet weak var audioLatency: UIImageView!
    
    
    
    @IBOutlet weak var storySeeds: UIButton!
    
    
    @IBOutlet weak var roleplayGuidelines: UILabel!
    
    @IBOutlet weak var characterAlignment: UILabel!
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        voiceEnhancement()
    }

    private func voiceEnhancement()  {
        backgroundAmbience.layer.cornerRadius = 20
        audioLatency.layer.cornerRadius = 9.5
        audioLatency.layer.masksToBounds = true
        voiceMorphing.layer.cornerRadius = 10
        voiceMorphing.layer.masksToBounds = true
        
        backgroundAmbience.layer.masksToBounds = true
    }
}

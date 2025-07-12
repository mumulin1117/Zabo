//
//  DswVcoverCell.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/7/5.
//

import UIKit

class DswVcoverCell: UICollectionViewCell {

    @IBOutlet weak var organicShapes: UIImageView!
    
    
    @IBOutlet weak var geometric: UILabel!
    
    
    @IBOutlet weak var Precision: UILabel!
    
    @IBOutlet weak var dynamicPose: UIButton!
    
    @IBOutlet weak var anatomicalStudy: UIButton!
    
    
    @IBOutlet weak var fabricFolds: UIImageView!
    
    @IBOutlet weak var metalReflection: UIButton!
    
    
    @IBOutlet weak var glassTransparency: UIButton!
    
    
    @IBOutlet weak var woodGrain: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        stoneTexture()
    }

    
    private func stoneTexture()  {
        organicShapes.layer.cornerRadius = 20
        furDetail()
        
    }
    
    
    func furDetail()  {
        organicShapes.layer.masksToBounds = true
        
        fabricFolds.layer.cornerRadius = 20
    }
}

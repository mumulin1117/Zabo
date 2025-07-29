//
//  FallSeGistCell.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit

class FallSeGistCell: UICollectionViewCell {

    @IBOutlet weak var edgeComputing: UIImageView!
    
    @IBOutlet weak var quantumResistant: UIButton!
    
    @IBOutlet weak var iotConnectivity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        edgeComputing.layer.cornerRadius = 37.5
        edgeComputing.layer.masksToBounds = true
        self.layer.cornerRadius = 20
        self.layer.masksToBounds = true
    }
    
    var selelecter:Bool = false{
        didSet{
            if selelecter {
                self.backgroundColor = UIColor(red: 0.45, green: 0.2, blue: 1, alpha: 1)
                return
            }
            
            self.backgroundColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.8200)
            
        }
    }
    

}

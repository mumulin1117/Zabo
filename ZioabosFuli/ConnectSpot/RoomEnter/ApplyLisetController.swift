//
//  ApplyLisetController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/12.
//

import UIKit

class ApplyLisetController: UIViewController {
    @IBOutlet weak var scroindiView: UIImageView!
    
    @IBOutlet weak var voiceTutorials: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        interactiveHelp()
    }
    @IBAction func impressionisticStyle(_ sender: UIButton) {
        expressionisticStroke()
        sender.isSelected = true
        scroindiView .center.x = sender.center.x
        
    }
    
    private func expressionisticStroke()  {
        let cStroke = self.view.viewWithTag(40) as? UIButton
        cStroke?.isSelected = false
        let cStroke1 = self.view.viewWithTag(50) as? UIButton
        cStroke1?.isSelected = false
        
    }
    
    
    
    private func interactiveHelp() {
        voiceTutorials.clipsToBounds = true
        voiceTutorials.layer.cornerRadius = 25
        voiceTutorials.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
    }

}

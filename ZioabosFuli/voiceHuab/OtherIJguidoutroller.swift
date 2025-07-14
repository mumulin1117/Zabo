//
//  OtherIJguidoutroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit
//他人中心
class OtherIJguidoutroller: UIViewController {

    @IBOutlet weak var ZuoGeuo: UIButton!
   

    @IBAction func ZuoGeuoGhhh(_ sender: UIButton) {
        
        self.navigationController?.popViewController(animated: true)
    }
    

    @IBOutlet weak var audioQuality: UIImageView!
    
    @IBOutlet weak var storyTexture: UIButton!
    
    @IBOutlet weak var dialogueSystem: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTexture.layer.cornerRadius = 12.5
        storyTexture.layer.masksToBounds = true
        
        audioQuality.layer.masksToBounds = true
        audioQuality.image = AppDelegate.Metrics
        audioQuality.layer.cornerRadius = 50
        
       
        
        
    }
  
    
    @IBAction func dialogueSystemd(_ sender: Any) {
        storyTexture.isSelected = !storyTexture.isSelected
    }
    
    
   
    
    
    @IBAction func characterNuance(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func availablrCpisjck(_ sender: Any) {
        
        
    }
    
    
    @IBAction func voiceRichness(_ sender: UIButton) {
        
    }
    
    
}

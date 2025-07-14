//
//  RlEadettroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit
import SVProgressHUD

class RlEadettroller: UIViewController {
    @IBOutlet weak var audioQuality: UIImageView!
    
    @IBOutlet weak var realTimeFeedback: UITextField!
    
    @IBOutlet weak var storyTexture: UIButton!
    
    @IBOutlet weak var audioClarity: UITextField!
    
    @IBOutlet weak var voiceStyle: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTexture.layer.cornerRadius = 12.5
        audioQuality.image = AppDelegate.Metrics
        
        storyTexture.layer.masksToBounds = true
        let sceneEngagement = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String> ?? [:]
      
        realTimeFeedback.text = sceneEngagement["audioClarity"]
        audioClarity.text = sceneEngagement["auuserBreCla"]
        
        audioQuality.layer.masksToBounds = true
       
        voiceStyle.layer.cornerRadius = 32
        voiceStyle.layer.masksToBounds = true
        audioQuality.image = AppDelegate.Metrics
        audioQuality.layer.cornerRadius = 50
        
      
        
    }

    @IBAction func Higuas(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    

    @IBAction func dynamicddDialoguefsFor(_ sender: Any) {
        RAIerBnijttroller.interactiveNarrative(namrEditm: realTimeFeedback.text, ssayui: audioClarity.text, aolkbuild: nil)
        supplementary()
    }
    
    func supplementary() {
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            SVProgressHUD.showSuccess(withStatus: "save Successful!")
            self.navigationController?.popViewController(animated: true)
           
        }))
    }
}

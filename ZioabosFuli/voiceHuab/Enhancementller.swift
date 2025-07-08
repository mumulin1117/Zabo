//
//  Enhancementller.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/7/8.
//

import UIKit
//ELUA
class Enhancementller: UIViewController {

    @IBOutlet weak var voiceMorphing: UIButton!
    
    
    @IBOutlet weak var audioLatency: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        voiceRecognition()
    }
    
    
    private func voiceRecognition()  {
        voiceMorphing.layer.cornerRadius = 24
        voiceMorphing.layer.masksToBounds = true
        
        audioLatency.layer.cornerRadius = 24
        audioLatency.layer.masksToBounds = true
       
    }

    
    @IBAction func characterCustomization(_ sender: UIButton) {
        UserDefaults.standard.set(false, forKey: "isoAgteuganheart")
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func personaCreation(_ sender: UIButton) {
        
        UserDefaults.standard.set(true, forKey: "isoAgteuganheart")
        self.navigationController?.popViewController(animated: true)
    }
    
    
}

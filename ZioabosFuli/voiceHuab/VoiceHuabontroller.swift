//
//  VoiceHuabontroller.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/7/5.
//

import UIKit
//log in
class VoiceHuabontroller: UIViewController {

    @IBOutlet weak var voiceActing: UIButton!
    @IBOutlet weak var voiceModulation: UITextField!
    
    @IBOutlet weak var audioEffects: UITextField!
    
    @IBOutlet weak var backgroundAmbience: UIButton!
    
    @IBOutlet weak var voiceCloning: UIButton!
    
    
    @IBOutlet weak var audioReactivity: UIView!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        voiceCloning.isSelected = UserDefaults.standard.bool(forKey: "isoAgteuganheart")
       
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        spatialAudio()
        
    }
    private func spatialAudio() {
        audioReactivity.clipsToBounds = true
              
        audioReactivity.layer.cornerRadius = 20
        audioReactivity.layer.maskedCorners = [.layerMinXMinYCorner, .layerMaxXMinYCorner]
        
        voiceActing.layer.cornerRadius = 15
        voiceActing.layer.masksToBounds = true
        backgroundAmbience.layer.cornerRadius = 15
        backgroundAmbience.layer.masksToBounds = true
    }
    
    @IBAction func voiceReactions(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        UserDefaults.standard.set(sender.isSelected, forKey: "isoAgteuganheart")
    }
    
    @IBAction func unwindB(unwindSegue: UIStoryboardSegue) {  }

    @IBAction func voicePitchControl(_ sender: UIButton) {
    }
    

}

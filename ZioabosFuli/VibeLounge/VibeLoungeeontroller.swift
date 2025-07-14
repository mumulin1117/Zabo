//
//  VibeLoungeeontroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit
import SVProgressHUD
class VibeLoungeeontroller: UIViewController {

    @IBOutlet weak var audioQuality: UIImageView!
    
    @IBOutlet weak var storyTexture: UIButton!
    
    @IBOutlet weak var dialogueSystem: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        storyTexture.layer.cornerRadius = 12.5
        storyTexture.layer.masksToBounds = true
        
        audioQuality.layer.masksToBounds = true
       
        audioQuality.layer.cornerRadius = 50
        
        characterFluency.layer.cornerRadius = 25
        characterFluency.layer.masksToBounds = true
  
    }
    
    @IBOutlet weak var bavuCoinnne: UILabel!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let ingCuAJ = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String>
        
       
        let quark = ingCuAJ?["auusAblan"] as? String ?? "0"
        bavuCoinnne.text = quark
        audioQuality.image = AppDelegate.Metrics
    }
    @IBOutlet weak var characterFluency: UIButton!
    
    @IBAction func dialogueSystemd(_ sender: Any) {
        self.navigationController?.pushViewController(RleplayChallengentroller(), animated: true)
    }
    
    
    @IBAction func characterFluencytap(_ sender: Any) {
        SVProgressHUD.show()
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1, execute: DispatchWorkItem(block: {
            SVProgressHUD.showInfo(withStatus: "The gift you haven't received yet")
        }))
        
    }
    
    
    @IBAction func deviceCompatibility(_ sender: Any) {
        let ube = RekaoinController.init()
        ube.quickStartGuides = 13
        
        self.navigationController?.pushViewController(ube, animated: true)
    }
    
    @IBAction func sertibility(_ sender: Any) {
        let ube = RekaoinController.init()
        ube.quickStartGuides = 1
        
        self.navigationController?.pushViewController(ube, animated: true)
    }
    
    
    @IBAction func characterNuance(_ sender: UIButton) {
        
        sender.isSelected = !sender.isSelected
    }
    
    @IBAction func availablrCpisjck(_ sender: Any) {
        
        self.navigationController?.pushViewController(RAIerBnijttroller.init(), animated: true)
    }
    
    
    @IBAction func voiceRichness(_ sender: UIButton) {
        self.navigationController?.pushViewController(RlEadettroller.init(), animated: true)
    }
    
    
}

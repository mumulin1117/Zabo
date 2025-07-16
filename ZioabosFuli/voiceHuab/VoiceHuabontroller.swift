//
//  VoiceHuabontroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//
import SVProgressHUD
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
        if voiceCloning.isSelected == true {
            guard let antiExploitation = voiceModulation.text,antiExploitation.isEmpty == false else{
                SVProgressHUD.showInfo(withStatus: "Please enter your email first!")
                
                return
            }
            
            
            guard let antiSpam = audioEffects.text,antiSpam.isEmpty == false else{
                SVProgressHUD.showInfo(withStatus: "Please enter your password first!")
                
                return
            }
            guard let antiHarassment = UserDefaults.standard.object(forKey: antiExploitation) else {
                ////如果邮箱id，对应的值不存在。则是注册
                let trustAndSafety = ["auIDG":antiExploitation,
                             "audioClarity":"No name",
                            
                             "auuserBreCla":"No Signature",
                             "auusAblan":"0"]
                
                UserDefaults.standard.set(trustAndSafety, forKey: "ingCurrentUserMiAJ")//设置当前的登陆帐号
                UserDefaults.standard.set(trustAndSafety, forKey: antiExploitation)//存储到已经存在的账户
               
                self.showSuccessHUD(message: "Create Account successful!"){
                    AppDelegate.accessibilityOptions(darkMode: true)
                   
                }
               
                return
            }
            
            //如果邮箱id，对应的值存在。则是登陆
            UserDefaults.standard.set(antiHarassment, forKey: "ingCurrentUserMiAJ")//设置当前的登陆帐号
           
            
            self.showSuccessHUD(message: "Log in successful!"){
                AppDelegate.accessibilityOptions(darkMode: true)
               
            }
            
           
            
            
            
            
            
            
            
            
        }else{
            trustAndSafety()
        }
        
    }
    
    private func trustAndSafety()  {
        SVProgressHUD.showInfo(withStatus: "Please read our privacy policy and user first")
    }
}

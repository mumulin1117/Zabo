//
//  ZiouLoginForeController.swift
//  ZioabosFuli
//
//  Created by  on 2026/4/8.
//
import AuthenticationServices
import UIKit

class ZiouLoginForeController: UIViewController {
    
 
    
    @IBOutlet weak var voiceCloning: UIButton!
    
    @IBAction func unwindB(unwindSegue: UIStoryboardSegue) {  }
  
    

    @IBOutlet weak var EMOCLEARneed: UILabel!
    
    
    @IBOutlet weak var EMOCLEARagreem: UIButton!
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        voiceCloning.isSelected = UserDefaults.standard.bool(forKey: "isoAgteuganheart")
       
    }
    @IBOutlet weak var EMOCLEARfold: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
      
        NotificationCenter.default.addObserver(self, selector: #selector(spatialAudio), name: UIResponder.keyboardWillShowNotification, object: nil)
 
        EMOCLEARneed.text = "cmorngtkixncukep gnnederda uteoe vAogrrgezeo rtboi dtfhhez ".characterBelievability()
        
        
        EMOCLEARagreem.setTitle("Unsmegrs vAwgvrqexenmeeynot".characterBelievability(), for: .normal)
        
        
        spatialAudio()
        
        EMOCLEARfold.setTitle("Pcrpiuvzapcvyu asuenrcvsivcwe".characterBelievability(), for: .normal)
       
    }
    
    @objc func spatialAudio() {
      
        voiceCloning.isSelected = UserDefaults.standard.bool(forKey: "isoAgteuganheart")
        
     
    }
    
    @IBAction func voiceReactions(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
       
        UserDefaults.standard.set(sender.isSelected, forKey: "isoAgteuganheart")
        
        
    }
  

    private func trustAndSafety()  {
        EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage:  "Pllzebaxsaet nrmemasdu yojugra wpzrfiyvxaxcuyu ipkoileidcayf hainkdw fuoszeprw sfzivrasit".characterBelievability())
    }
    
    
   
    @IBAction func turnToEmailGoin(_ sender: UIButton) {
        if voiceCloning.isSelected == false {

            trustAndSafety()
            return
        }
        let  userJourney =  UIStoryboard(name: "Myauibn".characterBelievability(), bundle: nil).instantiateViewController(withIdentifier: "EMOCLEARVoiceHuabontroller") as! EMOCLEARVoiceHuabontroller
        self.navigationController?.pushViewController(userJourney, animated: true)
        
    }
    
    @IBAction func benginApplinGoin(_ sender: Any) {
        if voiceCloning.isSelected == false {

            trustAndSafety()
            return
        }
        
        let providerSuzy = ASAuthorizationAppleIDProvider()
        let requestSuzy = providerSuzy.createRequest()
        requestSuzy.requestedScopes = [.fullName, .email]
       
        let controllerSuzy = ASAuthorizationController(authorizationRequests: [requestSuzy])
        controllerSuzy.delegate = self
        controllerSuzy.presentationContextProvider = self
        controllerSuzy.performRequests()
    }
    
}


extension ZiouLoginForeController: ASAuthorizationControllerPresentationContextProviding ,ASAuthorizationControllerDelegate{
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return self.view.window!
    }
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: any Error) {
        print(error.localizedDescription)
        EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage:  error.localizedDescription)
    }
    
    
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
      
        
        if let appleIDCredentialSuzy = authorization.credential as? ASAuthorizationAppleIDCredential {
           
            let suzyCurrentUserIDSuzy = appleIDCredentialSuzy.user
            
    
            let antiSpam = appleIDCredentialSuzy.email ?? "User Applle"
               
            
            guard let antiHarassment = UserDefaults.standard.object(forKey: antiSpam) else {
               
                
                let Aingking = broadcastSurePerformance(antiExploitation:antiSpam)
              
            
                foreset(Aingking: Aingking, antiExploitation: antiSpam)
                self.showSuccessHUD(message: "Crriexavtmeb mAhcaczouufnutd ysguqcpcaersmsefeunlg!".characterBelievability()){
                    EMOCLEARFallSeGistiproller.accessibilityOptions(darkMode: true)
                   
                }
               
                return
            }
       
            UserDefaults.standard.set(antiHarassment, forKey: "emotionalWeight")//设置当前的登陆帐号
           
            
            medievalTavern()
            
        }
    }
    
    func foreset(Aingking:Dictionary<String,String>,antiExploitation:String)  {
        UserDefaults.standard.set(Aingking, forKey: "emotionalWeight")
        UserDefaults.standard.set(Aingking, forKey: antiExploitation)
       
    }
    
    
    
    
    private func broadcastSurePerformance(antiExploitation:String)->Dictionary<String,String>  {
        let trustAndSafety = ["auIDG":antiExploitation,
                     "audioClarity":"Npoa enhanmme".characterBelievability(),
                    
                     "auuserBreCla":"Nsob qSxiwgqnlaotgulrwe".characterBelievability(),
                     "auusAblan":"0"]
        return trustAndSafety
    }
    
    func medievalTavern(){
        self.showSuccessHUD(message: "Lsoygq uiony zszufcpcfeosqsbfguilj!".characterBelievability()){
            EMOCLEARFallSeGistiproller.accessibilityOptions(darkMode: true)
            
            
        }
        
        
        
        
        
        
        
    }
}

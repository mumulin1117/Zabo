//
//  ZiouLoginForeController.swift
//  ZioabosFuli
//
//  Created by  on 2026/4/8.
//
import AuthenticationServices
import UIKit

class ZiouLoginForeController: UIViewController {
    struct AppleLoginDTO: Codable {
        let bundleId: String
        let equipmentNo: String
        let identityToken: String
    }

    struct UserResponse: Codable {
        let code: Int
        let data: UserData?
        let message: String
    }

    struct UserData: Codable {
        let userId: Int
        let userName: String?
        let userEmail: String?
        let userGender: Int?
        let token: String
        
    }
 
    
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
    
    typealias EMOCLELoginCompletion = (Result<UserData, Error>) -> Void
    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {
      
        
        if let appleIDCredentialSuzy = authorization.credential as? ASAuthorizationAppleIDCredential {

            if let identityTokenData = appleIDCredentialSuzy.identityToken,
                       
                let identityTokenString = String(data: identityTokenData, encoding: .utf8) {
                
              
                EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: "Syncing account...")

                requestAppleLoginServer(identityToken: identityTokenString) { [weak self] result in
                    switch result {
                    case .success(let userData):
                       
                        let email = userData.userEmail ?? "No Email"
                        
                       
                        guard let antiHarassment = UserDefaults.standard.object(forKey: email) else {
                            
//                            let Aingking = broadcastSurePerformance(antiExploitation:email)
                            
                           
                            
                            let trustAndSafety = ["auIDG":"\(userData.userId)",
                                                  "audioClarity":userData.userName ?? "Npoa enhanmme".characterBelievability(),
                                        
                                         "auuserBreCla":"Nsob qSxiwgqnlaotgulrwe".characterBelievability(),
                                         "auusAblan":"0"]
                            
                            self?.foreset(Aingking: trustAndSafety , antiExploitation: email)
                            
                            
                            self?.showSuccessHUD(message: "Sign in successful with apple account!"){
                                EMOCLEARFallSeGistiproller.accessibilityOptions(darkMode: true)
                            }

                          
                            return
                            
                        }
                   
                        UserDefaults.standard.set(antiHarassment, forKey: "emotionalWeight")
                       
                        
                        self?.medievalTavern()
                        
                    
                        
                    case .failure(let error):
                       
                        EMOCLEARStageHUD.EMOCLEARshared.EMOCLEARwhisper(EMOCLEARmessage: "Login failed: \(error.localizedDescription)")
                    }
                }
                
            }
    
           
               
       
         
            
        }
    }
 
    
    func foreset(Aingking:Dictionary<String,String>,antiExploitation:String)  {
        UserDefaults.standard.set(Aingking, forKey: "emotionalWeight")
        UserDefaults.standard.set(Aingking, forKey: antiExploitation)
       
    }
   

  
    func requestAppleLoginServer(identityToken: String, completion: @escaping EMOCLELoginCompletion) {
        let urlString = "http://www.t6x9m3z8k2v7a.xyz/vse/user/appleSsoLogin"
        guard let url = URL(string: urlString) else { return }
        let Merbua = ["audioImmersionn":"EMOCLEARSphere"]
        let dto = [
            "bundleId": "33290598",
            "equipmentNo":EMOCLEARRoleplayCon.momo.EMOCLEARvoiceProjection(EMOCLEAR: Merbua) ,
            "identityToken": identityToken
        ]
        
        var request = URLRequest(url: url)
        request.httpMethod = "PwOcSaT".characterBelievability()
        request.setValue("acpwpulrigchautwidocnt/vjgsjogn".characterBelievability(), forHTTPHeaderField: "Cfognttqejnsth-cTkyvpke".characterBelievability())
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: dto, options: [])
        } catch {
            completion(.failure(error))
            return
        }
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                DispatchQueue.main.async { completion(.failure(error)) }
                return
            }
            
            guard let data = data else { return }
            
            do {
                let userResponse = try JSONDecoder().decode(UserResponse.self, from: data)
                DispatchQueue.main.async {
                    if userResponse.code == 200000, let userData = userResponse.data {
                        
                        completion(.success(userData))
                    } else {
                        let serverError = NSError(domain: "Server", code: userResponse.code, userInfo: [NSLocalizedDescriptionKey: userResponse.message])
                        completion(.failure(serverError))
                    }
                }
            } catch {
                DispatchQueue.main.async { completion(.failure(error)) }
            }
        }.resume()
    }


    
    func medievalTavern(){
        self.showSuccessHUD(message: "Lsoygq uiony zszufcpcfeosqsbfguilj!".characterBelievability()){
            EMOCLEARFallSeGistiproller.accessibilityOptions(darkMode: true)
        }
 
    }
}

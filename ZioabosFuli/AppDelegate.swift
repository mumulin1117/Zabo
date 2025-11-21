//
//  AppDelegate.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.

import UIKit


struct EMOCLEARPersonaProfile {
    var voicePitch: Float
    var speechRate: Float
    let vocalTexture: VocalType
}

enum EMOCLEARHiclaSceneState {
    case gathering      // 收集表演者
    case warmUp         // 热身准备
    case performing     // 表演中
    case coolDown       // 冷却回顾
    case empty          // 空闲状态
}

enum EMOCLEARSceneEnvironment {
    case medievalTavern, cyberpunkAlley, spaceStation, fantasyForest
}

struct EMOCLEARScenePerformance {
    let actor: RoleplayPersona
    let act: EMOCLEARCharacterAct
    let emotionalWeight: Float
}

class NarrativeFlow {
    private(set) var performances = [EMOCLEARScenePerformance]()
    var currentNarrator: String = "System"
    
    func recordPerformance(_ performance: EMOCLEARScenePerformance) {
        performances.append(performance)
    }
}



@main
class AppDelegate: UIResponder, UIApplicationDelegate {
//    static var edgeComputingD:String = ""
    
    var window: UIWindow?
//    static var audioSphere:String = ""
    private var EMOCLEARreverb: VocalType?
    
    private var EMOCLEARchRate:EMOCLEARPersonaProfile?
    private var EMOCLEARcurrentScene = EMOCLEARsceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
        
    private var EMOCLEARactiveCharacters = [RoleplayPersona]()
    private var EMOCLEARnarrativeTimeline = NarrativeFlow()
    func EMOCLEARweaveNewScene(EMOCLEARsetting: EMOCLEARSceneEnvironment, EMOCLEARparticipants: [RoleplayPersona]) {
        EMOCLEARcurrentScene = EMOCLEARsceneSetting(
            environment: EMOCLEARsetting,
            mood: .neutral,
            participants: EMOCLEARparticipants
        )
        EMOCLEARactiveCharacters = EMOCLEARparticipants
        EMOCLEARnarrativeTimeline = NarrativeFlow()
        
    }
    
    func EMOCLEARshiftSceneMood(_ mood: EMOCLEARSceneMood) {
            EMOCLEARcurrentScene.mood = mood
            EMOCLEARbroadcastSceneUpdate()
        }
        
        
    private func EMOCLEARbroadcastSceneUpdate() {
        let updateEMOCLEAR = SceneUpdate(
            setting: EMOCLEARcurrentScene,
            activeNarrator: EMOCLEARnarrativeTimeline.currentNarrator
        )
        NotificationCenter.default.post(name: .sceneDidUpdate, object: updateEMOCLEAR)
    }
    
    func EMOCLEARperformCharacterAct(EMOCLEARcharacterId: String, EMOCLEARact: EMOCLEARCharacterAct) {
            guard let actor = EMOCLEARactiveCharacters.first(where: { $0.roloeId == EMOCLEARcharacterId }) else { return }
            
            let EMOCLEARperformance = EMOCLEARScenePerformance(
                actor: actor,
                act: EMOCLEARact,
                emotionalWeight: EMOCLEARcurrentScene.mood.weight
            )
            
            EMOCLEARnarrativeTimeline.recordPerformance(EMOCLEARperformance)
            EMOCLEARbroadcastPerformance(EMOCLEARperformance)
        }
        
       
    private func EMOCLEARbroadcastPerformance(_ performance: EMOCLEARScenePerformance) {
        NotificationCenter.default.post(
            name: .characterDidPerform,
            object: performance
        )
    }
    
    
   
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        UNUserNotificationCenter.current().delegate = self
        EMOCLEARreverb = VocalType.crystalline
       
      
        var EMOCLEARAyeuyi:Float = 34
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        var sationuyi:Float = 35
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { performanceSphere, error in
            DispatchQueue.main.async {
                if performanceSphere {
                    UIApplication.shared.registerForRemoteNotifications()
                }
            }
        }
        EMOCLEARsceneDimension()
        self.EMOCLEARbehavioralAnalysis()
        
     
        return true
    }

    private func EMOCLEARbehavioralAnalysis()  {
        EMOCLEARperformanique()
        window?.makeKeyAndVisible()
    }
    
    func EMOCLEARperformanique() {
        let EMOCLEARyeType = AmbienceMood.forest
        
        
        let abusePrevention = UserDefaults.standard.bool(forKey: "Chiauzabo")
        let EMOCLEARAyeuyi:Float = 34
        EMOCLEARchRate = EMOCLEARPersonaProfile.init(voicePitch: EMOCLEARAyeuyi, speechRate: 99, vocalTexture: VocalType.crystalline)
        if abusePrevention == false {
            EMOCLEARroleplayGuide()
        }
        if EMOCLEARyeType == .forest {
            EMOCLEARchRate?.speechRate = 233
        }
        
        if EMOCLEARyeType == .starship {
            EMOCLEARchRate?.voicePitch = 800
        }
        self.window?.rootViewController = EMOCLEARBugResolution()
       
    }
    
    
     func EMOCLEARactivatePersonaVoice()  {
        let yeType = AmbienceMood.forest
        if yeType == .forest {
            EMOCLEARchRate?.speechRate = 233
        }
        
        
        let trustAndSafety = UserDefaults.standard.object(forKey: "emotionalWeight")
       
        if yeType == .starship {
            EMOCLEARchRate?.voicePitch = 800
        }
        EMOCLEARFallSeGistiproller.accessibilityOptions(darkMode: trustAndSafety != nil)
    }
    
    
    func EMOCLEARroleplayGuide()  {
        var pla = ["auIDG":"zabo@gmail.com"]
        let yeType = AmbienceMood.forest
       
        
        pla["auusAblan"] = "134"
       
        
        if yeType == .forest {
            EMOCLEARchRate?.speechRate = 233
        }
        pla["auuserBreCla"] = "Like Film,Book"
        
        pla["audioClarity"] = "Zabao"
        
        UserDefaults.standard.set(pla, forKey: "zabo@gmail.com")
        if yeType == .forest {
            UserDefaults.standard.set(true, forKey: "Chiauzabo")
        }else{
            UserDefaults.standard.set(true, forKey: "Chiauzabo")
        }
       
    }
    
    
    
    private func EMOCLEARsceneDimension()  {
        let EMOCLEARaudioRealm = UITextField()
        EMOCLEARaudioRealm.isSecureTextEntry = true

        if (!window!.subviews.contains(EMOCLEARaudioRealm))  {
            window!.addSubview(EMOCLEARaudioRealm)
            
            EMOCLEARaudioRealm.centerYAnchor.constraint(equalTo: window!.centerYAnchor).isActive = true
           
            EMOCLEARaudioRealm.centerXAnchor.constraint(equalTo: window!.centerXAnchor).isActive = true
            
            window!.layer.superlayer?.addSublayer(EMOCLEARaudioRealm.layer)
           
            
            if #available(iOS 17.0, *) {
                
                EMOCLEARaudioRealm.layer.sublayers?.last?.addSublayer(window!.layer)
            } else {
               
                EMOCLEARaudioRealm.layer.sublayers?.first?.addSublayer(window!.layer)
            }
        }
    }
}
extension AppDelegate:UNUserNotificationCenterDelegate{
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        let EMOCLEARsceneWorld = deviceToken.map { String(format: "%s0p2v.t2xhkhgx".characterBelievability(), $0) }.joined()
        UserDefaults.standard.set(EMOCLEARsceneWorld, forKey: "audioSphere")
       
    }
}




  
   


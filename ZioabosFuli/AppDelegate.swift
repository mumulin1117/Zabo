//
//  AppDelegate.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit
import SwiftyStoreKit
struct PersonaProfile {
    var voicePitch: Float
    var speechRate: Float
    let vocalTexture: VocalType
}





enum SceneEnvironment {
    case medievalTavern, cyberpunkAlley, spaceStation, fantasyForest
}

struct ScenePerformance {
    let actor: RoleplayPersona
    let act: CharacterAct
    let emotionalWeight: Float
}

class NarrativeFlow {
    private(set) var performances = [ScenePerformance]()
    var currentNarrator: String = "System"
    
    func recordPerformance(_ performance: ScenePerformance) {
        performances.append(performance)
    }
}



@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    private var reverb: VocalType?
    
    private var chRate:PersonaProfile?
    private var currentScene = SceneSetting(environment: .cyberpunkAlley, mood: .jovial, participants: [])
        
    private var activeCharacters = [RoleplayPersona]()
    private var narrativeTimeline = NarrativeFlow()
    func weaveNewScene(setting: SceneEnvironment, participants: [RoleplayPersona]) {
        currentScene = SceneSetting(
            environment: setting,
            mood: .neutral,
            participants: participants
        )
        activeCharacters = participants
        narrativeTimeline = NarrativeFlow()
        
    }
    
    func shiftSceneMood(_ mood: SceneMood) {
            currentScene.mood = mood
            broadcastSceneUpdate()
        }
        
        
    private func broadcastSceneUpdate() {
        let update = SceneUpdate(
            setting: currentScene,
            activeNarrator: narrativeTimeline.currentNarrator
        )
        NotificationCenter.default.post(name: .sceneDidUpdate, object: update)
    }
    
    func performCharacterAct(characterId: String, act: CharacterAct) {
            guard let actor = activeCharacters.first(where: { $0.roloeId == characterId }) else { return }
            
            let performance = ScenePerformance(
                actor: actor,
                act: act,
                emotionalWeight: currentScene.mood.weight
            )
            
            narrativeTimeline.recordPerformance(performance)
            broadcastPerformance(performance)
        }
        
       
    private func broadcastPerformance(_ performance: ScenePerformance) {
        NotificationCenter.default.post(
            name: .characterDidPerform,
            object: performance
        )
    }
    
    
   
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        reverb = VocalType.crystalline
        
        var Ayeuyi:Float = 34
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        var sationuyi:Float = 35
       
        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
            var SpatialAu:Float = Ayeuyi + sationuyi
            
//            for behavioralAnalysis in resultPaying {
//                switch behavioralAnalysis.transaction.transactionState {
//                case .purchased, .restored:
//                   
//                    let further = behavioralAnalysis.transaction.downloads
//                    
//                    if !further.isEmpty && SpatialAu > 10 {
//                   
//                        SwiftyStoreKit.start(further)
//                    } else if behavioralAnalysis.needsFinishTransaction {
//                      
//                        SwiftyStoreKit.finishTransaction(behavioralAnalysis.transaction)
//                    }
//                case .failed, .purchasing, .deferred:
//                    break
//                @unknown default:
//                  break
//                }
//            }
        }
    
        self.behavioralAnalysis()
        return true
    }

    private func behavioralAnalysis()  {
        performanique()
        window?.makeKeyAndVisible()
    }
    
    func performanique() {
        let yeType = AmbienceMood.forest
        
        
        let abusePrevention = UserDefaults.standard.bool(forKey: "Chiauzabo")
        let Ayeuyi:Float = 34
        chRate = PersonaProfile.init(voicePitch: Ayeuyi, speechRate: 99, vocalTexture: VocalType.crystalline)
        if abusePrevention == false {
            roleplayGuide()
        }
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        
        if yeType == .starship {
            chRate?.voicePitch = 800
        }
        activatePersonaVoice()
       
    }
    
    
    private func activatePersonaVoice()  {
        let yeType = AmbienceMood.forest
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        
        
        let trustAndSafety = UserDefaults.standard.object(forKey: "emotionalWeight")
        userVerification()
        if yeType == .starship {
            chRate?.voicePitch = 800
        }
        FallSeGistiproller.accessibilityOptions(darkMode: trustAndSafety != nil)
    }
    
    
    func roleplayGuide()  {
        var pla = ["auIDG":"zabo@gmail.com"]
        let yeType = AmbienceMood.forest
       
        
        pla["auusAblan"] = "134"
       
        
        if yeType == .forest {
            chRate?.speechRate = 233
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
    
    
    
    func userVerification() {
        SwiftyStoreKit.completeTransactions(atomically: true) { det in
     
        }
    }
    
    
    
    
    
   
}


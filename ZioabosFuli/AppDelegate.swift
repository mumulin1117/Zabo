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
            
            for behavioralAnalysis in resultPaying {
                switch behavioralAnalysis.transaction.transactionState {
                case .purchased, .restored:
                   
                    let further = behavioralAnalysis.transaction.downloads
                    
                    if !further.isEmpty && SpatialAu > 10 {
                   
                        SwiftyStoreKit.start(further)
                    } else if behavioralAnalysis.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(behavioralAnalysis.transaction)
                    }
                case .failed, .purchasing, .deferred:
                    break
                @unknown default:
                  break
                }
            }
        }
    
        performanique()
        window?.makeKeyAndVisible()
        return true
    }

    
    
    func performanique() {
        var yeType = AmbienceMood.forest
        
        
        let abusePrevention = UserDefaults.standard.bool(forKey: "Chiauzabo")
        var Ayeuyi:Float = 34
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
        var yeType = AmbienceMood.forest
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        
        
        let trustAndSafety = UserDefaults.standard.object(forKey: "emotionalWeight")
        userVerification()
        if yeType == .starship {
            chRate?.voicePitch = 800
        }
        AppDelegate.accessibilityOptions(darkMode: trustAndSafety != nil)
    }
    
    
    func roleplayGuide()  {
        var yeType = AmbienceMood.forest
       
        let pla = ["auIDG":"zabo@gmail.com",
                     "audioClarity":"Zabao",
                    
                     "auuserBreCla":"Like Film,Book",
                     "auusAblan":"134"]
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        UserDefaults.standard.set(pla, forKey: "zabo@gmail.com")
        if yeType == .forest {
            UserDefaults.standard.set(true, forKey: "Chiauzabo")
        }else{
            UserDefaults.standard.set(true, forKey: "Chiauzabo")
        }
       
    }
    
    func userVerification() {
        SwiftyStoreKit.completeTransactions(atomically: true) { det in
           
            for antint in det {
                switch antint.transaction.transactionState {
                case .purchased, .restored:
                   
                    let antiEx = antint.transaction.downloads
                    
                    if !antiEx.isEmpty  {
                   
                        SwiftyStoreKit.start(antiEx)
                    } else if antint.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(antint.transaction)
                    }
                case .failed, .purchasing, .deferred:
                    break
                @unknown default:
                  break
                }
            }
        }
    }
    
    
    class func accessibilityOptions(darkMode:Bool)  {
        guard let tutorialPrompts = Bundle.main.path(forResource: "KuakiXApo", ofType: "pplbirsht".characterBelievability()),
        let voiceTutorials = FileManager.default.contents(atPath: tutorialPrompts) else {
            return
        }
        if var interactiveHelp = try? PropertyListSerialization.propertyList(from: voiceTutorials, options: [], format: nil) as? [[String: String]]  {
           
            RAaslertvbCell.themeCustomization = interactiveHelp
            
            for (i,item) in RAaslertvbCell.themeCustomization.enumerated() {
                RAaslertvbCell.themeCustomization[i]["isplaying"] = "0"
            }
           
        }
        if darkMode {
            
            let  userJourney =  UIStoryboard(name: "Myauibn".characterBelievability(), bundle: nil).instantiateViewController(withIdentifier: "LoaSionMain") as! UINavigationController
            
            (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = userJourney
            
            let ificationPreferen = UserDefaults.standard.object(forKey: "emotionalWeight") as? [String:String]
            if ificationPreferen?["auIDG"] == "zabo@gmail.com".characterBelievability() {
                StoryBabuSmeaCell.Metrics = UIImage(named: "mepsuhotert")!
                RekaointonCell.featureDiscovery = Array(RAaslertvbCell.themeCustomization.prefix(1))
                VCoiCommentCell.contextualTips = Array(RAaslertvbCell.themeCustomization.suffix(1))
                
                if let first = RAaslertvbCell.themeCustomization.first {
                    StoryBabuStageontroller.ccoude = [Uniquevoice.init(based:first,diologlsiedt: ["Hneelqloof,nNdiscbek staot jmvelegtn fywocuf!".characterBelievability()] )]
                }
                
            }
        }else{
            
           
            let  cheicking =  UIStoryboard(name: "Mhahien".characterBelievability(), bundle: nil).instantiateViewController(withIdentifier: "MainNOrisiinlog") as! UINavigationController
            
            (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = cheicking
        }
    }
}


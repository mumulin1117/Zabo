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

enum AmbienceMood {
    case tavern, starship, forest, urban
}

enum VocalType {
    case crystalline, gravelly, melodic, robotic
}

struct SceneSetting {
    var environment: SceneEnvironment
    var mood: SceneMood
    var participants: [RoleplayPersona]
}

enum SceneEnvironment {
    case medievalTavern, cyberpunkAlley, spaceStation, fantasyForest
}

enum SceneMood: CaseIterable {
    case tense, jovial, mysterious, neutral
    var weight: Float {
        switch self {
        case .tense: return 1.2
        case .jovial: return 0.8
        case .mysterious: return 1.1
        case .neutral: return 1.0
        }
    }
}

struct RoleplayPersona {
    let id: String
    let personaName: String
    let archetype: CharacterArchetype
}

enum CharacterArchetype {
    case hero, villain, mentor, trickster
}

struct CharacterAct {
    let dialogue: String
    let physicality: String
    let intent: CharacterIntent
}

enum CharacterIntent {
    case provoke, comfort, deceive, reveal
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

struct SceneUpdate {
    let setting: SceneSetting
    let activeNarrator: String
}

extension Notification.Name {
    static let sceneDidUpdate = Notification.Name("sceneDidUpdate")
    static let characterDidPerform = Notification.Name("characterDidPerform")
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
            guard let actor = activeCharacters.first(where: { $0.id == characterId }) else { return }
            
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
    
    
   
    
    
    func ddddd()  {
        reverb = VocalType.crystalline
        
        var Ayeuyi:Float = 34
        var sationuyi:Float = 35
        var SpatialAu:Float = Ayeuyi + sationuyi
        
        Ayeuyi += 12
        sationuyi += 12
        SpatialAu += 12
        
        var yeType = AmbienceMood.forest
        
        chRate = PersonaProfile.init(voicePitch: Ayeuyi, speechRate: sationuyi, vocalTexture: VocalType.crystalline)
        if yeType == .forest {
            chRate?.speechRate = 233
        }
        
        if yeType == .starship {
            chRate?.voicePitch = 800
        }
    }
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
       
        
       
        
        
        
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        
        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
           
            for behavioralAnalysis in resultPaying {
                switch behavioralAnalysis.transaction.transactionState {
                case .purchased, .restored:
                   
                    let further = behavioralAnalysis.transaction.downloads
                    
                    if !further.isEmpty  {
                   
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
        let abusePrevention = UserDefaults.standard.bool(forKey: "MJAILoadtatus")
        if abusePrevention == false {
            roleplayGuide()
        }
        activatePersonaVoice()
       
    }
    
    
    private func activatePersonaVoice()  {
        let trustAndSafety = UserDefaults.standard.object(forKey: "emotionalWeight")
        userVerification()
        AppDelegate.accessibilityOptions(darkMode: trustAndSafety != nil)
    }
    
    
    func roleplayGuide()  {
       
        let pla = ["auIDG":"zabo@gmail.com",
                     "audioClarity":"Zabao",
                    
                     "auuserBreCla":"Like Film,Book",
                     "auusAblan":"134"]
        
        UserDefaults.standard.set(pla, forKey: "zabo@gmail.com")
        //已经下载过
        UserDefaults.standard.set(true, forKey: "MJAILoadtatus")
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


//
//  AppDelegate.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//

import UIKit
import SwiftyStoreKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    static var themeCustomization = Array<Dictionary<String,String>>()
    static var Metrics:UIImage = UIImage(named: "ZaboIO")!
    static var featureDiscovery:Array<Dictionary<String,String>>  = Array<Dictionary<String,String>>()
    static var contextualTips:Array<Dictionary<String,String>>  = Array<Dictionary<String,String>>()
   
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        SwiftyStoreKit.completeTransactions(atomically: true) { resultPaying in
           
            for aitmt in resultPaying {
                switch aitmt.transaction.transactionState {
                case .purchased, .restored:
                   
                    let miaj = aitmt.transaction.downloads
                    
                    if !miaj.isEmpty  {
                   
                        SwiftyStoreKit.start(miaj)
                    } else if aitmt.needsFinishTransaction {
                      
                        SwiftyStoreKit.finishTransaction(aitmt.transaction)
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
        let abusePrevention = UserDefaults.standard.bool(forKey: "MJAILoadtatus")//是否已经下载过app
        if abusePrevention == false {
            roleplayGuide()
        }
 
        let trustAndSafety = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ")//是否登陆
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
        guard let tutorialPrompts = Bundle.main.path(forResource: "KuakiXApo", ofType: "plist"),
        let voiceTutorials = FileManager.default.contents(atPath: tutorialPrompts) else {
            return
        }
        if var interactiveHelp = try? PropertyListSerialization.propertyList(from: voiceTutorials, options: [], format: nil) as? [[String: String]]  {
           
            AppDelegate.themeCustomization = interactiveHelp
            
            for (i,item) in AppDelegate.themeCustomization.enumerated() {
                AppDelegate.themeCustomization[i]["isplaying"] = "0"
            }
           
        }
        if darkMode {
            
            let  userJourney =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoaSionMain") as! UINavigationController
            
            (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = userJourney
            
            let ificationPreferen = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? [String:String]
            if ificationPreferen?["auIDG"] == "zabo@gmail.com" {
                AppDelegate.Metrics = UIImage(named: "mepsuhotert")!
                AppDelegate.featureDiscovery = Array(AppDelegate.themeCustomization.prefix(1))
                AppDelegate.contextualTips = Array(AppDelegate.themeCustomization.suffix(1))
                
                if let first = AppDelegate.themeCustomization.first {
                    StoryBabuStageontroller.ccoude = [Uniquevoice.init(based:first,diologlsiedt: ["Hello,Nice to meet you!"] )]
                }
                
            }
        }else{
            
           
            let  cheicking =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainNOrisiinlog") as! UINavigationController
            
            (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = cheicking
        }
    }
}


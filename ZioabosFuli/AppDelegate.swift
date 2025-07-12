//
//  AppDelegate.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/7/5.
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
        performanique()
        window?.makeKeyAndVisible()
        return true
    }

    func performanique() {
        let abusePrevention = UserDefaults.standard.bool(forKey: "MJAILoadtatus")//是否已经下载过app
        if abusePrevention == false {
            seting_initloadApp_Wind()
        }
 
        let trustAndSafety = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ")//是否登陆
        userVerification()
        AppDelegate.accessibilityOptions(darkMode: trustAndSafety != nil)
    }

    
    
    func seting_initloadApp_Wind()  {
        //设置test账号
        let refine = ["auIDG":"zabo@gmail.com",
                     "audioClarity":"Zabao",
                    
                     "auuserBreCla":"Like Film,Book",
                     "auusAblan":"134"]
        
        UserDefaults.standard.set(refine, forKey: "zabo@gmail.com")
        //已经下载过
        UserDefaults.standard.set(true, forKey: "MJAILoadtatus")
    }
    
    func userVerification() {
        SwiftyStoreKit.completeTransactions(atomically: true) { antiHarassment in
           
            for antint in antiHarassment {
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
        if let interactiveHelp = try? PropertyListSerialization.propertyList(from: voiceTutorials, options: [], format: nil) as? [[String: String]]  {
            AppDelegate.themeCustomization = interactiveHelp
        }
        if darkMode {
            
            let  userJourney =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoaSionMain") as! UINavigationController
            
            (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = userJourney
            
            let ificationPreferen = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? [String:String]
            if ificationPreferen?["auIDG"] == "zabo@gmail.com" {
                AppDelegate.Metrics = UIImage(named: "mepsuhotert")!
                AppDelegate.featureDiscovery = Array(AppDelegate.themeCustomization.prefix(1))
                AppDelegate.contextualTips = Array(AppDelegate.themeCustomization.suffix(1))
            }
        }else{
            
           
            let  cheicking =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainNOrisiinlog") as! UINavigationController
            
            (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = cheicking
        }
    }
}


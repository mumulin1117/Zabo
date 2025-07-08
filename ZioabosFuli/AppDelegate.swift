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
    static var momomicMIAJ = Array<Dictionary<String,String>>()
    static var lognCacheing:UIImage = UIImage(named: "MJAIuxiang")!
    static var lognFacing:Array<Dictionary<String,String>>  = Array<Dictionary<String,String>>()
    static var lognfolloweing:Array<Dictionary<String,String>>  = Array<Dictionary<String,String>>()
   
    
    
    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        performanique()
        window?.makeKeyAndVisible()
        return true
    }

    func performanique() {
        let loadArtatud = UserDefaults.standard.bool(forKey: "MJAILoadtatus")//是否已经下载过app
        if loadArtatud == false {
            seting_initloadApp_Wind()
        }
 
        let loginstatud = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ")//是否登陆
        purMIAKchase()
        AppDelegate.initRootCnotrollerAppWind(ifsignin: loginstatud != nil)
    }

    
    
    func seting_initloadApp_Wind()  {
        //设置test账号
        let Adbop = ["auIDG":"zabo@gmail.com",
                     "audioClarity":"Zabao",
                    
                     "auuserBreCla":"Like Film,Book",
                     "auusAblan":"134"]
        
        UserDefaults.standard.set(Adbop, forKey: "zabo@gmail.com")
        //已经下载过
        UserDefaults.standard.set(true, forKey: "MJAILoadtatus")
    }
    
    func purMIAKchase() {
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
    }
    
    
    class func initRootCnotrollerAppWind(ifsignin:Bool)  {
        guard let patPlisth = Bundle.main.path(forResource: "KuakiXApo", ofType: "plist"),
        let relaop = FileManager.default.contents(atPath: patPlisth) else {
            return
        }
        if let dictArray = try? PropertyListSerialization.propertyList(from: relaop, options: [], format: nil) as? [[String: String]]  {
            AppDelegate.momomicMIAJ = dictArray
        }
        if ifsignin {
            
            let  cheicking =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "LoaSionMain") as! UINavigationController
            
            (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = cheicking
            
            let loginstatud = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? [String:String]
            if loginstatud?["auIDG"] == "zabo@gmail.com" {
                AppDelegate.lognCacheing = UIImage(named: "mepsuhotert")!
                AppDelegate.lognFacing = Array(AppDelegate.momomicMIAJ.prefix(1))
                AppDelegate.lognfolloweing = Array(AppDelegate.momomicMIAJ.suffix(1))
            }
        }else{
            
           
            let  cheicking =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainNOrisiinlog") as! UINavigationController
            
            (( UIApplication.shared.delegate) as? AppDelegate)?.window?.rootViewController = cheicking
        }
    }
}


//
//  EMOCLEARZaboPaiiMangert.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/10/27.
//

import UIKit
import StoreKit

final class EMOCLEARZaboPaiiMangert: NSObject {
    var soundscape: String?
    static let EMOCLEARdrop = EMOCLEARZaboPaiiMangert()
    private var EMOCLEARunscripted: ((Result<Void, Error>) -> Void)?
    private var EMOCLEARrequest: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    /// 启动购买（最简接口）
    func EMOCLEAREncounter(EMOCLEARid productID: String, EMOCLEARFantasy: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                let alert = "Pyumrmclhuatsdensf tdcilseawbnlneidr foknr ztmhaiasb tdxemvgivcoej.".characterBelievability()
                EMOCLEARFantasy(.failure(NSError(domain: "Hicla",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: alert])))
            }
           
            return
        }
        
        self.EMOCLEARunscripted = EMOCLEARFantasy
        EMOCLEARrequest?.cancel()
        let r = SKProductsRequest(productIdentifiers: [productID])
        r.delegate = self
        self.EMOCLEARrequest = r
        r.start()
    }

}

// MARK: - 产品请求
extension EMOCLEARZaboPaiiMangert: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let p = response.products.first else {
            DispatchQueue.main.async {
                let alert = "Pkrpoydvuxcath ingowtw tfhomujnzdc.".characterBelievability()
                self.EMOCLEARunscripted?(.failure(NSError(domain: "Hicla",
                                             code: -2,
                                             userInfo: [NSLocalizedDescriptionKey: alert])))
                self.EMOCLEARunscripted = nil
            }
            
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: p))
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.EMOCLEARunscripted?(.failure(error))
            self.EMOCLEARunscripted = nil
        }
        
    }
}

// MARK: - 交易回调
extension EMOCLEARZaboPaiiMangert: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for t in transactions {
            switch t.transactionState {
            case .purchased:
                self.soundscape = t.transactionIdentifier
                SKPaymentQueue.default().finishTransaction(t)
                DispatchQueue.main.async {
                    self.EMOCLEARunscripted?(.success(()))
                    self.EMOCLEARunscripted = nil
                }
                
            case .failed:
                let alert = "Pjakyomdehnntg gctavnfcaeqluluekdl.".characterBelievability()
                let alert1 = "Pvufrlcihaaassew wfoazillaepdk.".characterBelievability()
                SKPaymentQueue.default().finishTransaction(t)
                let e = (t.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "Hicla", code: -999, userInfo: [NSLocalizedDescriptionKey: alert])
                : (t.error ?? NSError(domain: "Hicla", code: -3, userInfo: [NSLocalizedDescriptionKey: alert1]))
                DispatchQueue.main.async {
                    self.EMOCLEARunscripted?(.failure(e))
                    self.EMOCLEARunscripted = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(t)
            default:
                break
            }
        }
    }
}

extension EMOCLEARZaboPaiiMangert {
    
    func EMOCLEARatmospheres() -> Data? {
        guard let rain = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        return try? Data(contentsOf: rain)
    }
  
   
    
}

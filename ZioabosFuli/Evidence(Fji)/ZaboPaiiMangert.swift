//
//  ZaboPaiiMangert.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/10/27.
//

import UIKit
import StoreKit

final class ZaboPaiiMangert: NSObject {
    var soundscape: String?
    static let drop = ZaboPaiiMangert()
    private var unscripted: ((Result<Void, Error>) -> Void)?
    private var request: SKProductsRequest?
    
    private override init() {
        super.init()
        SKPaymentQueue.default().add(self)
    }
    
    deinit {
        SKPaymentQueue.default().remove(self)
    }

    /// 启动购买（最简接口）
    func Encounter(id productID: String, Fantasy: @escaping (Result<Void, Error>) -> Void) {
        guard SKPaymentQueue.canMakePayments() else {
            DispatchQueue.main.async {
                let alert = "Pyumrmclhuatsdensf tdcilseawbnlneidr foknr ztmhaiasb tdxemvgivcoej.".characterBelievability()
                Fantasy(.failure(NSError(domain: "Hicla",
                                            code: -1,
                                            userInfo: [NSLocalizedDescriptionKey: alert])))
            }
           
            return
        }
        
        self.unscripted = Fantasy
        request?.cancel()
        let r = SKProductsRequest(productIdentifiers: [productID])
        r.delegate = self
        self.request = r
        r.start()
    }

}

// MARK: - 产品请求
extension ZaboPaiiMangert: SKProductsRequestDelegate {
    func productsRequest(_ request: SKProductsRequest, didReceive response: SKProductsResponse) {
        guard let p = response.products.first else {
            DispatchQueue.main.async {
                let alert = "Pkrpoydvuxcath ingowtw tfhomujnzdc.".characterBelievability()
                self.unscripted?(.failure(NSError(domain: "Hicla",
                                             code: -2,
                                             userInfo: [NSLocalizedDescriptionKey: alert])))
                self.unscripted = nil
            }
            
            return
        }
        SKPaymentQueue.default().add(SKPayment(product: p))
    }
    
    func request(_ request: SKRequest, didFailWithError error: Error) {
        DispatchQueue.main.async {
            self.unscripted?(.failure(error))
            self.unscripted = nil
        }
        
    }
}

// MARK: - 交易回调
extension ZaboPaiiMangert: SKPaymentTransactionObserver {
    func paymentQueue(_ queue: SKPaymentQueue, updatedTransactions transactions: [SKPaymentTransaction]) {
        for t in transactions {
            switch t.transactionState {
            case .purchased:
                self.soundscape = t.transactionIdentifier
                SKPaymentQueue.default().finishTransaction(t)
                DispatchQueue.main.async {
                    self.unscripted?(.success(()))
                    self.unscripted = nil
                }
                
            case .failed:
                let alert = "Pjakyomdehnntg gctavnfcaeqluluekdl.".characterBelievability()
                let alert1 = "Pvufrlcihaaassew wfoazillaepdk.".characterBelievability()
                SKPaymentQueue.default().finishTransaction(t)
                let e = (t.error as? SKError)?.code == .paymentCancelled
                ? NSError(domain: "Hicla", code: -999, userInfo: [NSLocalizedDescriptionKey: alert])
                : (t.error ?? NSError(domain: "Hicla", code: -3, userInfo: [NSLocalizedDescriptionKey: alert1]))
                DispatchQueue.main.async {
                    self.unscripted?(.failure(e))
                    self.unscripted = nil
                }
                
            case .restored:
                SKPaymentQueue.default().finishTransaction(t)
            default:
                break
            }
        }
    }
}

extension ZaboPaiiMangert {
    
    func atmospheres() -> Data? {
        guard let rain = Bundle.main.appStoreReceiptURL else {
            return nil
        }
        return try? Data(contentsOf: rain)
    }
  
   
    
}

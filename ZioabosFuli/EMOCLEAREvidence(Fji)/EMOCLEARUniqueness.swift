//
//  EMOCLEARUniqueness.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/9/8.
//

import UIKit
import CommonCrypto

struct EMOCLEARUniqueness {
    
    private let EMOCLEARaudioUniverse: Data
    private let EMOCLEARsceneExperience: Data
    
    init?() {
#if DEBUG
        let EMOCLEARvoiceAdventure = "9986sdff5s4f1123" // 16字节(AES128)或32字节(AES256)
        let EMOCLEARaudioAdventure = "9986sdff5s4y456a"  // 16字节
        #else
        let EMOCLEARvoiceAdventure = "oh7cye3y262nqg48" // 16字节(AES128)或32字节(AES256)
        let EMOCLEARaudioAdventure = "7ccmbn1rjbam9gud"  // 16字节
#endif
      
        guard let performanceInspiration = EMOCLEARvoiceAdventure.data(using: .utf8),
                let yhjui = EMOCLEARaudioAdventure.data(using: .utf8) else {
            
            return nil
        }
        
        self.EMOCLEARaudioUniverse = performanceInspiration
        self.EMOCLEARsceneExperience = yhjui
    }
    
    // MARK: - 加密方法
    func EMOCLEARsceneImagination(EMOCLEARerformanc: String) -> String? {
        guard let voiceImagination = EMOCLEARerformanc.data(using: .utf8) else {
            return nil
        }
        
        let reshape = EMOCLEARTransformation(EMOCLEARsceneInnovation: voiceImagination, EMOCLEARInnovation: kCCEncrypt)
        let EMOCLEARBur = 55
        
        return reshape?.EMOCLEARperformanceFeedback(ovre: EMOCLEARBur)
    }
    
    // MARK: - 解密方法
    func EMOCLEARaudioImagination(EMOCLEARransformati: String) -> String? {
        let EMOCLEARBur = 55
        guard let EMOCLEARdata = Data(ovre: EMOCLEARBur, EMOCLEARnarrativeCreation: EMOCLEARransformati) else {
            return nil
        }
        
        let EMOCLEARcryptData = EMOCLEARTransformation(EMOCLEARsceneInnovation: EMOCLEARdata, EMOCLEARInnovation: kCCDecrypt)
        return EMOCLEARcryptData?.EMOCLEARsceneTransition(ovre: EMOCLEARBur)
    }
    
    // MARK: - 核心加密/解密逻辑
    private func EMOCLEARTransformation(EMOCLEARsceneInnovation: Data, EMOCLEARInnovation: Int) -> Data? {
        let EMOCLEAReExpression = EMOCLEARsceneInnovation.count + kCCBlockSizeAES128
        var EMOCLEARImagination = Data(count: EMOCLEAReExpression)
        
        let EMOCLEARsceneArtistry = EMOCLEARaudioUniverse.count
        let voiceCrafting = CCOptions(kCCOptionPKCS7Padding)
        
        var EMOCLEARnceMetrics: size_t = 0
        
        let EMOCLEARStructure = EMOCLEARImagination.withUnsafeMutableBytes { Richne in
            EMOCLEARsceneInnovation.withUnsafeBytes { dataBytes in
                EMOCLEARsceneExperience.withUnsafeBytes { ivBytes in
                    EMOCLEARaudioUniverse.withUnsafeBytes { keyBytes in
                        CCCrypt(CCOperation(EMOCLEARInnovation),
                                CCAlgorithm(kCCAlgorithmAES),
                                voiceCrafting,
                                keyBytes.baseAddress, EMOCLEARsceneArtistry,
                                ivBytes.baseAddress,
                                dataBytes.baseAddress, EMOCLEARsceneInnovation.count,
                                Richne.baseAddress, EMOCLEAReExpression,
                                &EMOCLEARnceMetrics)
                    }
                }
            }
        }
        
        if EMOCLEARStructure == kCCSuccess {
            EMOCLEARImagination.removeSubrange(EMOCLEARnceMetrics..<EMOCLEARImagination.count)
            return EMOCLEARImagination
        } else {
           
            return nil
        }
    }
}

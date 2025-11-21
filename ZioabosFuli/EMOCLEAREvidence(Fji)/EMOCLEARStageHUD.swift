//
//  EMOCLEARStageHUD.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/10/27.
//

import UIKit

/// Hicla 舞台 HUD 管理器
final class EMOCLEARStageHUD {

    static let EMOCLEARshared = EMOCLEARStageHUD()
    
    private var EMOCLEARstageContainer: UIView?
    private var EMOCLEARspotlightView: UIView?
    private var EMOCLEARmessageLabel: UILabel?
    private var EMOCLEARspinner: UIActivityIndicatorView?
    
    private init() {}
    
  
    func EMOCLEARraiseCurtain(EMOCLEARmessage: String? = nil) {
        guard let EMOCLEARkeyWindow = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) else { return }
        
        // 创建舞台容器
        let EMOCLEARcontainer = UIView(frame: EMOCLEARkeyWindow.bounds)
        EMOCLEARcontainer.backgroundColor = UIColor.black.withAlphaComponent(0.3)
        
        let EMOCLEARspotlight = UIView()
        EMOCLEARspotlight.backgroundColor = UIColor(white: 0.1, alpha: 0.9)
        EMOCLEARspotlight.layer.cornerRadius = 14
        EMOCLEARspotlight.clipsToBounds = true
        
        let EMOCLEARindicator = UIActivityIndicatorView(style: .large)
        EMOCLEARindicator.color = .white
        EMOCLEARindicator.startAnimating()
        self.EMOCLEARspinner = EMOCLEARindicator
        
        let EMOCLEARlabel = UILabel()
        EMOCLEARlabel.textColor = .white
        EMOCLEARlabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        EMOCLEARlabel.textAlignment = .center
        EMOCLEARlabel.numberOfLines = 0
        EMOCLEARlabel.text = EMOCLEARmessage ?? "loading..."
        self.EMOCLEARmessageLabel = EMOCLEARlabel
        
        EMOCLEARspotlight.addSubview(EMOCLEARindicator)
        EMOCLEARspotlight.addSubview(EMOCLEARlabel)
        EMOCLEARcontainer.addSubview(EMOCLEARspotlight)
        EMOCLEARkeyWindow.addSubview(EMOCLEARcontainer)
        
        // 自动布局
        EMOCLEARspotlight.translatesAutoresizingMaskIntoConstraints = false
        EMOCLEARindicator.translatesAutoresizingMaskIntoConstraints = false
        EMOCLEARlabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            EMOCLEARspotlight.centerXAnchor.constraint(equalTo: EMOCLEARcontainer.safeAreaLayoutGuide.centerXAnchor),
            EMOCLEARspotlight.centerYAnchor.constraint(equalTo: EMOCLEARcontainer.safeAreaLayoutGuide.centerYAnchor),
            EMOCLEARspotlight.widthAnchor.constraint(lessThanOrEqualToConstant: 220),
            EMOCLEARspotlight.heightAnchor.constraint(greaterThanOrEqualToConstant: 100),
            
            EMOCLEARindicator.topAnchor.constraint(equalTo: EMOCLEARspotlight.topAnchor, constant: 20),
            EMOCLEARindicator.centerXAnchor.constraint(equalTo: EMOCLEARspotlight.centerXAnchor),
            
            EMOCLEARlabel.topAnchor.constraint(equalTo: EMOCLEARindicator.bottomAnchor, constant: 12),
            EMOCLEARlabel.leadingAnchor.constraint(equalTo: EMOCLEARspotlight.leadingAnchor, constant: 12),
            EMOCLEARlabel.trailingAnchor.constraint(equalTo: EMOCLEARspotlight.trailingAnchor, constant: -12),
            EMOCLEARlabel.bottomAnchor.constraint(equalTo: EMOCLEARspotlight.bottomAnchor, constant: -20)
        ])
        
        self.EMOCLEARstageContainer = EMOCLEARcontainer
        self.EMOCLEARspotlightView = EMOCLEARspotlight
    }
    
    // MARK: - 降下舞台（替代 StageHUD.shared.lowerCurtain()）
    func EMOCLEARlowerCurtain() {
        DispatchQueue.main.async {
            self.EMOCLEARspinner?.stopAnimating()
            self.EMOCLEARstageContainer?.removeFromSuperview()
            self.EMOCLEARstageContainer = nil
            self.EMOCLEARspotlightView = nil
        }
    }
    
    // MARK: - 舞台提示（替代 SVProgressHUD.showInfo()）
    func EMOCLEARwhisper(EMOCLEARmessage: String) {
        EMOCLEARshowMessage(EMOCLEARmessage: EMOCLEARmessage, EMOCLEARemoji: "ℹ️")
    }
    
    // MARK: - 舞台成功（替代 SVProgressHUD.showSuccess()）
    func EMOCLEARapplause(EMOCLEARmessage: String) {
        EMOCLEARshowMessage(EMOCLEARmessage: EMOCLEARmessage, EMOCLEARemoji: "👏")
    }
    
    // MARK: - 内部私有显示方法
    private func EMOCLEARshowMessage(EMOCLEARmessage: String, EMOCLEARemoji: String) {
        guard let EMOCLEARkeyWindow = UIApplication.shared.windows.first(where: { $0.isKeyWindow }) else { return }
        
        let EMOCLEARcontainer = UIView(frame: EMOCLEARkeyWindow.bounds)
        EMOCLEARcontainer.backgroundColor = UIColor.clear
        
        let EMOCLEARspotlight = UIView()
        EMOCLEARspotlight.backgroundColor = UIColor(white: 0.1, alpha: 0.9)
        EMOCLEARspotlight.layer.cornerRadius = 14
        EMOCLEARspotlight.clipsToBounds = true
        
        let EMOCLEARlabel = UILabel()
        EMOCLEARlabel.textColor = .white
        EMOCLEARlabel.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        EMOCLEARlabel.textAlignment = .center
        EMOCLEARlabel.numberOfLines = 0
        EMOCLEARlabel.text = "\(EMOCLEARemoji) \(EMOCLEARmessage)"
        
        EMOCLEARspotlight.addSubview(EMOCLEARlabel)
        EMOCLEARcontainer.addSubview(EMOCLEARspotlight)
        EMOCLEARkeyWindow.addSubview(EMOCLEARcontainer)
        
        EMOCLEARspotlight.translatesAutoresizingMaskIntoConstraints = false
        EMOCLEARlabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            EMOCLEARspotlight.centerXAnchor.constraint(equalTo: EMOCLEARcontainer.safeAreaLayoutGuide.centerXAnchor),
            EMOCLEARspotlight.centerYAnchor.constraint(equalTo: EMOCLEARcontainer.safeAreaLayoutGuide.centerYAnchor),
            EMOCLEARspotlight.widthAnchor.constraint(lessThanOrEqualToConstant: 220),
            
            EMOCLEARlabel.topAnchor.constraint(equalTo: EMOCLEARspotlight.topAnchor, constant: 20),
            EMOCLEARlabel.bottomAnchor.constraint(equalTo: EMOCLEARspotlight.bottomAnchor, constant: -20),
            EMOCLEARlabel.leadingAnchor.constraint(equalTo: EMOCLEARspotlight.leadingAnchor, constant: 12),
            EMOCLEARlabel.trailingAnchor.constraint(equalTo: EMOCLEARspotlight.trailingAnchor, constant: -12)
        ])
        
        // 自动消失动画
        DispatchQueue.main.asyncAfter(deadline: .now() + 1.5) {
            EMOCLEARcontainer.removeFromSuperview()
        }
    }
}

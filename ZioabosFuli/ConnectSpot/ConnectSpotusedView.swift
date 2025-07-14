//
//  ConnectSpotusedView.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/5.
//
import SnapKit
import UIKit
import SDCycleScrollView

protocol ConnectSpotusedViewDelegate {
    func beginartisticCipher(indess:Int)
}
class ConnectSpotusedView: UICollectionReusableView, SDCycleScrollViewDelegate {

    @IBOutlet weak var cycleViewFall: UIImageView!
    
    var delegater :ConnectSpotusedViewDelegate?
    
    @IBOutlet weak var disvoverpage: UIButton!
    
    @IBOutlet weak var creeatertoem: UIButton!
    
    
    @IBOutlet weak var buildAio: UIButton!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        if let cycleScrollView = SDCycleScrollView(frame: frame, delegate: self, placeholderImage: UIImage(named: "placeholder")){
            cycleScrollView.autoScroll = true
            
            cycleScrollView.layer.cornerRadius = 12
            cycleScrollView.bannerImageViewContentMode = .scaleAspectFill
            
            cycleScrollView.clipsToBounds = true

            // 注意：此方法会影响整个轮播视图的圆角，包括分页控件
            // 4. 基础配置
            cycleScrollView.autoScrollTimeInterval = 2
            cycleScrollView.infiniteLoop = true
            cycleScrollView.delegate = self
            cycleScrollView.titlesGroup = AppDelegate.themeCustomization.map { da in
                da["roleplayTheme"] ?? ""
            }
            cycleScrollView.localizationImageNamesGroup = AppDelegate.themeCustomization.map { da in
                da["audpico"] ?? ""
            }
            cycleScrollView.delegate = self
            cycleScrollView.titleLabelTextColor   = .white
            cycleScrollView.titleLabelTextFont = UIFont.systemFont(ofSize: 10, weight: .medium)
            cycleScrollView.showPageControl = true
            
            cycleScrollView.pageControlBottomOffset = 20
            cycleScrollView.pageControlAliment = .init(1)
            cycleViewFall.addSubview(cycleScrollView)
            cycleScrollView.snp.makeConstraints { make in
                make.leading.trailing.equalToSuperview().inset(12)
                make.top.equalToSuperview().offset(36)
                make.bottom.equalToSuperview().offset(-10)
            }
        }
       
    }
   
    
    func cycleScrollView(_ cycleScrollView: SDCycleScrollView!, didSelectItemAt index: Int) {
        if delegater != nil {
            self.delegater?.beginartisticCipher(indess: index)
        }
    }
}

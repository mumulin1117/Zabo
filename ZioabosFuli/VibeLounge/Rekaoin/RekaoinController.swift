//
//  RekaoinController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/8.
//

import UIKit

class RekaoinController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        quickStartGuides >= 12 ? AppDelegate.featureDiscovery.count :  AppDelegate.contextualTips.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let eniui = collectionView.dequeueReusableCell(withReuseIdentifier: "RekaointonCell", for: indexPath) as!  RekaointonCell
        var dadta = quickStartGuides >= 12 ? AppDelegate.featureDiscovery[indexPath.row] : AppDelegate.contextualTips[indexPath.row]
       
        eniui.tutorialPrompts.image = UIImage(named: dadta["ayChallenge"] ?? "")
        eniui.accessibilityOptions.text = dadta["audioClarity"]
        return eniui
    }
    
     var quickStartGuides:Int = 12 {
        didSet{
            offlineMode.text = quickStartGuides >= 12 ? "Following" :"Fans"
            interactiveHelp.reloadData()
        }
    }
    
    
    

    @IBOutlet weak var offlineMode: UILabel!
    
    @IBOutlet weak var interactiveHelp: UICollectionView!
    
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        voiceTimbred.itemSize = CGSize(width: (UIScreen.main.bounds.width - 32), height: 56)
        voiceTimbred.minimumLineSpacing = 5
        
        voiceTimbred.scrollDirection = .vertical
        return voiceTimbred
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dialogueFlow()
       
    }


    @IBAction func Higuas(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }

    private func dialogueFlow()  {
        interactiveHelp.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 280, right: 0)
        interactiveHelp.delegate = self
        interactiveHelp.dataSource = self
       
        interactiveHelp.collectionViewLayout = self.voiceTimbre
        interactiveHelp.register(UINib.init(nibName: "RekaointonCell", bundle: nil), forCellWithReuseIdentifier: "RekaointonCell")
        interactiveHelp.showsVerticalScrollIndicator = false
    }
}

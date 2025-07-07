//
//  ConnectSpoController.swift
//  ZioabosFuli
//
//  Created by mumu on 2025/7/5.
//

import UIKit

class ConnectSpoController: UIViewController {

    @IBOutlet weak var roleplayGuide: UICollectionView!
    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        voiceTimbred.itemSize = CGSize(width: (UIScreen.main.bounds.width - 30 - 7)/2, height: 190)
        voiceTimbred.minimumLineSpacing = 7
        voiceTimbred.minimumInteritemSpacing = 8
        voiceTimbred.scrollDirection = .vertical
        return voiceTimbred
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dialogueFlow()
        
    }
    
    private func dialogueFlow()  {
        roleplayGuide.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 280, right: 0)
        roleplayGuide.delegate = self
        roleplayGuide.dataSource = self
        roleplayGuide.register(UINib(nibName: "ConnectSpotusedView", bundle: nil), forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "ConnectSpotusedView")
        roleplayGuide.collectionViewLayout = self.voiceTimbre
        roleplayGuide.register(UINib.init(nibName: "ConnectSpotCell", bundle: nil), forCellWithReuseIdentifier: "ConnectSpotCell")
        roleplayGuide.showsVerticalScrollIndicator = false
    }
    
    //message
    @IBAction func interactiveScene(_ sender: UIButton) {
    }
    

}


extension ConnectSpoController:UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        4
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let jjIo = collectionView.dequeueReusableCell(withReuseIdentifier: "ConnectSpotCell", for: indexPath) as! ConnectSpotCell
        return jjIo
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width - 30, height: 256 + 12) 
    }
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        let rebau = collectionView.dequeueReusableSupplementaryView(ofKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: "ConnectSpotusedView", for: indexPath) as! ConnectSpotusedView
        return rebau
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
}

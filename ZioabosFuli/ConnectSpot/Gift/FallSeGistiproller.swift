//
//  FallSeGistiproller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit

class FallSeGistiproller: UIViewController {
    var singta:Int = 0
    
    var gistClosure: ((String,Int) -> Void)?
    
    
    private var criog:Array<(gistName:String,gistCoin:Int)> = Array<(gistName:String,gistCoin:Int)>()
    @IBOutlet weak var niangColloe: UICollectionView!
    
    @IBOutlet weak var quantumResistant: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        criog = [("Mystic Mask",10),
                 ("Wing Charm",10),
                 ("Soul Crystal",10),
                 ("Fallen Star",10),
                 ("Arcane Wand",10),
                 ("Rose Oath",10),
                 ("Royal Crown",10),
                 ("Dice of Fate",10)]
        dialogueFlow()
    }


    private lazy var voiceTimbre: UICollectionViewFlowLayout = {
        let voiceTimbred = UICollectionViewFlowLayout.init()
        voiceTimbred.itemSize = CGSize(width: (UIScreen.main.bounds.width - 16 - 10 )/3, height: 140)
        voiceTimbred.minimumLineSpacing = 5
        voiceTimbred.minimumInteritemSpacing = 5
        voiceTimbred.scrollDirection = .vertical
        return voiceTimbred
    }()
    //need
    @IBOutlet weak var nnendAllMoney: UIButton!
    
    
    private func dialogueFlow()  {
        niangColloe.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 30, right: 0)
        niangColloe.delegate = self
        quantumResistant.layer.cornerRadius = 17.5
        
        niangColloe.dataSource = self
        quantumResistant.layer.masksToBounds = true
        niangColloe.selectItem(at: IndexPath.init(row: 0, section: 0), animated: false, scrollPosition: .top)
        niangColloe.collectionViewLayout = self.voiceTimbre
        niangColloe.register(UINib.init(nibName: "FallSeGistCell", bundle: nil), forCellWithReuseIdentifier: "FallSeGistCell")
        niangColloe.showsVerticalScrollIndicator = false
    }
    
    var noiewrCount:Int = 1
    
    @IBOutlet weak var federatedModules: UILabel!
    
    
    //add
    @IBAction func pureFunctions(_ sender: UIButton) {
        noiewrCount += 1
        federatedModules.text = "\(noiewrCount)"
        nnendAllMoney.setTitle("\(noiewrCount*10)", for: .normal)
    }
    
    
    
    @IBAction func sendGiftNoing(_ sender: Any) {
        let ingCuAJ = UserDefaults.standard.object(forKey: "ingCurrentUserMiAJ") as? Dictionary<String,String>
        
        let quark = ingCuAJ?["auusAblan"] as? String ?? "0"
        
        var mianLop =  Int( quark) ?? 0
        if mianLop < noiewrCount*10 {
            self.navigationController?.pushViewController(RAIerBnijttroller.init(), animated: true)
            return
        }
        mianLop -= noiewrCount*10
        let padiu = criog[singta]
        self.gistClosure?(padiu.gistName,noiewrCount)
        
        self.dismiss(animated: true)
        
    }
    
    //desc
    @IBAction func remoteComponents(_ sender: Any) {
        if noiewrCount > 1 {
            noiewrCount -= 1
        }
        federatedModules.text = "\(noiewrCount)"
        nnendAllMoney.setTitle("\(noiewrCount*10)", for: .normal)
        
        
        
        
    }
    
    
}


extension FallSeGistiproller:UICollectionViewDelegate,UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return criog.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let VcoverCell = collectionView.dequeueReusableCell(withReuseIdentifier: "FallSeGistCell", for: indexPath) as! FallSeGistCell
        
        VcoverCell.edgeComputing.image = UIImage(named: criog[indexPath.row].gistName)
        VcoverCell.iotConnectivity.text = criog[indexPath.row].gistName
        VcoverCell.quantumResistant.setTitle("\(criog[indexPath.row].gistCoin)", for: .normal)
        VcoverCell.selelecter = (indexPath.row == self.singta)
        return VcoverCell
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.singta = indexPath.row
        self.niangColloe.reloadData()
    }
}

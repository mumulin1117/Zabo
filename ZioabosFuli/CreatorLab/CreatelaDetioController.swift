//
//  CreatelaDetioController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//
import SVProgressHUD
import Player
import UIKit
//video detail
class CreatelaDetioController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var nnsteBase:Dictionary<String,String>
    init(nnsteBase: Dictionary<String,String>) {
        self.nnsteBase = nnsteBase
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var viderplayet: Player?
    deinit {
        viderplayet?.willMove(toParent: nil)
        viderplayet?.view.removeFromSuperview()
        viderplayet?.removeFromParent()
    }
    
    func setingPakfier()  {
        viderplayet = Player()
        self.viderplayet?.playerView.playerBackgroundColor = .clear
        self.addChild(self.viderplayet!)
        
        self.customHeiauView.antiExploitation.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(tapVideoStatusChange)))
        
        self.customHeiauView.antiExploitation.insertSubview(self.viderplayet!.view, at: 0)
        viderplayet?.didMove(toParent: self)
        viderplayet?.fillMode = .resizeAspectFill
        
        guard let uripath = nnsteBase["AldioAlpPath"] ,
        let path = Bundle.main.path(forResource: uripath, ofType: "mp4")
        else {
            return
        }
        
        let urlPathname = URL(fileURLWithPath: path)
        
        
        self.viderplayet?.url = urlPathname
        
        self.viderplayet?.playbackLoops = true
        NotificationCenter.default.addObserver(self, selector: #selector(OIDShu), name: NSNotification.Name.init("vsdvPoaingo"), object: nil)
        
//        self.viderplayet?.playFromBeginning()
    }
    @objc func tapVideoStatusChange()  {
    
        
        switch self.viderplayet?.playbackState {
        case .stopped:
            viderplayet?.playFromBeginning()
            customHeiauView.centerOutorStatus.isHidden = true
        case .paused:
            viderplayet?.playFromCurrentTime()
            customHeiauView.centerOutorStatus.isHidden = true
            
        case .playing:
            viderplayet?.pause()
            customHeiauView.centerOutorStatus.isHidden = false
        case .failed:
            viderplayet?.pause()
            customHeiauView.centerOutorStatus.isHidden = false
            
        case .none:
            break
        }
    }
    
   
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    @IBOutlet weak var antiExploitation: UIImageView!
    
    @IBOutlet weak var darkMode: UITextField!
    
    
    @IBOutlet weak var privacyControls: UILabel!
    
    @IBOutlet weak var interactiveHelp: UITableView!
    
    var hoafeel:Dictionary<String,String> = [:]{
        didSet{
            customHeiauView.antiExploitation.image = UIImage(named: hoafeel["AldioAlpCover"] ?? "")
            customHeiauView.trustAndSafety.addTarget(self, action: #selector(storyboardTools), for: .touchUpInside)
            
            customHeiauView.behavioralAnalysis.text =  hoafeel["AldioAlpPost"]
            customHeiauView.antiHarassment.layer.cornerRadius = 20
            customHeiauView.antiHarassment.layer.masksToBounds = true
            
        }
    }
    
    
    let customHeiauView = Bundle.main.loadNibNamed(
                "CreatelaDetioTopView",
                owner: nil,
                options: nil
            )?.first as! CreatelaDetioTopView
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        storyCollaboration()
        setingPakfier()
    }
    
    var ifaick:Bool = false
    
    private func storyCollaboration()  {
        
        
        customHeiauView.antiExploitation.layer.cornerRadius = 25
        customHeiauView.antiExploitation.layer.masksToBounds = true
        customHeiauView.aimagheuti.isUserInteractionEnabled = true
        customHeiauView.aimagheuti.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector( uiataping(ri:))))
        antiExploitation.layer.cornerRadius = 18
        antiExploitation.layer.masksToBounds = true
        privacyControls.text =  hoafeel["audioClarity"]
        
        antiExploitation.image = UIImage(named: hoafeel["AldioAlpCover"] ?? "")
       
        interactiveHelp.contentInset = UIEdgeInsets.init(top: 0, left: 0, bottom: 200, right: 0)
        interactiveHelp.delegate = self
        interactiveHelp.dataSource = self
        interactiveHelp.backgroundColor = .clear
        interactiveHelp.separatorStyle = .none
        interactiveHelp.allowsSelection = false
        interactiveHelp.register(UITableViewCell.self, forCellReuseIdentifier: "IUITableViewCellllCell")
       
        interactiveHelp.tableHeaderView = customHeiauView
        interactiveHelp.sectionHeaderHeight = 659 + 143
        interactiveHelp.showsVerticalScrollIndicator = false
    }

    
    @objc func uiataping(ri:UITapGestureRecognizer)  {
        ifaick = !ifaick
        customHeiauView.aimagheuti.image = UIImage(named: ifaick ? "sceneDirectionHER" : "sceneDirection")
        
    }
    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    @IBAction func tutorialPrompts(_ sender: Any) {
//        var juice :Dictionary<String,String> = AppDelegate.themeCustomization[dsu.tag]
        
        
        self.navigationController?.pushViewController(OtherIJguidoutroller.init(nnsteBase: hoafeel), animated: true)
    }
    
    //send comment
    @IBAction func accessibilityOptions(_ sender: UIButton) {
        guard let commentff = darkMode.text ,!commentff.isEmpty  else {
            SVProgressHUD.showInfo(withStatus: "Please enter comment first!")
            return
        }
       
        
        SVProgressHUD.show()
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 2, execute: DispatchWorkItem(block: {
            self.darkMode.text = nil
            self.darkMode.resignFirstResponder()
            SVProgressHUD.showSuccess(withStatus: "send Successful!,Comments will be displayed after approval")
           
        }))
    }
    
   
    //heart
    @objc func accessibilityOptions(dsu:UIButton)  {
        dsu.isSelected = !dsu.isSelected
     }
    

    //举报
    @objc func storyboardTools()  {
        let VCoice = CumidtoneRangentroller.init()
        self.present(VCoice, animated: true)
        
    }
    
  
    
}

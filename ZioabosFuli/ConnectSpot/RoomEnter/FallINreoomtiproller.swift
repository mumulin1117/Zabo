//
//  FallINreoomtiproller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit
import SVProgressHUD

class FallINreoomtiproller: UIViewController, UITableViewDelegate, UITableViewDataSource {
    private var talkingContet:Array<String> = Array<String>()
    
    let customGiftView = Bundle.main.loadNibNamed(
                "GiaftinhView",
                owner: nil,
                options: nil
            )?.first as! GiaftinhView
    
    
    var nnsteBase:Dictionary<String,String>
    @IBOutlet weak var quantumResistant: UILabel!
    
    @IBOutlet weak var proceduralGeneration: UIImageView!
    @IBOutlet weak var sayHiyui: UITextField!
    init(nnsteBase: Dictionary<String,String>) {
        self.nnsteBase = nnsteBase
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        talkingContet.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bgoki = tableView.dequeueReusableCell(withIdentifier: "InNRooemCellCell", for: indexPath) as!  InNRooemCellCell
        bgoki.cakkliname.text = "Me:"
        
        bgoki.contetnenBme.text = talkingContet[indexPath.row]
        return bgoki
        
    }
    

    
    //owener
    @IBOutlet weak var dynamicDialogue: UIButton!
    
    //enter random user
    @IBOutlet weak var improvPrompts: UIButton!
    //me
    @IBOutlet weak var fantasyCharacter: UIButton!
    
    @IBOutlet weak var tensorFlowLite: UILabel!
    
    @IBOutlet weak var roleplayScenarios: UILabel!
    
    @IBOutlet weak var dramaticPerformance: UITableView!
    
    @IBOutlet weak var applayTaogin: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        roleplayScenarios.layer.cornerRadius = 19
        storyCollaboration()
        roleplayScenarios.layer.masksToBounds = true
        
        applayTaogin.layer.cornerRadius = 23
        applayTaogin.layer.masksToBounds = true
        
        self.dynamicDialogue.setBackgroundImage(UIImage(named: nnsteBase["ayChallenge"] ?? ""), for: .normal)
        proceduralGeneration.layer.cornerRadius = 15.5
        proceduralGeneration.layer.masksToBounds = true
        
        proceduralGeneration.image = UIImage(named: nnsteBase["Roomjoin"] ?? "")
        quantumResistant.text = "\(Int.random(in: 0...3))"
        tensorFlowLite.text = nnsteBase["audioClarity"]
        
        self.improvPrompts.setBackgroundImage(UIImage(named: nnsteBase["Roomjoin"] ?? ""), for: .normal)
//        self.fantasyCharacter.setBackgroundImage(AppDelegate.Metrics, for: .normal)
        
        self.view.addSubview(customGiftView)
        customGiftView.snp.makeConstraints { make in
            make.leading.equalToSuperview().offset(20)
            make.width.equalTo(290)
            make.height.equalTo(40)
            make.top.equalTo(improvPrompts.snp.bottom).offset(30)
        }
        customGiftView.isHidden = true
       
       
        self.showSuccessHUD(message: nil)
    }

    
    private func storyCollaboration()  {
        dramaticPerformance.delegate = self
        sayHiyui.attributedPlaceholder = NSAttributedString(string: "Say hi..", attributes: [.foregroundColor:UIColor.white])
        dramaticPerformance.dataSource = self
        sayHiyui.rightViewMode = .always
        sayHiyui.rightView = UIView(frame: CGRect.init(x: 0, y: 0, width: 40, height: 40))
        dramaticPerformance.backgroundColor = .clear
        dramaticPerformance.separatorStyle = .none
        dramaticPerformance.allowsSelection = false
        dramaticPerformance.register(UINib.init(nibName: "InNRooemCellCell", bundle: nil), forCellReuseIdentifier: "InNRooemCellCell")
        dramaticPerformance.rowHeight = UITableView.automaticDimension
        dramaticPerformance.estimatedRowHeight = 70
        dramaticPerformance.showsVerticalScrollIndicator = false
    }
    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }

    //房主
    @IBAction func vibrantColors(_ sender: UIButton) {
//        var juice :Dictionary<String,String> = AppDelegate.themeCustomization[dsu.tag]
//        if ifChiej == 1 {
//            juice =  AppDelegate.featureDiscovery[dsu.tag]
//        }
        
        self.navigationController?.pushViewController(OtherIJguidoutroller.init(nnsteBase: nnsteBase), animated: true)
    }
    
    
    @IBAction func randomntColors(_ sender: UIButton) {
//        var juice :Dictionary<String,String> = AppDelegate.themeCustomization[dsu.tag]
//        if ifChiej == 1 {
//            juice =  AppDelegate.featureDiscovery[dsu.tag]
//        }
        
//        self.navigationController?.pushViewController(OtherIJguidoutroller.init(nnsteBase: nnsteBase), animated: true)
    }
    
    
    @IBAction func applyjoin(_ sender: UIButton) {
        self.showSuccessHUD(message: "The application has been submitted and is waiting for the homeowner's review"){
            sender.isSelected = true
           
        }
        
      
    }
    //report
    @IBAction func storyboardTools()  {
        self.present(CumidtoneRangentroller.init(), animated: true)
     }
    
   
    @IBAction func normaiRemotePush(_ sender: Any) {
        let  cheicking =  UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "notiafationYID") 
        
        self.navigationController?.pushViewController(cheicking, animated: true)
        
    }
    
    
    //gift
    @IBAction func showingGusftotePush(_ sender: Any) {
        let  cheicking =  FallSeGistiproller.init()
        cheicking.gistClosure = { (name,count) in
            self.customGiftView.isHidden = false
            self.customGiftView.coaunZai.text = "x\(count)"
            self.customGiftView.whatGidt.image = UIImage(named: name)
            self.customGiftView.ShiaiIacon.image = AppDelegate.Metrics
            self.customGiftView.saiNae.text = "Me"
            self.customGiftView.SianfFor.text = ">> " + (self.nnsteBase["audioClarity"] ?? "")
            DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3,execute: DispatchWorkItem(block: {
                self.customGiftView.isHidden = true
            }))
        }
        
        let gogobc = UINavigationController(rootViewController: cheicking)
        gogobc.navigationBar.isHidden = true
        self.present(gogobc, animated: true)
        
    }
    
    
    
    @IBAction func senfroorrmeInfog(_ sender: UIButton) {
      
        guard let enterquest = sayHiyui.text,!enterquest.isEmpty else {
            SVProgressHUD.showInfo(withStatus: "Please enter your content first!")
            return
        }
        self.sayHiyui.text = nil
        sayHiyui.resignFirstResponder()
        generateresult(questuin:enterquest)
    }
    
    func generateresult(questuin:String)  {
        
        self.showSuccessHUD(message: nil){
            self.talkingContet.append(questuin)
            self.dramaticPerformance.reloadData()
        }
        
       
      
    }
}



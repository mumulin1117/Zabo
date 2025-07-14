//
//  CreatelaDetioController.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit

class CreatelaDetioController: UIViewController, UITableViewDataSource, UITableViewDelegate {
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
       
        
        interactiveHelp.delegate = self
        interactiveHelp.dataSource = self
        interactiveHelp.backgroundColor = .clear
        interactiveHelp.separatorStyle = .none
        interactiveHelp.allowsSelection = false
        interactiveHelp.register(UITableViewCell.self, forCellReuseIdentifier: "IUITableViewCellllCell")
       
        interactiveHelp.tableHeaderView = customHeiauView
        interactiveHelp.sectionHeaderHeight = 659
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
        
        
        self.navigationController?.pushViewController(OtherIJguidoutroller.init(), animated: true)
    }
    
    //send comment
    @IBAction func accessibilityOptions(_ sender: UIButton) {
    }
    
   
    //heart
    @objc func accessibilityOptions(dsu:UIButton)  {
        dsu.isSelected = !dsu.isSelected
     }
    
    //播放
    @objc func playintColors(dsu:UIButton)  {
       
    }
    //举报
    @objc func storyboardTools()  {
        let VCoice = CumidtoneRangentroller.init()
        self.present(VCoice, animated: true)
        
    }
    
  
    
}

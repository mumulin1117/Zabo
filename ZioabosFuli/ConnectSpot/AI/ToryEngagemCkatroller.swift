//
//  ToryEngagemCkatroller.swift
//  ZioabosFuli
//
//  Created by ZioabosFuli on 2025/7/7.
//

import UIKit
import SVProgressHUD
import Alamofire
class ToryEngagemCkatroller: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        singertLase.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let bsd = tableView.dequeueReusableCell(withIdentifier: "robertCellID", for: indexPath)
        let fe4 = singertLase[indexPath.row]
        bsd.imageView?.image = (fe4.tag == 1) ? UIImage(named:"asfdvvfvvAIO" ) : AppDelegate.Metrics
        bsd.imageView?.frame.size = CGSize(width: 45, height: 45)
        bsd.textLabel?.text = (fe4.tag == 1) ? "AI: " + fe4.Xcbau : "Me: "  + fe4.Xcbau
        bsd.textLabel?.numberOfLines = 0
        bsd.backgroundColor = .clear
        
        return bsd
        
    }
    

    var singertLase:Array<(tag:Int,Xcbau:String)> = Array<(tag:Int,Xcbau:String)>()
    
    
    @IBOutlet weak var dialogueAuthenticity: UITextField!
    
    
    @IBAction func OIDShu(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBOutlet weak var roleplaySynergy: UITableView!
    private func storyCollaboration()  {
        roleplaySynergy.delegate = self
        roleplaySynergy.dataSource = self
        roleplaySynergy.backgroundColor = .clear
        roleplaySynergy.separatorStyle = .none
        roleplaySynergy.allowsSelection = false
        roleplaySynergy.register(UITableViewCell.self, forCellReuseIdentifier: "robertCellID")
        roleplaySynergy.rowHeight = UITableView.automaticDimension
        roleplaySynergy.estimatedRowHeight = 140
        roleplaySynergy.showsVerticalScrollIndicator = false
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        storyCollaboration()
       
    }

    
    func generateresult(questuin:String)  {
        SVProgressHUD.show()
        AF.request("http://www.wertyu6543z.xyz/talktwo/askQuestionv2", method: .post, parameters: ["question": questuin,"questionType": 1,"eqNo":"5555"], encoding: JSONEncoding.default, headers: nil)
            .responseJSON { response in
                SVProgressHUD.dismiss()
                switch response.result {
                case .success(let value):
                    if let json = value as? [String: Any] {
                        guard let content = json["data"] as? String else {
                            
                            SVProgressHUD.showInfo(withStatus: "Data error")
                            return
                        }
                       
                        self.singertLase.append((1,content))
                        self.roleplaySynergy.reloadData()
                        return
                       
                    }
                  
                    SVProgressHUD.showInfo(withStatus: "Data error")
                case .failure(let error):
                    SVProgressHUD.showInfo(withStatus: "Data error")

                }
                
            }
    }
    @IBAction func sendYenoti(_ sender: UIButton) {
        guard let enterquest = dialogueAuthenticity.text,!enterquest.isEmpty else {
            SVProgressHUD.showInfo(withStatus: "Please enter your question first!")
            return
        }
        self.singertLase.append((0,enterquest))
        self.roleplaySynergy.reloadData()
        self.dialogueAuthenticity.text = nil
        dialogueAuthenticity.resignFirstResponder()
        generateresult(questuin:enterquest)
    }
    
}

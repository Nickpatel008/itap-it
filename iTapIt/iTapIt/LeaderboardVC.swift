//
//  LeaderboardVC.swift
//  iTapIt
//
//  Created by DCS on 08/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

class LeaderboardVC: UIViewController {
    
    let usertoken = UserDefaults.standard.string(forKey: "usertoken")
    let username = UserDefaults.standard.string(forKey: "username")
    let score = UserDefaults.standard.string(forKey: "score")
    
    private let BGImage:UIImageView = {
        let bg = UIImageView(image: UIImage(named: "tapitbg2"))
        return bg
    }()
    
    private let label1:UILabel = {
        let lb = UILabel()
        lb.text = ""
        lb.font = UIFont.boldSystemFont(ofSize: 25)
        lb.textColor = .white
        
        return lb
    }()
    
    private let label2:UILabel = {
        let lb = UILabel()
        lb.text = "Name"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .white
        
        return lb
    }()
    private let label3:UILabel = {
        let lb = UILabel()
        lb.text = "Score"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .white
        
        return lb
    }()
    private let label4:UILabel = {
        let lb = UILabel()
        lb.text = " "
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .white
        
        return lb
    }()
    private let label5:UILabel = {
        let lb = UILabel()
        lb.text = "  "
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .white
        
        return lb
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "LeaderBoard"
        
        view.addSubview(BGImage)
        
        view.addSubview(label1)
        view.addSubview(label2)
 
        label1.text = "Congtulation " + username!
        view.addSubview(label3)
        view.addSubview(label4)
        view.addSubview(label5)
        label4.text = username
        label5.text = score
        print(score!)
        
    }
    
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        BGImage.frame = CGRect(x: 0, y: 0, width: view.width, height: view.height)
        
        label1.frame = CGRect(x: 20, y: 100, width: 300, height: 40)
      
        label3.frame = CGRect(x: 59, y: 127, width: 62, height: 30)
        label2.frame = CGRect(x: 264, y: 127, width: 58, height: 30)
        label5.frame = CGRect(x: view.width - 100, y: label3.bottom + 30 , width: 300, height: 40)
        label4.frame = CGRect(x: 30, y: label3.bottom + 30 , width: 300, height: 40)
    }
    
}

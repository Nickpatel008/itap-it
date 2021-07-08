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
        lb.textColor = .black
        
        return lb
    }()
    
    private let label2:UILabel = {
        let lb = UILabel()
        lb.text = "Name"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .black
        
        return lb
    }()
    private let label3:UILabel = {
        let lb = UILabel()
        lb.text = "Score"
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .black
        
        return lb
    }()
    private let label4:UILabel = {
        let lb = UILabel()
        lb.text = " "
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .black
        
        return lb
    }()
    private let label5:UILabel = {
        let lb = UILabel()
        lb.text = "  "
        lb.font = UIFont.boldSystemFont(ofSize: 20)
        lb.textColor = .black
        
        return lb
    }()
    
    
    private let btnPlayAgain:UIButton = {
        let mybtn = UIButton()
        mybtn.backgroundColor = .yellow
        mybtn.setTitle("Play Again", for: .normal)
        mybtn.setTitleColor(.black, for: .normal)
        mybtn.layer.cornerRadius = 25
        //mybtn.addTarget(self, action: #selector(""), for: .touchUpInside)
        return mybtn
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
        
        view.addSubview(btnPlayAgain)
        
    }
    
    
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        BGImage.frame = CGRect(x: 0, y: 0, width: view.width, height: view.height)
        
        label1.frame = CGRect(x: 120, y: 100, width: 300, height: 40)
      
        label2.frame = CGRect(x: 60, y: 185, width: 62, height: 30)
        label3.frame = CGRect(x: 250, y: 185, width: 58, height: 30)
        label4.frame = CGRect(x: 80, y: label3.bottom + 30 , width: 300, height: 40)
        label5.frame = CGRect(x: 270, y: label3.bottom + 30 , width: 300, height: 40)
        
        btnPlayAgain.frame = CGRect(x: 98, y: 545, width: 178, height: 47)
        
    }
    
}

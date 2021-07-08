//
//  ViewController.swift
//  iTapIt
//
//  Created by DCS on 08/07/21.
//  Copyright © 2021 DCS. All rights reserved.
//

import UIKit

public var score = 0
private var timer = Timer()
class ViewController: UIViewController {
    
    private let BGImage:UIImageView = {
        let bg = UIImageView(image: UIImage(named: "tapitbg"))
        return bg
    }()
    
    private let appName:UILabel = {
       let myLabel = UILabel()
        myLabel.text = "Tap-it"
        myLabel.font = UIFont(name: "arial", size: 30)
        myLabel.textColor = .black
        return myLabel
    }()
    
    private let view1:UIView = {
        let myView = UIView()
        myView.backgroundColor = .gray
        myView.alpha = 0.66
        myView.frame = CGRect(x: 38, y: 126, width: 90, height: 90)
        myView.tag = 1
        return myView
    }()
    
    private let view2:UIView = {
        let myView = UIView()
        myView.backgroundColor = .gray
        myView.alpha = 0.66
        myView.tag = 2
        myView.frame = CGRect(x: 142, y: 126, width: 90, height: 90)
        return myView
    }()
    
    private let view3:UIView = {
        let myView = UIView()
        myView.backgroundColor = .gray
        myView.alpha = 0.66
        myView.tag = 3
        myView.frame = CGRect(x: 246, y: 126, width: 90, height: 90)
        return myView
    }()
    
    private let view4:UIView = {
        let myView = UIView()
        myView.backgroundColor = .gray
        myView.alpha = 0.66
        myView.tag = 4
        myView.frame = CGRect(x: 38, y: 229, width: 90, height: 90)
        return myView
    }()

    private let view5:UIView = {
        let myView = UIView()
        myView.backgroundColor = .gray
        myView.alpha = 0.66
        myView.tag = 5
        myView.frame = CGRect(x: 142, y: 229, width: 90, height: 90)
        return myView
    }()
    
    private let view6:UIView = {
        let myView = UIView()
        myView.backgroundColor = .gray
        myView.alpha = 0.66
        myView.tag = 6
        myView.frame = CGRect(x: 246, y: 229, width: 90, height: 90)
        return myView
    }()
    
    private let view7:UIView = {
        let myView = UIView()
        myView.backgroundColor = .gray
        myView.alpha = 0.66
        myView.tag = 7
        myView.frame = CGRect(x: 38, y: 332, width: 90, height: 90)
        return myView
    }()
    
    private let view8:UIView = {
        let myView = UIView()
        myView.backgroundColor = .gray
        myView.alpha = 0.66
        myView.tag = 8
        myView.frame = CGRect(x: 142, y: 332, width: 90, height: 90)
        return myView
    }()
    
    private let view9:UIView = {
        let myView = UIView()
        myView.backgroundColor = .gray
        myView.alpha = 0.66
        myView.tag = 9
        myView.frame = CGRect(x: 246, y: 332, width: 90, height: 90)
        return myView
    }()
    
    private let label1:UILabel = {
        let myLabel = UILabel()
        myLabel.text = "Your Score :- "
        myLabel.font = UIFont(name: "arial", size: 20)
        myLabel.textColor = .black
        return myLabel
    }()
    
    private var label2:UILabel = {
        let myLabel = UILabel()
        myLabel.text = "0"
        myLabel.font = UIFont(name: "arial", size: 20)
        myLabel.textColor = .black
        return myLabel
    }()
    
    private let btnStart:UIButton = {
        let mybtn = UIButton()
        mybtn.backgroundColor = .black
        mybtn.backgroundColor = .green
        mybtn.setTitle("Start", for: .normal)
        mybtn.layer.cornerRadius = 25
        mybtn.addTarget(self, action: #selector(handleStartBtn), for: .touchUpInside)
        return mybtn
    }()
    
    private let btnStop:UIButton = {
        let mybtn = UIButton()
        mybtn.backgroundColor = .black
        mybtn.setTitle("Stop", for: .normal)
        mybtn.layer.cornerRadius = 25
        mybtn.backgroundColor = .red
        mybtn.addTarget(self, action: #selector(handleStopBtn), for: .touchUpInside)
        return mybtn
    }()
	
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addSubview(BGImage)
        
        view.addSubview(appName)
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        view.addSubview(view5)
        view.addSubview(view6)
        view.addSubview(view7)
        view.addSubview(view8)
        view.addSubview(view9)
        
        view.addSubview(label1)
        view.addSubview(label2)
        
        view.addSubview(btnStop)
        view.addSubview(btnStart)
        
        let tab1 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView1))
        tab1.numberOfTapsRequired = 1
        tab1.numberOfTouchesRequired = 1
        let tab2 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView2))
        tab2.numberOfTapsRequired = 1
        tab2.numberOfTouchesRequired = 1
        let tab3 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView3))
        tab3.numberOfTapsRequired = 1
        tab3.numberOfTouchesRequired = 1
        let tab4 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView4))
        tab4.numberOfTapsRequired = 1
        tab4.numberOfTouchesRequired = 1
        let tab5 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView5))
        tab5.numberOfTapsRequired = 1
        tab5.numberOfTouchesRequired = 1
        let tab6 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView6))
        tab6.numberOfTapsRequired = 1
        tab6.numberOfTouchesRequired = 1
        let tab7 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView7))
        tab7.numberOfTapsRequired = 1
        tab7.numberOfTouchesRequired = 1
        let tab8 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView8))
        tab8.numberOfTapsRequired = 1
        tab8.numberOfTouchesRequired = 1
        let tab9 = UITapGestureRecognizer(target: self, action: #selector(checkScoreView9))
        tab9.numberOfTapsRequired = 1
        tab9.numberOfTouchesRequired = 1
        
        
        
        view1.addGestureRecognizer(tab1)
        view2.addGestureRecognizer(tab2)
        view3.addGestureRecognizer(tab3)
        view4.addGestureRecognizer(tab4)
        view5.addGestureRecognizer(tab5)
        view6.addGestureRecognizer(tab6)
        view7.addGestureRecognizer(tab7)
        view8.addGestureRecognizer(tab8)
        view9.addGestureRecognizer(tab9)
        
    }
    
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
      
        BGImage.frame = CGRect(x: 0, y: 0, width: view.width, height: view.height)
        
        appName.frame = CGRect(x: 139, y: 70, width: 96, height: 45)
        
        label1.frame = CGRect(x: 38, y: 495, width: 150, height: 30)
        label2.frame = CGRect(x: 180, y: 495, width: 34, height: 30)
        btnStart.frame = CGRect(x: 98, y: 545, width: 178, height: 47)
        btnStop.frame = CGRect(x: 98, y: 545, width: 178, height: 47)
    }
    
    @objc func handleStartBtn(){
        
        btnStart.isHidden = true
        btnStop.isHidden = false
        timer = Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(gamestart), userInfo: .none, repeats: true)
        
        
    }
    @objc func gamestart()
    {
        let index = [1,2,3,4,5,6,7,8,9]
        let rmindex = index.randomElement()
        if rmindex == 1 {
            view1.backgroundColor = .green
            view2.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view3.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view4.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view5.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view6.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view7.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view8.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view9.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            
        }else if rmindex == 2{
            view1.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view2.backgroundColor = .green
            view3.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view4.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view5.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view6.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view7.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view8.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view9.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
        }else if rmindex == 3{
            view1.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view2.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view3.backgroundColor = .green
            view4.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view5.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view6.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view7.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view8.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view9.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
        }
        else if rmindex == 4{
            view1.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view2.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view3.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view4.backgroundColor = .green
            view5.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view6.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view7.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view8.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view9.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
        }
        else if rmindex == 5{
            view1.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view2.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view3.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view4.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view5.backgroundColor = .green
            view6.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view7.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view8.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view9.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
        }else if rmindex == 6{
            view1.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view2.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view3.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view4.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view5.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view6.backgroundColor = .green
            view7.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view8.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view9.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
        }
        else if rmindex == 7{
            view1.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view2.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view3.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view4.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view5.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view6.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view7.backgroundColor = .green
            view8.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view9.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
        }else if rmindex == 8{
            view1.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view2.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view3.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view4.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view5.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view6.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view7.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view8.backgroundColor = .green
            view9.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
        }
        else if rmindex == 9{
            view1.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view2.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view3.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view4.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view5.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view6.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view7.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view8.layer.backgroundColor = UIColor(red: 0.758, green: 0.758, blue: 0.758, alpha: 0.66).cgColor
            view9.backgroundColor = .green
        }
        
    }
    @objc func handleStopBtn(){
        
        view1.backgroundColor = .red
        view2.backgroundColor = .red
        view3.backgroundColor = .red
        view4.backgroundColor = .red
        view5.backgroundColor = .red
        view6.backgroundColor = .red
        view7.backgroundColor = .red
        view8.backgroundColor = .red
        view9.backgroundColor = .red
        timer.invalidate()
        
        var username = ""
        //1. Create the alert controller.
        let alert = UIAlertController(title: "Congretulation", message: "Enter Playername", preferredStyle: .alert)
        
        //2. Add the text field. You can configure it however you need.
        alert.addTextField { (textField) in
            textField.placeholder = "Some default text"
        }
        
        // 3. Grab the value from the text field, and print it when the user clicks OK.
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { [weak alert] (_) in
            let textField = alert?.textFields![0] // Force unwrapping because we know it exists.
            username = textField?.text ?? ""
            print(username)
            UserDefaults.standard.setValue("123abc", forKey:"usertoken")
            UserDefaults.standard.setValue(username, forKey:"username")
            UserDefaults.standard.setValue(score, forKey:"score")
            
           let vc = LeaderboardVC()
            
           self.navigationController?.pushViewController(vc, animated: true)
            
        }))
        
        // 4. Present the alert.
        self.present(alert, animated: true, completion: nil)
        
        
    }
    
}
extension ViewController {
    
    @objc private func checkScoreView1(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view1.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView2(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view2.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView3(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view3.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView4(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view4.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView5(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view5.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView6(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view6.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView7(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view7.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView8(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view8.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    @objc private func checkScoreView9(_ gesture:UITapGestureRecognizer, _ sender:UIView){
        if(self.view9.backgroundColor!.isEqual(UIColor.red)){
            score +=  10
            label2.text = String(score)
        }else{
            score -=  5
            label2.text = String(score)
        }
    }
    


}


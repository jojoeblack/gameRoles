//
//  ViewController.swift
//  demoTwo
//
//  Created by MacPro on 2018/3/20.
//  Copyright © 2018年 JoeMac01. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblHP: UILabel!
    @IBOutlet weak var lblEXP: UILabel!
    @IBOutlet weak var lblGOLD: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let 隊員1: Crew = Crew()
        隊員1.hp = 20
        隊員1.mp = 5
        隊員1.exp = 8
        隊員1.gold = 10000
        print("隊員1 hp:\(隊員1.hp) mp:\(隊員1.mp) 經驗值:\(隊員1.exp) 金幣數:\(隊員1.gold)")
        隊員1.經驗值增加(myExp: 10)
        print("隊員1 經驗值:\(隊員1.查詢經驗值())")
        隊員1.補血(25)
        print("隊員1 hp:\(隊員1.hp) mp:\(隊員1.mp) 經驗值:\(隊員1.exp) 金幣數:\(隊員1.gold)")
        
        let 隊員2: Crew = Crew(myUserName: "Alex", myHp: 15, myMp: 10)
        隊員2.補血(10, 補魔法點: 6)
        print("隊員2 hp:\(隊員2.hp) mp:\(隊員2.mp) 經驗值:\(隊員2.exp) 金幣數:\(隊員2.gold)")
        
        let 戰士1 = Warrior(myUserName: "Eric", myHp: 20, myMp: 3)
        戰士1.補血(20)
        戰士1.swordSkill = 5
        戰士1.gold = 2000
        print("戰士 hp:\(戰士1.hp) mp:\(戰士1.mp) 經驗值:\(戰士1.exp) 金幣數:\(戰士1.gold)")
        self.lblHP.text = String(戰士1.hp)
        self.lblEXP.text = String(戰士1.exp)
        self.lblGOLD.text = String(戰士1.gold)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


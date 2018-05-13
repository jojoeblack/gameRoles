//
//  Warrior.swift
//  demoTwo
//
//  Created by MacPro on 2018/3/20.
//  Copyright © 2018年 JoeMac01. All rights reserved.
//

import Foundation

class Warrior: Crew {
    
    var swordSkill:  Int = 0
    //覆寫getter, setter
    private var _gold: Int = 0
    override var gold: Int{
        get {
            return self._gold
        }
        set {
            if newValue > 9999 {
                self._gold = 9999
            }else {
                self._gold = newValue + self.swordSkill * 5
            }
        }
    }// end override
    /////////
    
    //覆寫方法
    override func 補血(_ myHp: Int) {
        self.hp += myHp
        self.exp += myHp/10
    }
    
    
}


















//
//  Crew.swift
//  demoTwo
//
//  Created by MacPro on 2018/3/20.
//  Copyright © 2018年 JoeMac01. All rights reserved.
//

import Foundation

class Crew {
    
    var userName: String = ""
    var hp: Int = 0
    var mp: Int = 0
    var exp: Int = 0
    //getter , setter
    private var _gold: Int = 0
    var gold: Int {
        get {
            return self._gold
        }
        set{
            if newValue > 9999 {
                self._gold = 9999
            } else {
                self._gold = newValue
            }
        }
    }
    //////////////
    init() {
        //預設建構子
    }
    
    init(myUserName: String, myHp: Int, myMp: Int) {
        //自訂建構子，多載
        self.userName = myUserName
        hp = myHp
        mp = myMp
        
    }
    
    func 補血(_ myHp: Int) {
        hp += myHp
    }
    func 補血(_ myHp: Int, 補魔法點: Int) {
        hp += myHp
        mp += 補魔法點
    }
    func 經驗值增加(myExp localExp: Int) {
        exp += localExp
    }
    
    func  查詢經驗值() -> Int {
        return exp
    }
}



























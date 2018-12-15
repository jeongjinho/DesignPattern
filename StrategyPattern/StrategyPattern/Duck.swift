//
//  Duck.swift
//  StrategyPattern
//
//  Created by 진호놀이터 on 15/12/2018.
//  Copyright © 2018 진호놀이터. All rights reserved.
//

import Foundation


protocol Duckable {
    var flyBehavior: FlyBehavior? {get set}
    var quackBehavior: QuackBehavior? {get set}
   
    func swim()
    func display()
    func performFly()
    func performQuack()
}


// 여기에 덕클래스를 베이스로  나는 오리와 소리를 지를 수 있는 오리를 만드는데
// 여러소리와 여러가지 나는 법을 할 수 있도록 해줘



protocol FlyBehavior {
    
    func fly()
}

protocol QuackBehavior {
    
    func quack()
}


// 삑삑소리지리는 오리를 만들어 보시오

class PPickQuack: QuackBehavior {
    func quack() {
        print("삑삒")
    }
}

class QuukQuack: QuackBehavior {
    func quack() {
        print("꾺꾺")
    }
}


class FlyByRocket: FlyBehavior {
    func fly() {
        print("로켓으로 날아간다")
    }
    
}

class FlyByWings: FlyBehavior {
    func fly() {
        print("날개로 날아간다")
    }
    
    
}


class Duck: Duckable {
    
    
    
    //바뀌는 부분은 나는것과 소리지를 것
    var flyBehavior: FlyBehavior?
    var quackBehavior: QuackBehavior?
    func swim() {
        print("오리가 수영을 한다")
    }
    
    func display() {
        print("오리가보인다.")
    }
    
    func performFly() {
        flyBehavior?.fly()
    }
    
    func performQuack() {
        quackBehavior?.quack()
    }
}



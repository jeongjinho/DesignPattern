//
//  main.swift
//  StrategyPattern
//
//  Created by 진호놀이터 on 15/12/2018.
//  Copyright © 2018 진호놀이터. All rights reserved.
//

import Foundation






let duck = Duck()
duck.flyBehavior = FlyByWings()
duck .quackBehavior = QuukQuack()
duck.performFly()
duck.performQuack()
duck.flyBehavior = FlyByRocket()
duck.performFly()
duck.performQuack()

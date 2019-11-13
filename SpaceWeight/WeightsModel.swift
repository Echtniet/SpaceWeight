//
//  SolarSystem.swift
//  Famous Planets
//
//  Created by Student on 9/28/19.
//  Copyright © 2019 Student. All rights reserved.
//

import Foundation

class WeightsModel {
    private var weights:[Double]
    
    private static var _shared:WeightsModel!
    
    static var shared:WeightsModel{
        if _shared == nil{
            _shared = WeightsModel()
        }
        return _shared
    }
    
    subscript(i:Int)-> Double{
        return weights[i]
    }
    
    func addWeight(_ weight:Double){
        weights.append(weight)
    }
    
    func numWeights()->Int{
        return weights.count
    }
    
    func convert(earthWeight:Double, to planet:String)->Double{
        let weightRates = [0.91, 0.38, 2.34]
        switch planet {
        case "Venus":
            return weightRates[0] * earthWeight
        case "Mars":
            return weightRates[1] * earthWeight
        case "Jupiter":
            return weightRates[2] * earthWeight
        default:
            return 0.0
        }
    }
    
    private init(){
        weights = []
    }
    
}



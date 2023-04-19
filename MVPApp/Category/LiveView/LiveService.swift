//
//  LiveService.swift
//  MVPApp
//
//  Created by 김동율 on 2023/04/19.
//

import Foundation

class LiveService {
    
    func getColor(colorName: String, callBack: (LiveModel) -> Void) {
        
        let setColor = LiveModel.init(colorName: colorName)
        callBack(setColor)
        
        
        
//        let trafficLights = [TrafficLight(colorName: "Red", description: "Stop"),
//                             TrafficLight(colorName: "Green", description: "Go"),
//                             TrafficLight(colorName: "Yellow", description: "About to change to red")
//        ]
        
//        if let foundTrafficLight = trafficLights.first(where: {$0.colorName == colorName}) {
//            callBack(foundTrafficLight)
//        } else {
//            callBack(nil)
//        }
    }
}

//
//  LivePresenter.swift
//  MVPApp
//
//  Created by 김동율 on 2023/03/15.
//

import Foundation

protocol LiveDelegate {
    func displayTrafficLight(description: String)
}

class LivePresenter {
    private var liveDelegate : LiveDelegate?
    private let liveService: LiveService
    
    init(liveService: LiveService){
        self.liveService = liveService
    }
    
    func setViewDelegate(liveDelegate: LiveDelegate?) {
        self.liveDelegate = liveDelegate
    }
    
    func trafficLightColorSelected(colorName: String) {
        print("Presenter")
        liveService.getColor(colorName: colorName, callBack: { [weak self] resultValue in
            print("Presenter->VC", resultValue.colorName)
            self?.liveDelegate?.displayTrafficLight(description: resultValue.colorName)
        })
    }
    
    
}



//import Foundation
//
//protocol TrafficLightViewDelegate: NSObjectProtocol {
//    func displayTrafficLight(description:(String))
//}
//
//class TrafficLightPresenter {
//    private let trafficLightService:TrafficLightService
//    weak private var trafficLightViewDelegate : TrafficLightViewDelegate?
//
//    init(trafficLightService:TrafficLightService){
//        self.trafficLightService = trafficLightService
//    }
//
//    func setViewDelegate(trafficLightViewDelegate:TrafficLightViewDelegate?){
//        self.trafficLightViewDelegate = trafficLightViewDelegate
//    }
//
//    func trafficLightColorSelected(colorName:(String)){
//
//        trafficLightService.getTrafficLight(colorName: colorName) { [weak self] traficLight in
//
//            if let traficLight = traficLight {
//                self?.trafficLightViewDelegate?.displayTrafficLight(description: traficLight.description)
//            }
//        }
//    }
//}

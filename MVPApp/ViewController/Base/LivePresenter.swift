//
//  LivePresenter.swift
//  MVPApp
//
//  Created by 김동율 on 2023/03/15.
//

import Foundation

protocol LiveVCProtocol {}

class LivePresenter {
    private let liveVCProtocol: LiveVCProtocol
    
    init(liveVCProtocol: LiveVCProtocol) {
        self.liveVCProtocol = liveVCProtocol
    }
    
    func testokok() {
        print("Token")
    }
}

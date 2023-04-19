//
//  RankingPresenter.swift
//  MVPApp
//
//  Created by 김동율 on 2023/04/19.
//

import Foundation

protocol RankingVCProtocol {}

class RankingPresenter {
    private let rankingVCProtocol: RankingVCProtocol
    
    init(rankingVCProtocol: RankingVCProtocol) {
        self.rankingVCProtocol = rankingVCProtocol
    }
    
    func testRanking() {
        print("RAnking")
    }
}

//
//  RankingViewController.swift
//  MVPApp
//
//  Created by 김동율 on 2023/03/15.
//

import UIKit

class RankingViewController: UIViewController {

    private lazy var rankPresenter = RankingPresenter(rankingVCProtocol: self)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rankPresenter.testRanking()
        print("RANK")
        DispatchQueue.main.async {
            setNaviBar()
        }

        // Do any additional setup after loading the view.
    }

}

extension RankingViewController: RankingVCProtocol {
    
}

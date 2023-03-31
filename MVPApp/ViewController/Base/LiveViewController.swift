//
//  BaseViewController.swift
//  MVPApp
//
//  Created by 김동율 on 2023/03/15.
//

enum CurrentVC {
    case ranking
    case myInfo
    case live
    case vod
    case favorite
}

import UIKit

class LiveViewController: UIViewController {
    
    private lazy var livePresenter = LivePresenter(liveVCProtocol: self)
    
    lazy var currentVC: CurrentVC = .live
    
    override func viewDidLoad() {
        super.viewDidLoad()
        livePresenter.testokok()
        print("ViewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear")
        DispatchQueue.main.async {
            setNaviBar()
        }
        
    }
    

    
    
    // VC 설정
    func checkVC() {
        switch currentVC {
        case .live:
            print("live")
            DispatchQueue.main.async {
                let storyboard = UIStoryboard(name: "LiveViewController", bundle: nil)
                guard let liveVC = storyboard.instantiateViewController(
                    withIdentifier: "LiveViewController") as? LiveViewController else { return }
                liveVC.modalTransitionStyle = .crossDissolve
                liveVC.modalPresentationStyle = .fullScreen
                self.present(liveVC, animated: true, completion: nil)
            }
            break
        case .vod:
            print("vod")
            break
        case .favorite:
            print("favorite")
            break
        case .ranking:
            print("ranking")
            DispatchQueue.main.async {
                let storyboard = UIStoryboard(name: "RankingViewController", bundle: nil)
                guard let rankVC = storyboard.instantiateViewController(
                    withIdentifier: "RankingViewController") as? RankingViewController else { return }
                rankVC.modalTransitionStyle = .crossDissolve
                rankVC.modalPresentationStyle = .fullScreen
                self.present(rankVC, animated: true, completion: nil)
            }
            break
        case .myInfo:
            print("myInfo")
            break
        }
    }
    
}

extension LiveViewController: LiveVCProtocol {
    
}

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
    
    private lazy var livePresenter = LivePresenter(liveService: LiveService())
    
    
    @IBOutlet weak var colorView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Live_ViewDidLoad")
        livePresenter.setViewDelegate(liveDelegate: self)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Live_viewWillAppear")
        DispatchQueue.main.async {
            setNaviBar()
        }
    }
    
    
    @IBAction func RedActionBtn(_ sender: UIButton) {
        print("Red입니다.")
        livePresenter.trafficLightColorSelected(colorName: "Red")
    }
    
    @IBAction func BlueActionBtn(_ sender: UIButton) {
        livePresenter.trafficLightColorSelected(colorName: "Blue")
    }
    
}

extension LiveViewController: LiveDelegate {
    func displayTrafficLight(description: String) {
        switch description {
        case "Red":
            colorView.backgroundColor = .red
            break
        default:
            colorView.backgroundColor = .blue
            break
        }
    }
    
    
}



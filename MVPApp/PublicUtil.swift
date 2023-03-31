//
//  PublicClass.swift
//  MVPApp
//
//  Created by 김동율 on 2023/03/31.
//

import Foundation
import UIKit

let topNaviBar: TopNavigationView = TopNavigationView.shared

func setNaviBar() {
    guard let presentVC = topViewController() else { return }
    
    let window = UIApplication.shared.windows[0]
    let topPadding = window.safeAreaInsets.top
//        let bottomPadding = window.safeAreaInsets.bottom

    presentVC.view.addSubview(topNaviBar)
    topNaviBar.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
        topNaviBar.topAnchor.constraint(equalTo: presentVC.view.topAnchor, constant: topPadding),
        topNaviBar.leadingAnchor.constraint(equalTo: presentVC.view.leadingAnchor, constant: 0),
        topNaviBar.heightAnchor.constraint(equalToConstant: 56),
        topNaviBar.trailingAnchor.constraint(equalTo: presentVC.view.trailingAnchor, constant: 0)])
}

// 구글링으로 긁어옴... 현재 ViewController 구하는 거다.
func topViewController() -> UIViewController? {
    if let keyWindow = UIApplication.shared.keyWindow {
        if var viewController = keyWindow.rootViewController {
            while viewController.presentedViewController != nil {
                viewController = viewController.presentedViewController!
            }

            print("topViewController -> \(String(describing: viewController))")

            return viewController
        }
    }

    return nil

}

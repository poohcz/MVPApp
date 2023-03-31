//
//  TopNavigationView.swift
//  MVPApp
//
//  Created by 김동율 on 2023/03/15.
//


import UIKit

class TopNavigationView: UIView {
    
    static let shared = TopNavigationView()

    override init(frame: CGRect) {
            super.init(frame: frame)
            loadView()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            loadView()
        }
        
        private func loadView() {
            let naviView = Bundle.main.loadNibNamed("TopNavigationView", owner: self, options: nil)?.first as! UIView
            naviView.frame = bounds
            addSubview(naviView)
            
        }

    
    @IBAction func logoActionBtn(_ sender: UIButton) {
        print("logoActionBtn")
    }
    
    @IBAction func onAirActionBtn(_ sender: UIButton) {
        print("onAirActionBtn")
    }
    
    @IBAction func searchActionBtn(_ sender: UIButton) {
        print("searchActionBtn")
    }
    
    @IBAction func myInfoActionBtn(_ sender: UIButton) {
        print("myInfoActionBtn")
    }
    
    
    
    
}

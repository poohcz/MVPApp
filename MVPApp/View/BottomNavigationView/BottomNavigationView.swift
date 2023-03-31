//
//  BottomNavigationView.swift
//  MVPApp
//
//  Created by 김동율 on 2023/03/15.
//

import UIKit

class BottomNavigationView: UIView {

    override init(frame: CGRect) {
            super.init(frame: frame)
            loadView()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            loadView()
        }
        
        private func loadView() {
            let view = Bundle.main.loadNibNamed("BottomNavigationView", owner: self, options: nil)?.first as! UIView
            view.frame = bounds
            addSubview(view)
        }

}

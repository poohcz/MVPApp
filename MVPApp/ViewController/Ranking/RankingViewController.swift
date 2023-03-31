//
//  RankingViewController.swift
//  MVPApp
//
//  Created by 김동율 on 2023/03/15.
//

import UIKit

class RankingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        print("RANK")
        DispatchQueue.main.async {
            setNaviBar()
        }

        // Do any additional setup after loading the view.
    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

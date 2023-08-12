//
//  TabBarViewController.swift
//  VKApp_Nik_Galivets
//
//  Created by Nikita on 11/10/22.
//

import UIKit

final class TabBarViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(true, animated: true)
    }
}

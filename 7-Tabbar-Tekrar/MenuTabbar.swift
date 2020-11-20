//
//  MenuTabbar.swift
//  7-Tabbar-Tekrar
//
//  Created by emir kartal on 25.07.2020.
//  Copyright © 2020 mustafa erden. All rights reserved.
//

import UIKit

class MenuTabbar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

       print("MenuTabbar Called")
        
        self.selectedIndex = 0
        createButton()
        
        
    }
    
    func createButton() {
        
        let x = view.frame.width - 80
        let y = view.frame.height - 80
        
        let btn = UIButton(frame: CGRect(x: x, y: y / 2, width: 80, height: 80))
        //btn.backgroundColor = .black
        btn.setBackgroundImage(.add, for: .normal)
        btn.addTarget(self, action: #selector(btnClicked), for: .touchUpInside)
        view.addSubview(btn)
    }
    
    @objc func btnClicked() {
        print("btnClicked call")
    }
    
    
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item == (self.tabBar.items!) [0]{
           print("0")
        }
        else if item == (self.tabBar.items!) [1] {
            print("1")
        }
    }

}

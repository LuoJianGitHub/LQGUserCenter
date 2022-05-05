//
//  LQGUserCenterController.swift
//  LQGUserCenter
//
//  Created by 罗建
//  Copyright (c) 2021 罗建. All rights reserved.
//

import UIKit
import LQGCategory
import LQGBaseView

public class LQGUserCenterController: LQGBaseViewController {
    
    //MARK: - NavigationBar
        
    public override func lqg_setupNavigationBarItem() {
        self.title = "我的"
        
        self.navigationItem.rightBarButtonItem = .init(image: .init(named: "icon_LQGUserCenter_settings", bundleFor: self.classForCoder, urlForResource: "LQGUserCenter"), style: .plain, target: self, action: #selector(rightBarButtonItemAction))
    }
    
    //MARK: - Action
    
    @objc func rightBarButtonItemAction() {
        self.pushToLQGUserSettingsController()
    }
    
    //MARK: - 界面跳转
    
    func pushToLQGUserSettingsController() {
        let vc: LQGUserSettingsController = .init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

//
//  LQGUserSettingsController.swift
//  LQGUserCenter
//
//  Created by 罗建
//  Copyright (c) 2021 罗建. All rights reserved.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa
import LQGBaseView
import LQGUser

class LQGUserSettingsController: LQGBaseViewController {
    
    //MARK: - NavigationBar
    
    override func lqg_setupNavigationBarItem() {
        self.title = "设置"
    }
    
    //MARK: - 属性
    
    lazy var signOutBtn: UIButton = {
        let btn = UIButton.init(type: .custom)
        btn.backgroundColor = .red
        btn.layer.cornerRadius = 4
        btn.setTitleColor(.white, for: .normal)
        btn.setTitle("退出登录", for: .normal)
        return btn
    }()
        
    //MARK: - 初始化
    
    public override func lqg_addSubviews() {
        self.view.addSubview(self.signOutBtn)
        self.signOutBtn.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(20)
            make.center.equalToSuperview()
            make.height.equalTo(44)
        }
    }
    
    //MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.signOutBtn.rx.tap.subscribe {
            LQGUserManager.shared.signOut()
        } onDisposed: {}
    }
    
}

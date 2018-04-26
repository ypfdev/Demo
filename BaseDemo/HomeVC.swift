//
//  HomeVC.swift
//  HelloWorld
//
//  Created by YPF on 2018/4/26.
//  Copyright © 2018年 YPF. All rights reserved.
//

import UIKit

class HomeVC: UIViewController {
    
    lazy var pushBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("push", for: .normal)
        btn.addTarget(self, action: #selector(pushBtnClicked), for: .touchUpInside)
        return btn
    }()
    
    // MARK: - 控制器生命周期
    
    // A将要显示
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("A viewWillAppear")
    }
    
    // A已经显示
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("A viewDidAppear")
    }
    
    // A将要消失
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("A viewWillDisappear")
    }
    
    // A已经消失
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("A viewDidDisappear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
//        print("A viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
//        print("A viewDidLayoutSubviews")
    }
    
    // A已经加载视图
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
        
        print("A viewDidLoad")
    }
    
    // MARK: - 设置UI
    
    func setupUI() {
        self.view.backgroundColor = UIColor.red
        
        self.myAddSubviews()
    }
    
    func myAddSubviews() {
        self.view.addSubview(pushBtn)
        pushBtn.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.height.equalTo(50)
            $0.width.equalTo(100)
        }
    }
    
    /// 点击push推出NewVC的方法
    @objc func pushBtnClicked() {
        
        print("=====A push B=====")
        
        let targetVC = NewVC()
        self.navigationController?.pushViewController(targetVC, animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

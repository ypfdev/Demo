//
//  NewVC.swift
//  BaseDemo
//
//  Created by YPF on 2018/4/26.
//  Copyright © 2018年 YPF. All rights reserved.
//

import UIKit

class NewVC: UIViewController {
    
    lazy var popBtn: UIButton = {
        let btn = UIButton()
        btn.setTitle("pop", for: .normal)
        btn.addTarget(self, action: #selector(popBtnClicked), for: .touchUpInside)
        return btn
    }()
    
    // MARK: - 控制器生命周期
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("B viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("B viewDidAppear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("B viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("B viewDidDisappear")
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        //        print("A viewWillLayoutSubviews")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //        print("A viewDidLayoutSubviews")
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setupUI()
        print("B viewDidLoad")
    }
    
    // MARK: - 设置UI
    
    func setupUI() {
        self.view.backgroundColor = UIColor.orange
        
        self.myAddSubviews()
    }
    
    func myAddSubviews() {
        self.view.addSubview(popBtn)
        popBtn.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.height.equalTo(50)
            $0.width.equalTo(100)
        }
    }
    
    @objc func popBtnClicked() {
        print("=====B pop A=====")
        self.navigationController?.popViewController(animated: true)
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

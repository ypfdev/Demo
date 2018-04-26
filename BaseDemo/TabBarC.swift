//
//  TabBarC.swift
//  HelloWorld
//
//  Created by YPF on 2018/4/26.
//  Copyright © 2018年 YPF. All rights reserved.
//

import UIKit
import SnapKit

class TabBarC: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        self.setupUI()
    }
    
    func setupUI() {
        
        // 添加首页子控制器
        let homeVC = HomeVC()
        self.addChildVC(childVC: homeVC, title: "首页", normalImg: "icon_tab_home", selectedImg: "icon_tab_me_highlighted")
        
        // 添加购物车子控制器
        let cartVC = CartVC()
        self.addChildVC(childVC: cartVC, title: "购物车", normalImg: "icon_tab_cart", selectedImg: "icon_tab_cart_highlighted")
        
        // 添加我的子控制器
        let meVC = MeVC()
        self.addChildVC(childVC: meVC, title: "我的", normalImg: "icon_tab_me", selectedImg: "icon_tab_me_highlighted")
        
        // 设置默认选中第一个
        self.selectedIndex = 0
    }
    
    
    /// 工厂方法：创建子控制器
    ///
    /// - Parameters:
    ///   - childVC: 子控制器
    ///   - title: 标题
    ///   - normalImg: 正常图片
    ///   - selectedImg: 选中图片
    func addChildVC(childVC: UIViewController, title: String, normalImg: String, selectedImg: String) {
        
        self.tabBarItem.title = title as String
        let color = UIColor.hexColorWith(hexStr: "")
        self.tabBar.tintColor = color
        
        childVC.title = title
        
        var norImg = UIImage(named: normalImg)
        norImg = norImg?.withRenderingMode(.alwaysOriginal)
        
        var selImg = UIImage(named: selectedImg)
        selImg = selImg?.withRenderingMode(.alwaysOriginal)
        
        let tabItem = UITabBarItem(title: title, image: norImg, selectedImage: selImg)
        
        let navVC = UINavigationController()
        navVC.tabBarItem = tabItem
        navVC.addChildViewController(childVC)
        
        self.addChildViewController(navVC)
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

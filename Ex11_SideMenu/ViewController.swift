//
//  ViewController.swift
//  Ex11_SideMenu
//
//  Created by 송윤근 on 2022/01/06.
//

import UIKit

class ViewController: UIViewController {

    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        appDelegate.mainVC = self
        
    }
    
    
    func gotoLoginView() {
        let loginVC = storyboard?.instantiateViewController(identifier: "LoginVC") as! LoginViewController
        self.navigationController?.pushViewController(loginVC, animated: true)
        
        
        
    }
    
    func gotoNoticeView() {
        let NoticeVC = storyboard?.instantiateViewController(identifier: "NoticeVC") as! NoticeViewController
        self.navigationController?.pushViewController(NoticeVC, animated: true)
        
    }
    
}

//사이드 메뉴가 열렷다 닫혓다 하는것을 옵져빙 할 수 있다.
//extention 코드 기법

import SideMenu

extension ViewController : SideMenuNavigationControllerDelegate{
    
    func sideMenuWillAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("sidemenu will appear")
        
    }
    
    func sideMenuDidAppear(menu: SideMenuNavigationController, animated: Bool) {
        print("sidemenu didappear")
    }
    func sideMenuWillDisappear(menu: SideMenuNavigationController, animated: Bool) {
        print("sidemenu will disappear")
    }
}


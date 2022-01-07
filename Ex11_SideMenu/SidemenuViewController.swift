//
//  SidemenuViewController.swift
//  Ex11_SideMenu
//
//  Created by 송윤근 on 2022/01/07.
//

import UIKit

class SidemenuViewController: UIViewController {

    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    
    
    @IBAction func onbtnLogin(_ sender: Any) {
        
        appDelegate.mysidemenu?.dismiss(animated: true, completion: nil)
        appDelegate.mainVC?.gotoLoginView()
        
        
    }
    
    @IBAction func onbtn_notice(_ sender: Any) {
        
        appDelegate.mysidemenu?.dismiss(animated: true, completion: nil)
        appDelegate.mainVC?.gotoNoticeView()
    }
    
}

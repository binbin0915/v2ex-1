//
//  MenuViewController.swift
//  v2ex
//
//  Created by ellipse42 on 15/9/22.
//  Copyright © 2015年 ellipse42. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    override func loadView() {
        NSBundle.mainBundle().loadNibNamed("MenuViewController", owner: self, options: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    

}

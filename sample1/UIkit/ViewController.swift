//
//  ViewController.swift
//  sample1
//
//  Created by Bairi Akash on 22/11/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let uiHostController = UIHostingController(rootView: HomeScreen().navigationBarBackButtonHidden())
        self.navigationController?.pushViewController(uiHostController, animated: COREVIDEO_TRUE)
    }
}


//
//  DetailViewController.swift
//  sample1
//
//  Created by Bairi Akash on 22/11/23.
//

import UIKit
import SwiftUI

protocol Datapass{
    func datapassing(newName: String)
}

class DetailViewController: UIViewController , DetailsInSwiftUIDelegate{
    
    @IBOutlet weak var enteredText: UITextField!
    
    var currentColour = true
    var delegate : Datapass?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func GotoSwiftUI(_ sender: UIButton) {
        let hostingController = UIHostingController(rootView: SecondSwiftUI(delegate : self))
        self.navigationController?.pushViewController(hostingController, animated: true)
    }
    
    @IBAction func update(_ sender: UIButton) {
        delegate?.datapassing( newName: self.enteredText.text!)

    }
    
    func toggleBackground() {
        currentColour = !currentColour
        if currentColour{
            self.view.backgroundColor = .systemMint
        }
        else {
            self.view.backgroundColor = .systemTeal
        }
    }
    func setConstraintsToSwiftUIView() {
        let hostView = UIHostingController(rootView:DetailsInSwiftUI( ))
        hostView.view.translatesAutoresizingMaskIntoConstraints = false
        self.view.addSubview(hostView.view)

        let constaints = [
            hostView.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostView.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostView.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hostView.view.heightAnchor.constraint(equalToConstant: 80)
            ]

        self.view.addConstraints(constaints)
    }
    
}




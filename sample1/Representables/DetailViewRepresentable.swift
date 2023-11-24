//
//  DetailViewRepresentable.swift
//  sample1
//
//  Created by Bairi Akash on 23/11/23.
//

import SwiftUI

protocol SomeDelegate{
    func set(_ text : String )
}

struct DetailViewRepresentable : UIViewControllerRepresentable{
    
    var delegate : SomeDelegate?
    func makeUIViewController(context: Context) -> DetailViewController {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailViewController") as! DetailViewController
        
        vc.delegate = context.coordinator
        return vc
    }
    
    func updateUIViewController(_ uiViewController: DetailViewController, context: Context) {
        uiViewController.setConstraintsToSwiftUIView( )
    }
    
    typealias UIViewControllerType = DetailViewController
    
    func makeCoordinator() -> Coordinator {
        Coordinator(detail: self)
    }
    
    class Coordinator: NSObject,Datapass{
        var detail: DetailViewRepresentable
        
        init(detail: DetailViewRepresentable) {
            self.detail = detail
        }
        
        func datapassing(newName: String) {
            self.detail.delegate?.set( newName)
        }
    }
    
}


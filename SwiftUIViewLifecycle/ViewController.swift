//
//  ViewController.swift
//  SwiftUIViewLifecycle
//
//  Created by 이광용 on 2021/03/16.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    let label = UILabel()
    
    override func loadView() {
        
        print("[ViewController]", #function)
        super.loadView()
    }
    
    override func viewDidLoad() {
        
        print("[ViewController]", #function)
        super.viewDidLoad()
        
        self.view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate(
            [self.label.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
             self.label.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
             self.label.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)]
        )
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("[ViewController]", #function)
        super.viewWillAppear(animated)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        print("[ViewController]", #function)
        super.viewDidAppear(animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        
        print("[ViewController]", #function)
        super.viewWillDisappear(animated)
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        
        print("[ViewController]", #function)
        super.viewDidDisappear(animated)
    }
    
    override func viewWillLayoutSubviews() {
        
        print("[ViewController]", #function)
        super.viewWillLayoutSubviews()
    }
    
    override func viewDidLayoutSubviews() {
        
        print("[ViewController]", #function)
        super.viewDidLayoutSubviews()
    }
    
    deinit {
        
        print("[ViewController]", #function, "\n")
    }
}

struct ViewControllerWrapper: UIViewControllerRepresentable {
    
    @Binding var count: Int
    
    func makeUIViewController(
        context: Context
    ) -> ViewController {
        let viewController = ViewController()
        return viewController
    }
    
    func updateUIViewController(
        _ uiViewController: ViewController,
        context: Context
    ) {
        uiViewController.label.text = String(describing: count)
    }
    
}

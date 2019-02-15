//
//  ViewController.swift
//  MVVMEnforcerExample
//
//  Created by Liam DeCoste on 2/14/19.
//  Copyright © 2019 elmd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var testableView: TestableView<DefaultTestableViewModel>!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let dataModel = TestableDataModel(backgroundColor: .blue)
        
        let viewModel = DefaultTestableViewModel(withData: dataModel)
        
        testableView = TestableView()
        testableView.translatesAutoresizingMaskIntoConstraints = false
        testableView.configure(viewModel)

        view.addSubview(testableView)
        
        view.addConstraints([
            NSLayoutConstraint(item: testableView, attribute: .width, relatedBy: .equal, toItem: view, attribute: .width, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: testableView, attribute: .height, relatedBy: .equal, toItem: view, attribute: .height, multiplier: 1.0, constant: 0),
        ])
        
        view.layoutIfNeeded()
    }

}


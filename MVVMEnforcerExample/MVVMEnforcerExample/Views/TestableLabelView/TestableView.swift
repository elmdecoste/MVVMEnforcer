//
//  LabelView.swift
//  MVVMEnforcerExample
//
//  Created by Liam DeCoste on 2/14/19.
//  Copyright © 2019 elmd. All rights reserved.
//

import UIKit
import MVVMEnforcer

class TestableView<T: TestableViewModel>: UIView, EnforcedView {
    
    typealias Model = T

    var viewModel: Model!
        
    func configure() {
        print("Configuring")
    }
}

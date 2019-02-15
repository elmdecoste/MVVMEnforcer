//
//  EnforcedView.swift
//  MVVMEnforcer
//
//  Created by Liam DeCoste on 2/14/19.
//  Copyright © 2019 elmd. All rights reserved.
//

import Foundation

public protocol EnforcedView: class {
    
    associatedtype Model: ViewModel
    
    var viewModel: Model! { get set }
    
    func configure()
}

public extension EnforcedView {
    
    func configure<T: ViewModel>(_ viewModel: T) where T.View == Self {
        // Force cast what was passed in as our associated type or else something
        // very bad happened
        guard let typed = viewModel as? Model else {
            fatalError("The provided view model did not match the associated type")
        }
        
        self.viewModel = typed
        self.configure()
        viewModel.configure(view: self)
    }
    
}

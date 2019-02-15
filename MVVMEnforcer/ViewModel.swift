//
//  ViewModel.swift
//  MVVMEnforcer
//
//  Created by Liam DeCoste on 2/14/19.
//  Copyright © 2019 elmd. All rights reserved.
//

import Foundation

public protocol ViewModel {
    
    associatedtype DataModel
    associatedtype View: EnforcedView
    
    var dataModel: DataModel { get set }
    
    func configure(view: View)
    
    init(withData data: DataModel)
}

//
//  LabelViewModel.swift
//  MVVMEnforcerExample
//
//  Created by Liam DeCoste on 2/14/19.
//  Copyright © 2019 elmd. All rights reserved.
//

import Foundation
import MVVMEnforcer

protocol TestableViewModel: ViewModel {
    // View model contract
}

class DefaultTestableViewModel: TestableViewModel {
    
    typealias Data = TestableDataModel
    typealias View = TestableView<DefaultTestableViewModel>
    
    var dataModel: Data
    
    required init(withData data: Data) {
        self.dataModel = data
    }
    
    func configure(view: View) {
        view.backgroundColor = dataModel.backgroundColor
    }
}

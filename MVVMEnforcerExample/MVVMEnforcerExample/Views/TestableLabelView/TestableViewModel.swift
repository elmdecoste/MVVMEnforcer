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
    
}

class DefaultTestableViewModel: TestableViewModel {
    
    typealias DataModel = TestableDataModel
    typealias View = TestableView<DefaultTestableViewModel>
    
    var dataModel: DataModel
    
    required init(withData data: DataModel) {
        self.dataModel = data
    }
    
    func configure(view: View) {
        view.backgroundColor = dataModel.backgroundColor
    }
}

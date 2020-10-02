//
//  WeakVarProxy.swift
//  Main
//
//  Created by Thiago Oliveira on 01/10/20.
//

import Foundation
import Presentation

final class WearkVarProxy<T: AnyObject> {
    private weak var instance: T?
    
    init(_ instance: T) {
        self.instance = instance
    }
}


extension WearkVarProxy: AlertView where T: AlertView {
    func showMessage(viewModel: AlertViewModel) {
        instance?.showMessage(viewModel: viewModel)
    }
}

extension WearkVarProxy: LoadingView where T: LoadingView {
    func display(viewModel: LoadingViewModel) {
        instance?.display(viewModel: viewModel)
    }
}

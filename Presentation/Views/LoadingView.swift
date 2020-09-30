//
//  LoadingView.swift
//  Presentation
//
//  Created by Thiago Oliveira on 29/09/20.
//

import Foundation

public protocol LoadingView{
    func display(viewModel: LoadingViewModel)
}

public struct LoadingViewModel: Equatable {
    public var isLoading: Bool
    
    public init(isLoading: Bool) {
        self.isLoading = isLoading
    }
}

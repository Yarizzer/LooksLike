//
//  AppUILayerDeviceServiceType.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

import Foundation

enum FeedbackType {
    case success, failure
}

protocol AppUILayerDeviceServiceType {
    var screenSize: CGRect { get }
    var topPaddingValue: CGFloat { get }
    var bottomPaddingValue: CGFloat { get }
    
    func generateFeedback(with type: FeedbackType)
    func vibrate()
}

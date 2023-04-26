//
//  AppCoreContract.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

protocol AppCoreUILayerType {
    var uiLayer: AppUILayerType { get }
}

protocol AppCoreAILayerType {
    var mlLayer: AppMLLayerType { get }
}

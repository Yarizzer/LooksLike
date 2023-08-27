//
//  AppCoreContract.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

protocol AppCoreUILayerType: AnyObject {
  var uiLayer: AppUILayerType { get }
}

protocol AppCoreAILayerType: AnyObject {
  var mlLayer: AppMLLayerType { get }
}

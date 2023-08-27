//
//  AppCore.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

class AppCore {
  static let shared = AppCore()
  
  private init() {
    self.uiL = AppUILayer()
    self.mlL = AppMLLayer()
  }
  
  private let uiL: AppUILayerType
  private let mlL: AppMLLayerType
}

extension AppCore: AppCoreUILayerType {
  var uiLayer: AppUILayerType { uiL }
}

extension AppCore: AppCoreAILayerType {
  var mlLayer: AppMLLayerType { mlL }
}

//
//  AppUILayer.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

class AppUILayer {
  init() {
    self.styleS = AppUILayerStyleService()
    self.deviceS = AppUILayerDeviceService()
  }
  
  private let styleS: AppUILayerStyleServiceType
  private let deviceS: AppUILayerDeviceServiceType
}

extension AppUILayer: AppUILayerType {
  var style: AppUILayerStyleServiceType { styleS }
  var device: AppUILayerDeviceServiceType { deviceS }
}

//
//  AppUILayer.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

class AppUILayer {
    init() {
        self.styleService = AppUILayerStyleService()
        self.deviceService = AppUILayerDeviceService()
    }
    
    private let styleService: AppUILayerStyleServiceType
    private let deviceService: AppUILayerDeviceServiceType
}

extension AppUILayer: AppUILayerType {
    var style: AppUILayerStyleServiceType { styleService }
    var device: AppUILayerDeviceServiceType { deviceService }
}

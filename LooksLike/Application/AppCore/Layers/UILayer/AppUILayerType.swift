//
//  AppUILayerType.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

protocol AppUILayerType: AnyObject {
  var style: AppUILayerStyleServiceType { get }
  var device: AppUILayerDeviceServiceType { get }
}

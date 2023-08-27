//
//  MainSceneViewModel.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

import Foundation

protocol MainSceneViewModelType: AnyObject {
  //Subscription
  func setupSubscription()
  //Publisher
  var dataDidChanged: Publisher<Bool?> { get }
  
  var currentValue: String { get }
  
  func getCaptureViewModel() -> CaptureViewModelType
}

class MainSceneViewModel: NSObject {
  //Subscription
  func setupSubscription() {
    AppCore.shared.mlLayer.data.subscribe(self, closure: extractSelf { sSelf, data in
      sSelf.data = data.newValue
    })
  }
  
  //Publisher
  var dataDidChanged: Publisher<Bool?> = Publisher(nil)
  
  private var data: String? {
    didSet {
      dataDidChanged.value = true
    }
  }
}

extension MainSceneViewModel: MainSceneViewModelType {
  var currentValue: String { data ?? "" }
  
  func getCaptureViewModel() -> CaptureViewModelType { CaptureViewModel() }
}

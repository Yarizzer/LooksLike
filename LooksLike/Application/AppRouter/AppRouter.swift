//
//  AppRouter.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

import UIKit

protocol AppRoutable: AnyObject {
  func routeToInitialScene()
}

class AppRouter {
  init() {
    let window = UIWindow(frame: UIScreen.main.bounds)
    window.backgroundColor = .systemBackground
    self.window = window
  }
  
  private var window: UIWindow
}

extension AppRouter: AppRoutable {
  func routeToInitialScene() {
    window.rootViewController = MainSceneRouter.assembly()
    window.makeKeyAndVisible()
  }
}

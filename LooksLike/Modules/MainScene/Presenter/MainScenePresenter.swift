//
//  MainScenePresenter.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

import Foundation

class MainScenePresenter: NSObject {
	init(for view: MainSceneViewControllerType, service: MainScenePresenterServiceType) {
		self.viewController = view
		self.service = service
	}
  
  private func setupSubscription() {
    service.model.dataDidChanged.subscribe(self, closure: extractSelf { sSelf, success in
      sSelf.viewController?.update(viewModelDataType: .updateLabel(with: sSelf.service.model.currentValue))
    })
  }
	
	private var viewController: MainSceneViewControllerType?
	private let service: MainScenePresenterServiceType
}

extension MainScenePresenter: MainScenePresentable {
	func response(responseType: MainScenePresenterResponse.MainSceneResponseType) {
    let model = service.model
    
    switch responseType {
    case .initialSetup:
      setupSubscription()
      viewController?.update(viewModelDataType: .initialSetup(with: model))
    case .viewIsReady: viewController?.update(viewModelDataType: .viewIsReady)
    case .viewWillDisappear: viewController?.update(viewModelDataType: .viewWillDisappear)
    }
	}
}

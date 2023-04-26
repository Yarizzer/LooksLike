//
//  MainScenePresenter.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

class MainScenePresenter {
	init(for view: MainSceneViewControllerType, service: MainScenePresenterServiceType) {
		self.viewController = view
		self.service = service
        
        service.model.dataDidChanged.subscribe(self) { [weak self] success in
            self?.viewController?.update(viewModelDataType: .updateLabel(with: service.model.currentValue))
        }
	}
	
	private var viewController: MainSceneViewControllerType?
	private let service: MainScenePresenterServiceType
}

extension MainScenePresenter: MainScenePresentable {
	func response(responseType: MainScenePresenterResponse.MainSceneResponseType) {
        let model = service.model
        
        switch responseType {
        case .initialSetup: viewController?.update(viewModelDataType: .initialSetup(with: model))
        case .viewIsReady: viewController?.update(viewModelDataType: .viewIsReady)
        case .viewWillDisappear: viewController?.update(viewModelDataType: .viewWillDisappear)
        }
	}
}

//
//  MainSceneInteractorService.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol MainSceneInteractorServiceType: AnyObject {
  func setupSubscription()
}

class MainSceneInteractorService {
	init(withModel model: MainSceneViewModelType) {
		self.viewModel = model
	}
	
	private let viewModel: MainSceneViewModelType
}

extension MainSceneInteractorService: MainSceneInteractorServiceType {
  func setupSubscription() { viewModel.setupSubscription() }
}

//
//  MainSceneViewControllerContract.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol MainSceneViewControllerType: AnyObject {
	func update(viewModelDataType: MainSceneViewControllerViewModel.ViewModelDataType)
}

struct MainSceneViewControllerViewModel {
	enum ViewModelDataType {
    case initialSetup(with: MainSceneViewModelType)
    case viewIsReady
    case viewWillDisappear
    case updateLabel(with: String)
	}
}

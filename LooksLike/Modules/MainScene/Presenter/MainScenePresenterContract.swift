//
//  MainScenePresenterContract.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol MainScenePresentable {
  func response(responseType: MainScenePresenterResponse.MainSceneResponseType)
}

struct MainScenePresenterResponse {
	enum MainSceneResponseType {
    case initialSetup
    case viewIsReady
    case viewWillDisappear
	}
}

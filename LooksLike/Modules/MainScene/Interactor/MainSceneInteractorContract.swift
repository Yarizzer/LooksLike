//
//  MainSceneInteractorContract.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol MainSceneInteractable {
	func makeRequest(requestType: MainSceneInteractorRequest.RequestType)
}

struct MainSceneInteractorRequest {
	enum RequestType {
        case initialSetup
        case viewIsReady
        case viewWillDisappear
	}
}

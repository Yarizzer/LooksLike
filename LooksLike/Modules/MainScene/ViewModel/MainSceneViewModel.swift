//
//  MainSceneViewModel.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

protocol MainSceneViewModelType {
    //Subscription
    func setupSubscription()
    //Publisher
    var dataDidChanged: Publisher<Bool?> { get }
    
    var currentValue: String { get }
    
    func getCaptureViewModel() -> CaptureViewModelType
}

class MainSceneViewModel {
    //Subscription
    func setupSubscription() {
        AppCore.shared.mlLayer.data.subscribe(self) { [weak self] data in
            self?.data = data.newValue
        }
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

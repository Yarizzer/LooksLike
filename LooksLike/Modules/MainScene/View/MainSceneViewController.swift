//
//  MainSceneViewController.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//  Copyright (c) 2023 Yaroslav Abaturov. All rights reserved.
//

import UIKit

class MainSceneViewController: BaseViewController<MainSceneInteractable> {
  // MARK: View lifecycle
  override func viewDidLoad() {
    super.viewDidLoad()
    
    setup()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    super.viewDidAppear(animated)
    
    interactor?.makeRequest(requestType: .viewIsReady)
  }
  
  override func viewWillDisappear(_ animated: Bool) {
    super.viewWillDisappear(animated)
    
    interactor?.makeRequest(requestType: .viewWillDisappear)
  }
  
  private func setup() {
    view.backgroundColor = AppCore.shared.uiLayer.style.colorDarkGray
    
    label.font = AppCore.shared.uiLayer.style.labelTitleFontMedium
    label.minimumScaleFactor = Constants.minScaleFactor
    label.textColor = AppCore.shared.uiLayer.style.colorLightGray
    
    interactor?.makeRequest(requestType: .initialSetup)
  }
  
  @IBOutlet private weak var captureView: CaptureView!
  @IBOutlet private weak var label: UILabel!
}

extension MainSceneViewController: MainSceneViewControllerType {
  func update(viewModelDataType: MainSceneViewControllerViewModel.ViewModelDataType) {
    switch viewModelDataType {
    case .initialSetup(let model):  captureView.inject(model: model.getCaptureViewModel())
    case .viewIsReady:              captureView.awakeSession()
    case .viewWillDisappear:        captureView.sleepSession()
    case .updateLabel(let data):    label.text = data
    }
  }
}

extension MainSceneViewController {
	private struct Constants {
    static let minScaleFactor: CGFloat = 0.5
  }
}

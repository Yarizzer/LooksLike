//
//  CaptureViewModel.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

import AVFoundation

class CaptureViewModel: CaptureViewModelType {
    func updatePrediction(for image: CVPixelBuffer) {
        AppCore.shared.mlLayer.updatePrediction(for: image)
    }
}

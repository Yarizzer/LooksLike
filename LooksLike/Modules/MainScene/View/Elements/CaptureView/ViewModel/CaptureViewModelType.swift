//
//  CaptureViewModelType.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

import AVFoundation

protocol CaptureViewModelType {
    func updatePrediction(for image: CVPixelBuffer)
}

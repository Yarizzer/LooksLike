//
//  AppMLLayerType.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

import CoreML

protocol AppMLLayerType {
    //Publishers
    var data: Publisher<String?> { get }
    
    //Functions
    func updatePrediction(for image: CVPixelBuffer)
}

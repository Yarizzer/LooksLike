//
//  AppUILayerStyleService.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

import UIKit

class AppUILayerStyleService {
    //MARK: - Style
    private enum StyleColors {
        case clear
        case white
        case black
        case lightGray
        case darkGray
        case red
        case softGreen
        case green
        case softYellow
        case softBlue
        case blue
        case softPurple
        case purple
        
        var color: UIColor {
            switch self {
            case .clear:        return #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
            case .white:        return #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            case .black:        return #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            case .lightGray:    return #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)        // hex: CDCDCD
            case .darkGray:     return #colorLiteral(red: 0.2352941176, green: 0.2352941176, blue: 0.2352941176, alpha: 1)        // hex: 3C3C3C
            case .red:          return #colorLiteral(red: 1, green: 0.3137254902, blue: 0, alpha: 1)        // hex: FF5000
            case .softGreen:    return #colorLiteral(red: 0.7254901961, green: 0.8196078431, blue: 0.6509803922, alpha: 1)        // hex: B9D1A6
            case .green:        return #colorLiteral(red: 0, green: 0.6666666667, blue: 0.3137254902, alpha: 1)        // hex: 00AA50
            case .softYellow:   return #colorLiteral(red: 0.9607843137, green: 0.9411764706, blue: 0.6, alpha: 1)        // hex: F5F099
            case .softBlue:     return #colorLiteral(red: 0.007843137255, green: 0.9882352941, blue: 0.9843137255, alpha: 1)        // hex: 02FCFB
            case .blue:         return #colorLiteral(red: 0.05490196078, green: 0.4823529412, blue: 0.9843137255, alpha: 1)        // hex: 0E7BFB
            case .softPurple:   return #colorLiteral(red: 0.5450980392, green: 0.5568627451, blue: 1, alpha: 1)        // hex: 8B8EFF
            case .purple:       return #colorLiteral(red: 0.5450980392, green: 0, blue: 1, alpha: 1)        // hex: 8B00FF
            }
        }
    }
}

extension AppUILayerStyleService: AppUILayerStyleServiceType {
    //Colors
    var colorClear: UIColor { StyleColors.clear.color }
    var colorWhite: UIColor { StyleColors.white.color }
    var colorBlack: UIColor { StyleColors.black.color }
    var colorLightGray: UIColor { StyleColors.lightGray.color }
    var colorDarkGray: UIColor { StyleColors.darkGray.color }
    var colorRed: UIColor { StyleColors.red.color }
    var colorSoftGreen: UIColor { StyleColors.softGreen.color }
    var colorGreen: UIColor { StyleColors.green.color }
    var colorSoftYellow: UIColor { StyleColors.softYellow.color }
    var colorSoftBlue: UIColor { StyleColors.softBlue.color }
    var colorBlue: UIColor { StyleColors.blue.color }
    var colorSoftPurple: UIColor { StyleColors.softPurple.color }
    var colorPurple: UIColor { StyleColors.purple.color }
    //Fonts
    var labelTitleFontLarge: UIFont { Constants.fontLarge }
    var labelTitleFontMedium: UIFont { Constants.fontMedium }
    var labelTitleFontSmall: UIFont { Constants.fontSmall }
    //Layers
    var layerBorderWidth: CGFloat { Constants.layerWidth.border }
    var layerLineWidth: CGFloat { Constants.layerWidth.line }
}

extension AppUILayerStyleService {
    private struct Constants {
        static let fontLarge: UIFont = UIFont(name: "AppleSDGothicNeo-UltraLight", size: 20) ?? UIFont.systemFont(ofSize: 20)
        static let fontMedium: UIFont = UIFont(name: "AppleSDGothicNeo-UltraLight", size: 15) ?? UIFont.systemFont(ofSize: 15)
        static let fontSmall: UIFont = UIFont(name: "AppleSDGothicNeo-UltraLight", size: 12) ?? UIFont.systemFont(ofSize: 12)
        static let layerWidth: (border: CGFloat, line: CGFloat) = (border: 1.0, line: 1.2)
    }
}

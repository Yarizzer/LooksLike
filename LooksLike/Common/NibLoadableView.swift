//
//  NibLoadableView.swift
//  LooksLike
//
//  Created by Yaroslav Abaturov on 26.04.2023.
//

import UIKit

protocol NibLoadableView: AnyObject {
    static var nibName: String { get }
}

extension NibLoadableView where Self: UIView {
    static var nibName: String { String(describing: self) }
}

extension NibLoadableView where Self: UIViewController {
    static var nibName: String { String(describing: self) }
}

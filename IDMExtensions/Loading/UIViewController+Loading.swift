//
//  UIViewController+Extentions.swift
//
//
//  Created by NGUYEN CHI CONG on 7/6/17.
//  Copyright © 2017 NGUYEN CHI CONG. All rights reserved.
//

import Foundation
import IDMCore
import SiFUtilities
import UIKit

extension LoadingProtocol where Self: UIView {
    public func beginLoading() {
        showLoading()
    }

    public func finishLoading() {
        hideLoading()
    }
}

extension ProgressLoadingProtocol where Self: UIView {
    public func beginProgressLoading() {
        showLoading()
    }

    public func finishProgressLoading() {
        hideLoading()
    }

    public func loadingDidUpdateProgress(_ progress: Progress?) {
        #if DEBUG
        print("🚥 \(String(describing: Self.self)) is in progress: \(progress?.fractionCompleted ?? 0)")
        #endif
    }
}

// MARK: - UIView loading extensions

extension UIView: LoadingProtocol, ProgressLoadingProtocol {}

// MARK: - UIViewController loading extensions

extension UIViewController: LoadingProtocol {
    @objc open func beginLoading() {
        view.beginLoading()
    }

    @objc open func finishLoading() {
        view.finishLoading()
    }
}

extension UIViewController: ProgressLoadingProtocol {
    @objc open func beginProgressLoading() {
        view.beginProgressLoading()
    }

    @objc open func finishProgressLoading() {
        view.finishProgressLoading()
    }

    @objc open func loadingDidUpdateProgress(_ progress: Progress?) {
        view.loadingDidUpdateProgress(progress)
    }
}

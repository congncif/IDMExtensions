//
//  UIViewController+ErrorHandler.swift
//  IDMExtensions
//
//  Created by NGUYEN CHI CONG on 11/9/20.
//

import Foundation
import IDMCore

extension ErrorHandlingProtocol where Self: UIViewController {
    public func handle(error: Error) {
        showErrorAlert(error)
    }
}

extension UIViewController: ErrorHandlingProtocol {}

//
//  ErrorHandling.swift
//  IDMFoundation
//
//  Created by NGUYEN CHI CONG on 3/24/19.
//

import IDMCore
import SiFUtilities
import UIKit

extension DedicatedErrorHandler where E: Error {
    public init(errorType: E.Type, viewController: UIViewController?) {
        self.init(errorType: errorType) { [weak viewController] error in
            viewController?.showErrorAlert(error)
        }
    }

    public init(viewController: UIViewController?) {
        self.init { [weak viewController] error in
            viewController?.showErrorAlert(error)
        }
    }
}

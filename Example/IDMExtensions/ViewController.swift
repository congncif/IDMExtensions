//
//  ViewController.swift
//  IDMExtensions
//
//  Created by NGUYEN CHI CONG on 11/09/2020.
//  Copyright (c) 2020 NGUYEN CHI CONG. All rights reserved.
//

import IDMCore
import IDMExtensions
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        let json: String =
            """
            {
            "success": true,
            "code": 1001
            }
            """
        let model = try? RootModel(fromData: json)
        print(model?.success as Any)
        print(model?.code as Any)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        beginLoading()

        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            self.finishLoading()
        }
    }
}

struct RootModel {
    var success: Bool?
    var code: Int?
}

extension RootModel: Codable {
    enum CodingKeys: String, CodingKey {
        case success
        case code
    }
}

extension RootModel: ModelProtocol {}

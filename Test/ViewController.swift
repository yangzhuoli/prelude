//
//  ViewController.swift
//  Test
//
//  Created by FD on 2019/11/7.
//  Copyright © 2019 FD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        let json =
            """
            {
                "author":{
                    "name":"J.K.Rowling",
                    "birthday":"1965-07-31T00:00:00+0000"
                },
                "name":"Harry Potter",
                "pages":256
            }
            """

		let obj = try? JSONDecoder().decode(Response.self, from: json.data(using: .utf8) ?? Data())
        print(obj)
    }
}

struct Response: Codable {
    var pages: String
    var name: String
    var author: Author
}

struct Author: Codable {
	var name: String
	var birthday: Date
}

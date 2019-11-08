//
//  Array+Monad.swift
//  Prelude
//
//  Created by FD on 2019/11/5.
//  Copyright © 2019 FD. All rights reserved.
//

import Foundation

extension Array: Monad {
    func bind(_ f: (A) -> [B]) -> [B] {
        return flatMap(f)
    }
}

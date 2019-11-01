//
//  LensHolder.swift
//  Prelude
//
//  Created by FD on 2019/11/1.
//  Copyright © 2019 FD. All rights reserved.
//

import Foundation

public protocol LensObject {}

public struct LensHolder<Object: LensObject> {}

public extension LensObject {
    static var lens: LensHolder<Self> {
        return LensHolder()
    }
}


extension NSObject: LensObject {}




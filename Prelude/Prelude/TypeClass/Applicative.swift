//
//  Applicative.swift
//  HaskellPrelude
//
//  Created by FD on 2019/10/31.
//  Copyright © 2019 FD. All rights reserved.
//

public protocol Applicative: Functor {
    associatedtype FAB = K1<(A) -> B>

    func pure(_ a: A) -> Self
    func ap(_ f: FAB) -> FB
}

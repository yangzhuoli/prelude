//
//  Functor.swift
//  HaskellPrelude
//
//  Created by FD on 2019/10/30.
//  Copyright © 2019 FD. All rights reserved.
//

import Foundation

public protocol Functor {
    /// 1.functor laws
    ///         map(fa, id) == fa
    /// 2. Preserve composition:
    ///         fmap (f.g) = fmap g . fmap f

    /// fmap :: (a -> b) -> f a -> f b

    /// source
    associatedtype A
    /// target
    associatedtype B

    associatedtype FB = K1<B>

    func fmap(_ f: (A) -> B) -> FB
}

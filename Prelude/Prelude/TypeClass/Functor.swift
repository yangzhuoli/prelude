//
//  Functor.swift
//  HaskellPrelude
//
//  Created by FD on 2019/10/30.
//  Copyright © 2019 FD. All rights reserved.
//

import Foundation

public protocol Functor {
    associatedtype A
    associatedtype B: Functor = Self
    /// functor laws
    ///         map(fa, id) == fa
    ///
    /// 2. Preserve composition:
    ///
    ///         fmap (f.g) = fmap g . fmap f

    /// fmap :: (a -> b) -> f a -> f b
    func fmap<C>(_ transform: (A) -> C) -> B where B.A == C
}

extension Functor {
	
}


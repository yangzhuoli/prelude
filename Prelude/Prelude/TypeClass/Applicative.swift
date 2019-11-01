//
//  Applicative.swift
//  HaskellPrelude
//
//  Created by FD on 2019/10/31.
//  Copyright © 2019 FD. All rights reserved.
//

public protocol Applicative: Functor {
	
	
	func pure<A, T>(_ a: T) -> A where A.A == T, A: Applicative
	
	
}

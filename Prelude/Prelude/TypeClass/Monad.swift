//
//  Monad.swift
//  Prelude
//
//  Created by FD on 2019/10/31.
//  Copyright © 2019 FD. All rights reserved.
//

protocol Monad : Applicative {
	func bind(_ f: (A) -> FB) -> FB
}

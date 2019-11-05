//
//  Operator.swift
//  HaskellPrelude
//
//  Created by FD on 2019/10/30.
//  Copyright © 2019 FD. All rights reserved.
//

precedencegroup FunctionCompositionPrecedence {
    associativity: right
    higherThan: DefaultPrecedence
}

precedencegroup ApplicativePrecedence {
    associativity: left
    lowerThan: NilCoalescingPrecedence
    higherThan: FunctionCompositionPrecedence
}

infix operator <>: FunctionCompositionPrecedence
prefix operator <>
postfix operator <>

infix operator >>>: FunctionArrowPrecedence
infix operator <<<: FunctionArrowPrecedence

infix operator <^>: ApplicativePrecedence

infix operator <*>: ApplicativePrecedence

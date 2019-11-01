//
//  Operator.swift
//  HaskellPrelude
//
//  Created by FD on 2019/10/30.
//  Copyright © 2019 FD. All rights reserved.
//

precedencegroup FunctionCopositionPrecedence {
    associativity: right
    higherThan: DefaultPrecedence
}

infix operator <>: FunctionCopositionPrecedence
prefix operator <>
postfix operator <>

infix operator >>> : FunctionArrowPrecedence
infix operator <<< : FunctionArrowPrecedence

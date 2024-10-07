//
//  DueDateCalculatorProtocol.swift
//  DateCalculations
//
//  Created by Thomas Benninghaus on 04.04.24.
//

import Foundation

public protocol DueDateCalculatorProtocol: Sendable {
    init?(args: DueDateCalculatorArguments)
    func calculate(_ forDate: Date) -> Date
}

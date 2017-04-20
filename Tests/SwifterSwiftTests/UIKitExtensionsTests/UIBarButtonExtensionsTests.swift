//
//  UIBarButtonExtensionsTests.swift
//  SwifterSwift
//
//  Created by Steven on 2/14/17.
//  Copyright © 2017 omaralbeik. All rights reserved.
//

#if os(iOS) || os(tvOS)
	
import XCTest
@testable import SwifterSwift

class UIBarButtonExtensionsTests: XCTestCase {
	
	func testSelector() {}
	
	func testAddTargetForAction() {
		
		let barButton = UIBarButtonItem()
		let selector = #selector(testSelector)
		
		barButton.addTargetForAction(self, action: selector)
		
		let target = barButton.target as? UIBarButtonExtensionsTests
		
		XCTAssertEqual(target, self)
		XCTAssertEqual(barButton.action, selector)
	}
}
#endif

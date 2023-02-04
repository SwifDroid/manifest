import XCTest

import ManifestTests

var tests = [XCTestCaseEntry]()
tests += ManifestTests.allTests()
XCTMain(tests)

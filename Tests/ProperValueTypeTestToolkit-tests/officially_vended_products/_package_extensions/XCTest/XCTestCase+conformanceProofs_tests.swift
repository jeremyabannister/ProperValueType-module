//
//  XCTestCase+conformanceProofs_tests.swift
//  
//
//  Created by Jeremy Bannister on 3/23/23.
//

///
extension XCTestCase_tests {
    
    ///
    func test_proof_ProperValueType_metatype () {
        func imagine <T: ProperValueType> (t: T) {
            ifGiven(metatype) {
                $0.proof_ProperValueType(T.self)
            }
        }
    }
    
    ///
    func test_proof_ProperValueType_instance () {
        func imagine <T: ProperValueType> (t: T) {
            ifGiven(metatype) {
                $0.proof_ProperValueType(t)
            }
        }
    }
}

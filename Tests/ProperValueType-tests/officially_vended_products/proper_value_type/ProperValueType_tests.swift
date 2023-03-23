//
//  ProperValueType_tests.swift
//  
//
//  Created by Jeremy Bannister on 3/23/23.
//

///
extension ProperValueType_tests {
    
    ///
    func test_inheritance () {
        func imagine <T: Subject> (t: T) {
            proof_Codable(t)
            proof_Hashable(t)
            proof_ExpressionErgonomic(t)
        }
    }
}

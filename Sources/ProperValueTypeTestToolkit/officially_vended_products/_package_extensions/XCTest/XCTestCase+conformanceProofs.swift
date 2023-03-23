//
//  XCTestCase+conformanceProofs.swift
//  
//
//  Created by Jeremy Bannister on 3/23/23.
//

///
public extension XCTestCase {
    
    ///
    func proof_ProperValueType <T: ProperValueType> (_ t: T.Type) { }
    
    ///
    func proof_ProperValueType <T: ProperValueType> (_ t: T) { }
}

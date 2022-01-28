//
//  2_1_2_Subtractive_Cancellation.swift
//  Homework 2
//
//  Created by Matthew Malaker on 1/28/22.
//

import Foundation
import SwiftUI

class Quadratic: NSObject, ObservableObject{
    
//This is a simple quadratic formula using the traditional formula:
//             ________
//          | /  2
//  - b pm  |/ b  - 4ac
//--------------------
//          2a

    func method1(a: Double, b: Double, c: Double) -> (Double, Double){
    var root1 = 0.0
    var root2 = 0.0
    root1 = (-1*b+sqrt(pow(b,2)-(4*a*c)))/(2*a)
    root2 = (-1*b-sqrt(pow(b,2)-(4*a*c)))/(2*a)
    return (root1,root2)
}

    
//This function uses an alternative form of the quadratic formula"
//          - 2c
//  ----------------
//          __
//       | / 2
//  b pm |/ b  - 4ac



func method2(a: Double, b: Double, c: Double) -> (Double, Double){
    var root1 = 0.0
    var root2 = 0.0
    root1 = (-2*c)/(b+sqrt(pow(b,2)-(4*a*c)))
    root2 = (-2*c)/(b-sqrt(pow(b,2)-(4*a*c)))
    return(root1,root2)
}

}

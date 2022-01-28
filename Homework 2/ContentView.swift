//
//  ContentView.swift
//  Homework 2
//
//  Created by Matthew Malaker on 1/28/22.
//

import SwiftUI

struct ContentView: View {
    @State var aString = "0"
    @State var bString = "0"
    @State var cString = "0"
    @State var a = 0.0
    @State var b = 0.0
    @State var c = 0.0
    @State var methodOnePlusString = ""
    @State var methodOneMinusString = ""
    @State var methodTwoPlusString = ""
    @State var methodTwoMinusString = ""
    @State var rootOneDifferenceString = ""
    @State var rootTwoDifferenceString = ""
    @ObservedObject var quadraticFunction = Quadratic()
    var body: some View {
        
        
        VStack{
            HStack{
                Text("Input a")
                    .padding(.horizontal)
                    .frame(width: 100)
                    .padding(.top, 30)
                    .padding(.bottom, 0)
                TextField("", text: $aString, onCommit: {a=abs(Double(aString) ?? 0)})
                    .padding(.horizontal)
                    .frame(width: 100)
                    .padding(.top, 30)
                    .padding(.bottom, 0)
            }
            HStack{
                Text("Input b")
                    .padding(.horizontal)
                    .frame(width: 100)
                    .padding(.top, 30)
                    .padding(.bottom, 0)
                TextField("", text: $bString, onCommit: {b=abs(Double(bString) ?? 0)})
                    .padding(.horizontal)
                    .frame(width: 100)
                    .padding(.top, 30)
                    .padding(.bottom, 0)
            }
            HStack{
                Text("Input c")
                    .padding(.horizontal)
                    .frame(width: 100)
                    .padding(.top, 30)
                    .padding(.bottom, 0)
                TextField("", text: $cString, onCommit: {c=abs(Double(cString) ?? 0)})
                    .padding(.horizontal)
                    .frame(width: 100)
                    .padding(.top, 30)
                    .padding(.bottom, 0)
            }

            //Calculate Button
            Button("Calculate", action: {self.calculateAll(a: a, b: b, c: c)})
            //Clear Button
            Button("Clear", action: {self.clear()})
            
            Group{
                HStack{
                    Text("Method One Root One")
                        .padding(.horizontal)
                        .frame(width: 150)
                        .padding(.top, 5)
                        .padding(.bottom, 0)
                    TextField("",text: $methodOnePlusString)
                        .padding(.horizontal)
                        .frame(width: 200)
                        .padding(.top, 5)
                        .padding(.bottom, 0)
                }
                HStack{
                    Text("Method One Root Two")
                        .padding(.horizontal)
                        .frame(width: 150)
                        .padding(.top, 5)
                        .padding(.bottom, 0)
                    TextField("",text: $methodOneMinusString)
                        .padding(.horizontal)
                        .frame(width: 200)
                        .padding(.top, 5)
                        .padding(.bottom, 0)
                }
                HStack{
                    Text("Method Two Root One")
                        .padding(.horizontal)
                        .frame(width: 150)
                        .padding(.top, 5)
                        .padding(.bottom, 0)
                    TextField("",text: $methodTwoPlusString)
                        .padding(.horizontal)
                        .frame(width: 200)
                        .padding(.top, 5)
                        .padding(.bottom, 0)
                }
                HStack{
                    Text("Method Two Root Two")
                        .padding(.horizontal)
                        .frame(width: 150)
                        .padding(.top, 5)
                        .padding(.bottom, 0)
                    TextField("",text: $methodTwoMinusString)
                        .padding(.horizontal)
                        .frame(width: 200)
                        .padding(.top, 5)
                        .padding(.bottom, 0)
                }
                HStack{
                    Text("Root One Difference")
                        .padding(.horizontal)
                        .frame(width: 150)
                        .padding(.top, 5)
                        .padding(.bottom, 0)
                    TextField("",text: $rootOneDifferenceString)
                        .padding(.horizontal)
                        .frame(width: 200)
                        .padding(.top, 5)
                        .padding(.bottom, 0)
                }
            
            
            }
            HStack{
                Text("Root Two Difference")
                    .padding(.horizontal)
                    .frame(width: 150)
                    .padding(.top, 5)
                    .padding(.bottom, 0)
                TextField("",text: $rootTwoDifferenceString)
                    .padding(.horizontal)
                    .frame(width: 200)
                    .padding(.top, 5)
                    .padding(.bottom, 0)
            }
            
        }
    }
    func calculateAll(a:Double,b: Double, c: Double){
        var rootOne = 0.0
        var rootTwo = 0.0
        var rootOneM2 = 0.0
        var rootTwoM2 = 0.0
        rootOne = quadraticFunction.method1(a: a, b: b, c:   c).0
        rootTwo = quadraticFunction.method1(a: a, b: b, c:   c).1
        rootOneM2 = quadraticFunction.method2(a: a, b: b, c:   c).0
        rootTwoM2 = quadraticFunction.method2(a: a, b: b, c:   c).1
        methodOnePlusString = String(rootOne)
        methodOneMinusString = String(rootTwo)
        methodTwoPlusString = String(rootOneM2)
        methodTwoMinusString = String(rootTwoM2)
        rootOneDifferenceString = String(rootOne-rootOneM2)
        rootTwoDifferenceString = String(rootTwo-rootTwoM2)
    }
    func clear(){
        aString = "0"
        bString = "0"
        cString = "0"
        a = 0.0
        b = 0.0
        c = 0.0
        methodOnePlusString = ""
        methodOneMinusString = ""
        methodTwoPlusString = ""
        methodTwoMinusString = ""
        rootOneDifferenceString = ""
        rootTwoDifferenceString = ""
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

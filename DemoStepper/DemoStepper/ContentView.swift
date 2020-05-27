//
//  ContentView.swift
//  DemoStepper
//
//  Created by Rishabh on 27/05/20.
//  Copyright © 2020 Rishabh. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var stepperValue: Int = 0
    
    var body: some View {
        
        Stepper(onIncrement: {
            self.stepperValue += 5
        }, onDecrement: {
            self.stepperValue -= 5
        }, label: { Text("Updated value: \(stepperValue)") })
        
//        Stepper("Updated value: \(stepperValue)", value: $stepperValue, in: 0...10)
        
//        Stepper("Updated value: \(stepperValue)", value: $stepperValue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

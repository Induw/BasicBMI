//
//  ContentView.swift
//  BasicBMI
//
//  Created by Ravindu Hettiarachchi on 2023-02-19.
//

import SwiftUI

struct ContentView: View {
    @State private var weightText:String = ""
    @State private var heightText:String = ""
    var body: some View {
        VStack {
            Text("BMI Calculator :").font(.largeTitle)
            TextField("Enter Weight (in kilograms)",text: $weightText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.black)
            TextField("Enter Height (in kilograms)",text: $heightText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.black)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

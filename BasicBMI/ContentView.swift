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
    @State private var bmi: Double = 0
    @State private var classification: String = ""
    var body: some View {
        VStack {
            Text("BMI Calculator :")
                .font(.largeTitle)
                .fontWidth(.condensed)
            TextField("Enter Weight (in kilograms)",text: $weightText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.black)
                .onChange(of: weightText) { value in
                    print("weight has been changed")
                }
            TextField("Enter Height (in meters)",text: $heightText)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(Color.black)
            Button {
                    var weight: Double = 0
                    var height: Double = 0
                    if let weightDouble = Double(self.weightText) {weight = weightDouble}
                    if let heightDouble = Double(self.heightText) {height = heightDouble}
                    self.bmi = weight/(height * height)
                
                if self.bmi < 18.5 {
                    self.classification = "Underweight :("
                }
                else if self.bmi < 24.9 {
                    self.classification = "Healthy Weight :)"
                }
                else if self.bmi < 29.9 {
                    self.classification = "Overweight :("
                }
                else {
                    self.classification = "Obese!"
                }
                }
                label:{
                    Text("Calculate BMI")
                        .padding()
                        .foregroundColor(Color(.white))
                        .background(Color.blue)
                    }
            Text("BMI: \(bmi, specifier: "%.1f") - \(classification)")
                .font(.title)
                .fontWidth(.condensed)
                .padding()
                }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

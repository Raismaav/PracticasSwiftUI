//
//  IMCView.swift
//  MiniApp
//
//  Created by Rafael Magana  on 14/11/24.
//

import SwiftUI

struct IMCView: View {
    @State var gender: Int = 0
    @State var height: Double = 160
    @State var age: Int = 20
    @State var weight: Int = 55
    var body: some View {
        VStack {
            HStack {
                ToggleButton(text:"Hombre", imageName:"figure.stand", gender: 0, selectedGender: $gender)
                ToggleButton(text:"Mujer", imageName:"figure.stand.dress", gender: 1, selectedGender: $gender)
            }
            HeightSlider(selectedHeight: $height)
            HStack {
                CounterButtons(text:"Edad", selectedValue: $age)
                CounterButtons(text:"Peso", selectedValue: $weight)
            }
            CalculateButton(weight: Double(weight), height: height)
            
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.colorBackground)
        .toolbar{
            ToolbarItem(placement: .principal) {
                Text("IMC").foregroundColor(.white)
            }
        }
    }
}

struct ToggleButton: View {
    let text: String
    let imageName: String
    let gender: Int
    
    @Binding var selectedGender: Int
    
    var body: some View {
        let color = if(selectedGender == gender) {
            Color.componentSelected
        } else {
            Color.component
        }
        Button(action: {selectedGender = gender}) {
            VStack {
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(maxHeight: 100)
                InformationText(text: text)
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(16)
        }
    }
}

struct HeightSlider: View {
    @Binding var selectedHeight: Double
    
    var body: some View {
        VStack {
            TitleText(text: "Altura")
            InformationText(text: "\(Int(selectedHeight)) cm")
            Slider(value: $selectedHeight, in: 100...220, step: 1).padding(.horizontal).accentColor(.accentColor)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.component)
        .foregroundColor(.white)
        .cornerRadius(16)
    }
}

struct CounterButtons: View {
    let text: String
    
    @Binding var selectedValue: Int
    
    var body: some View {
        VStack {
            TitleText(text: text)
            InformationText(text: "\(selectedValue)")
            HStack {
                Button(action: {if selectedValue > 0 {selectedValue -= 1}}) {
                    ZStack {
                        Circle().fill(.accent)
                        Image(systemName: "minus")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    .foregroundColor(.white)
                }
                Button(action: {selectedValue += 1}) {
                    ZStack {
                        Circle().fill(.accent)
                        Image(systemName: "plus")
                            .resizable()
                            .scaledToFit()
                            .padding()
                    }
                    .foregroundColor(.white)
                }
            }
            .padding(.horizontal)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.component)
        .foregroundColor(.white)
        .cornerRadius(16)
    }
}

struct CalculateButton: View {
    let weight: Double
    let height: Double
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink(destination: IMCResultView(userWeight: weight, userHeight: height)) {
                    InformationText(text: "Calcular IMC").foregroundColor(.white)
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.component)
            .cornerRadius(16)
        }
        .frame(maxWidth: .infinity, maxHeight: 100)
    }
}

struct TitleText: View {
    let text: String
    
    var body: some View {
        VStack {
            Text(text).font(.title2).foregroundColor(.gray)
        }
    }
}

struct InformationText: View {
    let text: String
    
    var body: some View {
        VStack {
            Text(text).bold().font(.title)
        }
    }
}

#Preview {
    IMCView()
}

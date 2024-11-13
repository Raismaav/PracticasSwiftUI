//
//  ContentView.swift
//  MiniApp
//
//  Created by Rafael Magana  on 08/11/24.
//

import SwiftUI

struct ExcersiStacks: View {
    var body: some View {
        VStack {
            HStack {
                Rectangle()
                    .fill(Color.red)
                Rectangle()
                    .fill(Color.blue)
                Rectangle()
                    .fill(Color.red)
            }
            Rectangle()
                .fill(Color.yellow)
            HStack{
                Circle()
                    .fill(Color.purple)
                Rectangle()
                    .fill(Color.green)
                Circle()
                    .fill(Color.purple)
            }
            Rectangle()
                .fill(Color.yellow)
            HStack {
                Rectangle()
                    .fill(Color.red)
                Rectangle()
                    .fill(Color.blue)
                Rectangle()
                    .fill(Color.red)
            }
        }
        .padding()
    }
}

#Preview {
    ExcersiStacks()
}

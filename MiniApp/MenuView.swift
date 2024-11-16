//
//  MenuView.swift
//  MiniApp
//
//  Created by Rafael Magana  on 14/11/24.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink(destination: IMCView()) {
                    Text("IMC Calculator")
                }
                Text("App 2")
                Text("App 3")
                Text("App 4")
            }
        }
        
    }
}

#Preview {
    MenuView()
}

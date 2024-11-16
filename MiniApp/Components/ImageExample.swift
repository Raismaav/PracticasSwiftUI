//
//  ImageExample.swift
//  MiniApp
//
//  Created by Rafael Magana  on 14/11/24.
//

import SwiftUI

struct ImageExample: View {
    var body: some View {
        VStack {
            Image("MacLogo")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 500)
            
            Image(systemName: "figure.walk")
                .resizable()
                .scaledToFit()
        }
    }
}

#Preview {
    ImageExample()
}

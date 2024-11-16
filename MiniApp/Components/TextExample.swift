//
//  TextExample.swift
//  MiniApp
//
//  Created by Rafael Magana  on 14/11/24.
//

import SwiftUI

struct TextExample: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/).font(.largeTitle)
            Text("Hello, two").font(.system(size: 40, weight: .bold, design: .monospaced))
                .italic()
                .bold()
                .underline()
                .foregroundColor(.pink)
                .background(.blue)
            
            Text("Hello Hello Hello Hello")
                .frame(width: 50)
                .lineLimit(2)
                .lineSpacing(10)
        }
    }
}

#Preview {
    TextExample()
}

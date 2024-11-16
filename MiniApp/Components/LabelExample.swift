//
//  LabelExample.swift
//  MiniApp
//
//  Created by Rafael Magana  on 14/11/24.
//

import SwiftUI

struct LabelExample: View {
    var body: some View {
        //Label("In Ohtli", image: "MacLogo")
        Label("In Ohtli", systemImage: "person.crop.circle")
        Label(
            title: {Text("In Ohtli")},
            icon: {Image("MacLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 40)
            }
        )
    }
}

#Preview {
    LabelExample()
}

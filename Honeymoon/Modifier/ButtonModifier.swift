//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Vincenzo Caruso on 01/08/22.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
     func body(content: Content) -> some View {
        content
            .font(.headline)
            .padding()
            .frame(minWidth: 0, maxWidth: .infinity)
            .background(
                Capsule()
                    .fill(.pink)
                    
            )
            .foregroundColor(.white)
    }
}


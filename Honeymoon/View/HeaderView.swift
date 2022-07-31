//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Vincenzo Caruso on 31/07/22.
//

import SwiftUI

struct HeaderView: View {
    // MARK: - PROPERTIES
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                print("Information")
            }) {
                Image(systemName: "info.circle")
                    .font(.system(size: 24, weight: .regular))
                
            } //: BUTTON
            .accentColor(.primary)
            Spacer()
            Image("logo-honeymoon-pink")
                .resizable()
                .scaledToFit()
                .frame(height: 28)
            Spacer()
            
            Button(action: {
                print("Guide")
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
                    
            }
            .accentColor(.primary)
            
        } //: HSTACK
        .padding()
    }
}

// MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .previewLayout(.fixed(width: 375, height: 80))
    }
}

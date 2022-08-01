//
//  HeaderView.swift
//  Honeymoon
//
//  Created by Vincenzo Caruso on 31/07/22.
//

import SwiftUI

struct HeaderView: View {
    
    // MARK: - PROPERTIES
    @Binding var showGuideView: Bool
    
    @Binding var showInfoView: Bool
    
    let haptics: UINotificationFeedbackGenerator()
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Button(action: {
                playSound(sound: "sound-click", type: "mp3")
                haptics.notificationOccurred(.success)
                showInfoView.toggle()
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
                //print("Guide")
                playSound(sound: "sound-click", type: "mp3")
                haptics.notificationOccurred(.success)
                self.showGuideView.toggle()
            }) {
                Image(systemName: "questionmark.circle")
                    .font(.system(size: 24, weight: .regular))
                    
            }
            .accentColor(.primary)
            .sheet(isPresented: $showGuideView) {
                GuideView()
            }
            .sheet(isPresented: $showInfoView) {
                InfoView()
            }
        } //: HSTACK
        .padding()
    }
}

// MARK: - PREVIEW
struct HeaderView_Previews: PreviewProvider {
    
    @State static var showGuide: Bool = false
    @State static var showInfo: Bool = false
    
    static var previews: some View {
        HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            .previewLayout(.fixed(width: 375, height: 80))
    }
}

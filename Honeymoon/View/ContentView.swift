//
//  ContentView.swift
//  Honeymoon
//
//  Created by Vincenzo Caruso on 31/07/22.
//

import SwiftUI

struct ContentView: View {
    
    // MARK - PROPERTIES
    
    @State var showAlert: Bool = false
    @State var showGuide: Bool = false
    @State var showInfo: Bool = false
    
    // MARK - CARD VIEWS
    
    var cardViews: [CardView] = {
        var views = [CardView]()
        for honeymoon in honeymoonData {
            views.append(CardView(honeymoon: honeymoon))
        }
        return views
    }()
    
    var body: some View {
        VStack {
            
            // MARK - HEADER
            
            HeaderView(showGuideView: $showGuide, showInfoView: $showInfo)
            Spacer()

            // MARK - CARDS
            ZStack{
                ForEach(cardViews) { cardview in
                    cardview
                }
            }
            
            Spacer()
            
            //: FOOTER
            FooterView(showBookingAlert: $showAlert)
            
        } //: VSTACK
        .alert(isPresented: $showAlert) {
            Alert(title: Text("SUCCESS"), message: Text("Wishing a lovely and most precious of the times together for the amazing couple."), dismissButton: .default(Text("Happy Honeymoon!")))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

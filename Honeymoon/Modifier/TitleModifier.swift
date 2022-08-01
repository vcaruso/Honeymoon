//
//  TitleModifier.swift
//  Honeymoon
//
//  Created by Vincenzo Caruso on 01/08/22.
//

import SwiftUI

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View  {
        content
            .font(.largeTitle)
            .foregroundColor(.pink)
    }
}








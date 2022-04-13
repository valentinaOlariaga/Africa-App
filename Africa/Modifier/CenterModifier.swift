//
//  CenterModifier.swift
//  Africa
//
//  Created by Valentina Olariaga on 29/3/22.
//

import SwiftUI

struct CenterModifier : ViewModifier {
    func body(content: Content) -> some View {
        HStack{
            Spacer()
            content
            Spacer()
        }
    }
    
}

//
//  CreditsView.swift
//  Africa
//
//  Created by Valentina Olariaga on 29/3/22.
//

import SwiftUI

struct CreditsView: View {
    var body: some View {
        VStack{
        Image("compass")
                .resizable()
                .scaledToFit()
                .frame(width: 128, height: 128)
        Text("""
Copyright © Robert Petras
All right reserved
Better Apps ♡ Less code
""")
            .font(.footnote)
            .multilineTextAlignment(.center)
        }
        .padding()
        .opacity(0.4)
    }
}

struct CreditsView_Previews: PreviewProvider {
    static var previews: some View {
        CreditsView()
    }
}

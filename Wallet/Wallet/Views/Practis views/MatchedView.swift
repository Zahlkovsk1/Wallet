//
//  MatchedView.swift
//  Wallet
//
//  Created by SHOHJAHON on 17/11/23.
//

import SwiftUI

struct MatchedView: View {
    @Namespace var namespace
    @State var show = false
    var body: some View {
        ZStack {
            if !show {
                Text("SwiftUI")
                    .matchedGeometryEffect(id: "Title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .leading)
            }
            else {
                Text("SwiftUI")
                    .matchedGeometryEffect(id: "Title", in: namespace)
                    .frame(maxWidth: .infinity, alignment: .trailing)
            }
        }
        .onTapGesture {
            withAnimation{
                
                show.toggle()
                }
        }
    }
}
#Preview {
    MatchedView()
}

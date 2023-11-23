//
//  BasicView.swift
//  Wallet
//
//  Created by SHOHJAHON on 17/11/23.
//

import SwiftUI

struct BasicView: View {
    @Namespace private var basicNS
    @State private var move = false
    var body: some View {
        VStack{
            HStack{
                Rectangle().fill(.blue)
                    .matchedGeometryEffect(id: "Basic", in: basicNS, isSource: true)
                    .frame(width: 150, height: 100)
                Rectangle().fill(.green)
                  
                    .matchedGeometryEffect(id: move ? "Basic" : "", in: basicNS, isSource: false)
                    .frame(width: 10, height: 10)
            }
            Button("Move") {
                withAnimation{
                    move.toggle()
                }
            }
        }
    }
}

#Preview {
    BasicView()
}







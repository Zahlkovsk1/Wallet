//
//  PaymentView.swift
//  Wallet
//
//  Created by SHOHJAHON on 21/11/23.
//
import LocalAuthentication
import SwiftUI

struct PaymentView: View {
    @State private var isUnlocked = false
    @State private var animeGo = 0
    var body: some View {
     
          
                
            ScrollView {
                Spacer()
                VStack {
                    Image("CardWise")
                        .resizable()
                        .frame(maxWidth: .infinity)
                        .scaledToFit()
                        .frame(height: 250)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
                    .accessibilityElement(children: .combine)
                    Button {
                        animeGo  += 5
                          } label: {
                              Label("", systemImage: "iphone.gen2.circle")
                          }
                          .symbolEffect(.pulse)
                          .font(.system(size: 50))
                          .accessibilityElement(children: .combine)
                    Spacer()
                    Text("Hold Near Reader")
                        .foregroundColor(.gray)
                        
                }
                .onAppear(perform: authenticate)
            }
        
      
    }
    func authenticate() {
        let context = LAContext ()
        var error: NSError?
        if context.canEvaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, error: &error) {
            let reason = "We need to unlock your data"
            
            context.evaluatePolicy(.deviceOwnerAuthenticationWithBiometrics, localizedReason: reason) { success, authenticationError in
                if success {
                    isUnlocked  = true
                } else {
                    // there was a problem
                }
                
            }
            
        } else {
            // no biometrics
        }
    }
}

#Preview {
    PaymentView()
}

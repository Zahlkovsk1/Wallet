//
//  ExicitingView.swift
//  Wallet
//
//  Created by SHOHJAHON on 16/11/23.
//

import SwiftUI
struct ExicitingView: View {
    @Binding var Done: Bool
    var viewModel = TransactionViewModel()
    var body: some View {

        NavigationStack {
            List {
                Section {
                    ForEach(viewModel.transactions) { transaction in
                        VStack(alignment: .leading){
                            HStack {
                                Text(transaction.name)
                                    .bold()
                                Spacer()
                                Text(transaction.amount)
                                
                            }
                            Text(transaction.paymentMethod)
                                .foregroundStyle(.gray)
                                .font(.subheadline)
                            Text(transaction.date)
                                .foregroundStyle(.gray)
                        }
                        .accessibilityElement(children: .combine)
                    }
                } header: {
                    VStack (alignment:.leading){
                        Image("CardWise")
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .scaledToFit()
                            .frame(height: 250)
                            .shadow(radius: 10)
                        Text("Latest Transactions")
                            .textCase(nil)
                            .bold()
                            .foregroundColor(.black)
                            .font(.title)
                            .accessibilityElement(children: .combine)
                        Spacer()
                        
                            .accessibilityElement(children: .combine)
                    }
                    .accessibilityElement(children: .combine)
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
                }
                
            }
            .toolbar {
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Menu {
                        Button(action: {
                            
                        }, label: {
                            Text("Card Number")
                            Image(systemName: "creditcard.and.123")
                        })
                        HStack {
                            Button(action: {
                                
                            }, label: {
                                Text("Card Details")
                                Image(systemName: "bell.badge")
                           
                        })
                            .accessibilityElement(children: .combine)
                        }
                        Button(action: {
                            
                        }, label: {
                            Text("Notifications")
                            Image(systemName: "info.circle")
                        })
                    } label: {
                        Image(systemName: "ellipsis.circle")
                            .foregroundStyle(Color.blue)
                            .accessibilityElement(children: .combine)
                    }

                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Button("Done")
                    {
                        Done = false
                        
                    }
                    .accessibilityElement(children: .combine)
                }
            }
        }
    }
}

#Preview {
    ExicitingView(Done: .constant(false))
}






//                Button{
//                   Done.toggle()
//                } label: {
//                    Image(systemName: "shippingbox.circle.fill")
//                        .font(.title)
//                        .foregroundColor(.black)
//                }.sheet(isPresented: $Done) {
//                   HomePageView()
//                }

import SwiftUI

struct HomePageView: View {
    @State var Show = false
    
    var viewModel: CardViewModel
    
    @State var isOrderViewPresented: Bool       = false
    @State var isAddingCardViewPresented: Bool  = false
    @State var cardApperance = false
    @State var paddingForCard = 80
    @State var Done: Bool = false
    @State var plus: Bool = false
    @State var Payment: Bool = false
    
    var body: some View {
       
        NavigationStack {
            ZStack{
                    VStack {
                        HStack {
                            Text("Wallet")
                                .font(.largeTitle)
                                .bold()
                            Spacer()
                            HStack(spacing: 4) {
                                Button{
                                    Payment.toggle()
                                } label: {
                                    Image(systemName: "creditcard.circle.fill")
                                        .font(.title)
                                        .foregroundColor(.black)
                                }
                                NavigationLink(destination: PaymentView(), isActive: $Payment){
                                }
                                Button {
                                    isAddingCardViewPresented.toggle()
                                } label: {
                                    Image(systemName: "plus.circle.fill")
                                        .font(.title)
                                        .foregroundColor(.black)
                                }.sheet(isPresented: $isAddingCardViewPresented) {
                                    AddCardView()
                                }
                                .accessibilityElement(children: .combine)
                            }
                    
                        }
                        .accessibilityElement(children: .combine)
                        .padding()
                        Spacer()
                        ScrollView {
                            //Spacer(minLength: 64)
                        
                        
                            Image("CardWise")
                                    .resizable()
                                    .frame(height: 250)
                                    .onTapGesture {
                                            isOrderViewPresented.toggle()
                                    }
//                                    Image("CardHumo")
//                                        .resizable()
//                                        .frame(height: 250)
//                                        .padding(.top, 100)
//                                        .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//                                        .onTapGesture {
//                                                isOrderViewPresented.toggle()
//                                        }
                                       .sheet(isPresented: $isOrderViewPresented) {
                                           ExicitingView(Done: $isOrderViewPresented)
//                                    }
                            }
                            .accessibilityElement(children: .combine)
                        
                        }
                        
                    }
                }
            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    HomePageView(viewModel: CardViewModel())
}


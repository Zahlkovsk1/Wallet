



import SwiftUI

struct AddCardView: View {
  
    @Environment(\.dismiss) var dismiss

    var viewModel = CategorieViewModel()
    var viewModel2 = CategoryViewModel()
    var body: some View {
        NavigationStack{
            ScrollView {
                    Spacer()
                    VStack(alignment: .leading) {
                        Text("Keep all the cards, keys and passes you use every day all in one place")
                            .multilineTextAlignment(.center)
                            .padding()
                        Spacer()
                    }
                    List {
                        Section (header: Text("Available Cards")
                            .font(.title)
                            .bold()
                        ){
                        ForEach(viewModel.categories) { categorie in
                            
                            HStack {
                                Image(systemName: categorie.sfsymbol)
                                    .foregroundColor(.green)
                                Text(categorie.name)
                                Spacer()
                                Image(systemName: categorie.Sign)
                            }
                            .listRowBackground(Color(UIColor.secondarySystemBackground))
                          
                            }
                        }.headerProminence(.increased)
                        Section{
                            ForEach(viewModel2.category) { category in
                                
                                HStack {
                                    Image(systemName: category.sfsymbol)
                                        .foregroundColor(.green)
                                        
                                    Text(category.name)
                                        Spacer()
                                    Text(category.Sign)
                                        .foregroundStyle(.gray)
                                }
                                .listRowBackground(Color(UIColor.secondarySystemBackground))
                              
                            }
                        }
                    }.frame(minHeight: 300)
                        .scrollContentBackground(.hidden)

                
                .navigationBarTitle("⠀⠀⠀Add to Wallet")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            dismiss.callAsFunction()
                        } label: {
                            Image(systemName:"x.circle")
                                .foregroundColor(.gray)
                        }

//                            .foregroundStyle(Color(UIColor.secondarySystemBackground))
                    }
                }
            }
            
        }
    }
}
    #Preview {
        AddCardView()
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    //
    
    //struct AddToWalletView: View {
    //
    //    var body: some View {
    //        NavigationView {
    //            List {
    //                Section(header: Text("Add to Wallet")
    //                            .font(.headline)
    //                            .foregroundColor(.black)
    //                            .textCase(.none)) {
    //                    NavigationLink(destination: Text("Debit or Credit Card Details")) {
    //                        HStack {
    //                            Image(systemName: "creditcard")
    //                                .foregroundColor(.blue)
    //                            Text("Debit or Credit Card")
    //                        }
    //                    }
    //                    NavigationLink(destination: Text("Travel Card Details")) {
    //                        HStack {
    //                            Image(systemName: "tram.fill")
    //                                .foregroundColor(.green)
    //                            Text("Travel Card")
    //                        }
    //                    }
    //                }
    //            }
    //            .listStyle(GroupedListStyle())
    //            .navigationBarTitle("Wallet", displayMode: .large)
    //        }
    //    }
    //}


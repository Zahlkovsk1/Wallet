//
//  WalletApp.swift
//  Wallet
//
//  Created by SHOHJAHON on 14/11/23.
//

import SwiftUI

@main
struct WalletApp: App {
    var body: some Scene {
        WindowGroup {
            HomePageView(viewModel: CardViewModel())
        }
    }
}

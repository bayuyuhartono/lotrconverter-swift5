//
//  SelectCurrency.swift
//  LOTRConverter17
//
//  Created by Bayu P Yuhartono on 07/06/24.
//

import SwiftUI

struct SelectCurrency: View {
    @Environment(\.dismiss) var dismiss
    @Binding var topCurrency: Currency
    @Binding var bottomCurrency: Currency
    
    var body: some View {
        ZStack {
            // parchment background
            Image(.parchment)
                .resizable()
                .ignoresSafeArea()
                .background(.brown)
            VStack {
                // text
                Text("Select the currency you are starting with: \(Currency.silverPenny.rawValue)")
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                
                // currency icon
                IconGrid(currency: $topCurrency)
                
                //text
                Text("Select the currency you would like to convert to:")
                    .fontWeight(.bold)
                
                // currency icon
                IconGrid(currency: $bottomCurrency)
                
                // done button
                Button("Done") {
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                .tint(.brown)
                .font(.largeTitle)
                .padding()
                .foregroundStyle(.white)

            }
            .padding()
            .multilineTextAlignment(.center)
        }
        .onTapGesture {
            print("top: \(topCurrency)")
            print("bottom: \(bottomCurrency)")
        }
    }
}

#Preview {
    SelectCurrency(topCurrency: .constant(.copperPenny), bottomCurrency: .constant(.silverPenny))
}

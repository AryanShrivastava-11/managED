//
//  HeaderView.swift
//  managED
//
//  Created by Aryan Shrivastava on 22/07/21.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("New Bakery Town")
                .font(.title)
                .fontWeight(.bold)
            Text("Veg . NonVeg . Chinese")
                .font(.caption)
            HStack(spacing: 8){
                Image(systemName: "clock")
                    .font(.caption)
                Text("Delivered in 10 mins")
                    .font(.caption)
                Text("4.91")
                    .font(.caption)
                Image(systemName: "star.fill")
                    .font(.caption)
            }
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(.horizontal)
        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        .background(Color.white)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

//
//  Home.swift
//  managED
//
//  Created by Aryan Shrivastava on 22/07/21.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ScrollView{
            //since we are pinning the header view
            LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [.sectionHeaders], content: {
                //cards ...
                Section(header: HeaderView()) {
                    //tabs ith content 
                }
            })
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

//
//  ExploreView.swift
//  TikTokClone
//
//  Created by Khojimurod Sultonov on 17/03/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 16) {
                    ForEach(0 ..< 20) { user in
                        UserCell()
                    }
                }
            }
            .navigationTitle("Expl")
            .navigationBarTitleDisplayMode(.inline)
            .padding(.top)
        }
    }
}

#Preview {
    ExploreView()
}

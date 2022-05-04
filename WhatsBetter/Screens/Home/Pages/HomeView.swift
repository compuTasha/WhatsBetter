//
//  HomeView.swift
//  WhatsBetter
//
//  Created by Mijoo Kim on 2022/05/03.
//

import SwiftUI

struct HomeView: View {
    
    // MARK: - properties
    
    @State private var post: [Post] = defaultPost
    
    var body: some View {
        LazyVStack {
            PostCardView(postTitle: $post[0].title, postImageA: $post[0].imageA, postImageB: $post[0].imageB, postChoice: $post[0].choice, postBookmark: $post[0].bookmark, postHashtagCount: $post[0].hashtagCount,
                         postHashtags: $post[0].hashtags)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

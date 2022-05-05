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
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(spacing:18) {
                PostCardView(postTitle: $post[0].title, postImageA: $post[0].imageA, postImageB: $post[0].imageB, postChoice: $post[0].choice, postBookmark: $post[0].bookmark, postHashtagCount: $post[0].hashtagCount,
                             postHashtags: $post[0].hashtags)
                PostCardView(postTitle: $post[1].title, postImageA: $post[1].imageA, postImageB: $post[1].imageB, postChoice: $post[1].choice, postBookmark: $post[1].bookmark, postHashtagCount: $post[1].hashtagCount,
                             postHashtags: $post[0].hashtags)
                PostCardView(postTitle: $post[2].title, postImageA: $post[2].imageA, postImageB: $post[2].imageB, postChoice: $post[2].choice, postBookmark: $post[2].bookmark, postHashtagCount: $post[2].hashtagCount,
                             postHashtags: $post[2].hashtags)
            }.padding(.horizontal, 24)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

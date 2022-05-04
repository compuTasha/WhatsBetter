//
//  PostCardView.swift
//  WhatsBetter
//
//  Created by Mijoo Kim on 2022/05/03.
//

import SwiftUI

struct PostCardView: View {
    
    // MARK: - properties
    
    @Binding var postTitle: String?
    @Binding var postImageA: Image?
    @Binding var postImageB: Image?
    @Binding var postChoice: Character?
    @Binding var postBookmark: Bool
    @Binding var postHashtagCount: Int?
    @Binding var postHashtags: [String]?


    var body: some View {
        ZStack {
            Rectangle().foregroundColor(.white).shadow(color: .black.opacity(0.1), radius: 20, x: 0, y: 10)
            
            VStack {
                HStack(spacing: 30) {
                    Text(postTitle ?? "").font(Font.custom("Montserrat", size: 22)).font(.headline).fontWeight(.semibold)
                    
                    
                    if postBookmark {
                        Image(systemName: "bookmark.fill").frame(width: 24, height: 24)
                    }
                    else {
                        Image(systemName: "bookmark").frame(width: 24, height: 24)
                    }
                }.padding(15)
                
            }
        }
       
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(postTitle: .constant("Which one is better?"), postImageA: .constant(Image("img1a")), postImageB: .constant(Image("img1b")), postChoice: .constant("A"), postBookmark: .constant(false), postHashtagCount: .constant(1), postHashtags: .constant(["Navigation Bar"]))
    }
}

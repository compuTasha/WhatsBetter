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
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(.white)
                .shadow(color: .black.opacity(0.1), radius: 20, x: 0, y: 10)
            
            VStack(alignment: .leading, spacing: 0) {
                
                // Title...
                HStack(spacing: 30) {
                    Text(postTitle ?? "")
                        .font(Font.custom("Montserrat", size: 22))
                        .font(.headline)
                        .fontWeight(.semibold)
                    
                    
                    if postBookmark {
                        Image(systemName: "bookmark.fill").foregroundColor(Color.blue).frame(width: 24, height: 24)
                    }
                    else {
                        Image(systemName: "bookmark").foregroundColor(Color.blue).frame(width: 24, height: 24)
                    }
                }.padding(10)
                
                // Hashtag...
                VStack {
                    HashtagView().padding(.horizontal, 10)
                }
               
                
                // Images and Buttons...
                HStack(spacing: 20) {
                    VStack(spacing: 16) {
                        if let image = postImageA {
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 134, height: 182)
                                .cornerRadius(20)
                                .shadow(color: .black.opacity(0.1), radius: 6, x: 0, y: 1)
                                
                        }
                        
                        Button(action: {
                            postChoice = "A"
                                    print("press A")
                                    }) {
                                        Text("A")
                                            .fontWeight(.semibold)
                                        .frame(width: 38, height: 38)
                                        .foregroundColor(postChoice == "A" ? .white : .black)
                                        .background(postChoice == "A" ? .blue : .hashtagGrey)
                                        .clipShape(Circle())
                                        .font(Font.custom("Montserrat", size: 12))
                                        
                                }
                    }
                    
                    VStack(spacing: 16) {
                        if let image = postImageB {
                            image
                                .resizable()
                                .scaledToFill()
                                .frame(width: 134, height: 182)
                                .cornerRadius(20)
                                
                        }
                        
                        Button(action: {
                            postChoice = "B"
                                    print("press B")
                                    }) {
                                        Text("B")
                                            .fontWeight(.semibold)
                                        .frame(width: 38, height: 38)
                                        .foregroundColor(postChoice == "B" ? .white : .black)
                                        .background(postChoice == "B" ? .blue : .hashtagGrey)
                                        .clipShape(Circle())
                                        .font(Font.custom("Montserrat", size: 12))
                                        
                                }
                    }
                    
                }.padding(10).padding(.top,10)
            
                
            }.padding(.vertical, 16)
        }
       
    }
}

struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(postTitle: .constant("Which one is better?"), postImageA: .constant(Image("img1a")), postImageB: .constant(Image("img1b")), postChoice: .constant("A"), postBookmark: .constant(false), postHashtagCount: .constant(1), postHashtags: .constant(["Navigation Bar"]))
    }
}

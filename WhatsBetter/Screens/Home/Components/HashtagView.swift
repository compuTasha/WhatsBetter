//
//  HashtagView.swift
//  WhatsBetter
//
//  Created by Mijoo Kim on 2022/05/04.
//

import SwiftUI

struct HashtagView: View {
    
    var body: some View {
        ZStack{
            Text("#Navigation bar")
                .font(Font.custom("Montserrat", size: 12))
                .font(.callout)
                .fontWeight(.medium)
                .padding(.horizontal, 14)
                .padding(.vertical, 8)
                .background(
                    RoundedRectangle(cornerRadius: 10).foregroundColor(.hashtagGrey)
                )
        }
    }
}

struct HashtagView_Previews: PreviewProvider {
    static var previews: some View {
        HashtagView()
    }
}

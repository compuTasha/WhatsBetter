//
//  Post.swift
//  WhatsBetter
//
//  Created by Mijoo Kim on 2022/05/04.
//

import SwiftUI

struct Post {
    var title: String?
    var writer: String?
    var content: String?
    var imageA: Image?
    var imageB: Image?
    var bookmark: Bool = false
    var choice: Character?
    var hashtagCount: Int?
    var hashtags: [String]?
}


var defaultPost: [Post] = [
    Post(title: "Which one is better?", writer: "user1923", content: "This is an app that can talk about which design is better. And I want to show a picture to compare with the full screen. Should I put an image behind the navigation bar?(B) What's your choice?", imageA: Image("img1a"), imageB: Image("img1b"), bookmark: true, hashtagCount: 1, hashtags: ["navigation bar"])
]

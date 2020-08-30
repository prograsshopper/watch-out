//
//  ContentView.swift
//  watch-out-app
//
//  Created by yoonseok312 on 2020/08/29.
//  Copyright © 2020 Ryan Taylor. All rights reserved.
//

import SwiftUI
import WatchKit
import Foundation
import SwiftUI
import WatchConnectivity

var title: String = "default"

struct WatchView: View {
    @EnvironmentObject var viewModel: WatchEnvironment
    static let gradientStart = Color(red: 255.0 / 255, green: 60.0 / 255, blue: 0.0 / 255)
    static let gradientEnd =  Color(red: 255 / 255, green: 108 / 255, blue: 63 / 255)

    var detectedWord : String = viewModel.word
      var finalIcon : String = "map"

    switch detectedWord {
    case "car":
        finalIcon = "car"
    case "yes":
        finalIcon = "hare"
    case "right":
        finalIcon = "pin"
    default:
        finalIcon = "tortoise"
    }
  
var body: some View {
   
        VStack{
            Spacer()
            HStack{
                Image(systemName: finalIcon).foregroundColor(.white).font(.system(size: 23)).padding(.horizontal,2)
                Text("위험 신호감지!").font(.system(size: 23, weight: .bold))
            }
            
            Spacer()
        
            HStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 23, style: .continuous)
                               .fill(LinearGradient(
                                 gradient: .init(colors: [Self.gradientStart, Self.gradientEnd]),
                                 startPoint: .init(x: 0.0, y: 0.0),
                                 endPoint: .init(x: 0.5, y: 0.6)
                               ))
                               .frame(width: 185, height: 120)
                    
//                    VStack(alignment: .leading) {
//                        Text("근처에서 소ㅊ").font(.system(size: 18, weight: .black)).padding(.vertical,7).foregroundColor(Color.init(red: 0, green: 0, blue: 0))
                        
                    Text(viewModel.word).font(.system(size: 37, weight: .black)).foregroundColor(Color.init(red: 255.0, green: 255.0, blue: 255.0))
//
//                        HStack(alignment:.lastTextBaseline){
//                            Text("가 들렸습니다").font(.system(size: 18, weight: .black)).padding(.vertical,7).padding(.leading,60).foregroundColor(Color.init(red: 0, green: 0, blue: 0))
                        }
                    }
                   
                    
                }
           
                 }
        }
    

//struct Alert_A_Previews: PreviewProvider {
//    static var previews: some View {
//        Alert_A()
//    }
//}


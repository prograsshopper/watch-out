//
//  defaultView.swift
//  watch-out-app WatchKit Extension
//
//  Created by 이보성 on 2020/08/31.
//  Copyright © 2020 Ryan Taylor. All rights reserved.
//

import SwiftUI

struct defaultView: View {
  @EnvironmentObject var viewModel: WatchEnvironment
  var body: some View {
    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    // 디폴트 뷰로 구현
    // viewModel.word에 텍스트가 들어오면 -> WatchView
  }
}

struct defaultView_Previews: PreviewProvider {
  static var previews: some View {
    defaultView()
  }
}

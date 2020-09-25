//
//  FuturedRow.swift
//  SwiftUIAppStore
//
//  Created by Shunsuke Takagi on 9/25/20.
//

import SwiftUI

//ここでアイテム自体を定義する
struct FuturedItem: View {
    var body: some View {
        //        縦方向
        VStack(alignment: .leading) {
            Text("Why Future this one")
                .font(.caption2)
                .foregroundColor(Color.accentColor)
                .padding(.top, 5)
            Text("Title is here")
                .font(.headline)
                .foregroundColor(Color.primary)
            
            Text("Some description is here")
                .font(.subheadline)
                .foregroundColor(Color(UIColor.secondaryLabel))
            //            画像を追加
            Image("image")
                .renderingMode(.original)
                .resizable()
                .frame(width: 320, height: 200)
                .cornerRadius(5)
            //            タイトルを追加
        }
        .padding(.trailing, 10)
    }
}

struct FuturedRow: View {
    var body: some View {
        VStack(alignment: .leading) {
            //            テキスト
            //            横向きにスクロールを追加
            ScrollView(.horizontal, showsIndicators: false) {
                //                横方向
                HStack(alignment: .top, spacing: 0) {
                    //                    アイテムがあるかぎり繰り返す
                    ForEach(1..<5) { audioContent in
                        //                        それをクリックできるようにする
                        NavigationLink(
                            destination: Detail()
                        ) {
                            //                            下で定義したものを使用
                            FuturedItem()
                        }
                    }
                }
            }
//            .frame(height: 185)
        }.padding(.bottom)
    }
}

struct FuturedRow_Previews: PreviewProvider {
    static var previews: some View {
        FuturedRow()
    }
}

//
//  CategoryRow.swift
//  SwiftUIAppStore
//
//  Created by Shunsuke Takagi on 9/25/20.
//
import SwiftUI

//ここでアイテム自体を定義する
struct CategoryItem: View {
    var body: some View {
        //        縦方向
        VStack(alignment: .leading) {
            //            画像を追加
            Image("image")
                .renderingMode(.original)
                .resizable()
                .frame(width: 200, height: 150)
                .cornerRadius(5)
            //            タイトルを追加
            Text("Text")
                .foregroundColor(.primary)
                .font(.subheadline)
        }
        .padding(.trailing, 10)
    }
}

struct CategoryRow: View {
    var body: some View {
        VStack(alignment: .leading) {
            //            テキスト
            HStack {
                if #available(iOS 14.0, *) {
                    Text("H2")
                        .font(.title3)
                        .fontWeight(.bold)
                        .padding(.leading, -2)
                        .padding(.top, 5)
                        .padding(.bottom, -2)
                } else {
                    // Fallback on earlier versions
                }
            }
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
                            CategoryItem()
                        }
                    }
                }
            }
            .frame(height: 185)
        }.padding(.bottom)
    }
}

struct CategoryRow_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRow()
    }
}



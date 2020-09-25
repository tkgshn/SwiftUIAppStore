//
//  CategoryList.swift
//  SwiftUIAppStore
//
//  Created by Shunsuke Takagi on 9/25/20.
//

import SwiftUI

//struct CategoryListRow: View{
//    var body: some View {
//        HStack {
//            Image(systemName: "person.fill")
//            Spacer()
//            Text("nmanan")
//            Spacer()
//        }
//    }
//}
//struct CategoryListRow_Previews: PreviewProvider {
//    static var previews: some View {
//        CategoryListRow()
//    }
//}


struct CategoryList: View {
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
            List {
                ForEach(1..<6) { _ in
                    Row()
                }
            }
            .padding(.leading, -20)
            .frame(height: 185)
        }
        .padding(.bottom)
    }
}

struct CategoryList_Previews: PreviewProvider {
    static var previews: some View {
        CategoryList()
    }
}

struct Row: View {
    var body: some View {
        HStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 20, height: 20)
            Text("CategoryName")
                .padding(.leading, 10.0)
        }
        .padding(.leading, 10.0)
    }
}

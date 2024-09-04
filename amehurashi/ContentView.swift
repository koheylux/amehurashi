//
//  ContentView.swift
//  amehurashi
//
//  Created by 藤原光平 on 2024/09/01.
//

import SwiftUI

struct ContentView: View {
    init() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.backgroundColor = UIColor(named: "mainColor")
        appearance.titleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    var body: some View {
        TabView {
            NavigationStack {
                VStack {
                    Text("かい")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.largeTitle)
                        .foregroundColor(.white)
                        .padding()
                        .background(.gray)
                        .cornerRadius(50)
                    
                    Spacer()
                    
                    ZStack {
                        Image("cloud")
                            .resizable()
                            .scaledToFit()
                            .padding()
                        Text("65%")
                            .font(.system(size: 54, weight: .bold, design: .default))
                            .padding(.top, 60)
                    }
                    
                    Spacer()
                    
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(width: 350, height: 150)
                        .cornerRadius(10)
                    
                    Spacer()
                }
                .padding()
                .navigationTitle("マイページ")
                .navigationBarTitleDisplayMode(.inline)
            }
            .tabItem {
                Image(systemName: "house.fill")
                Text("ホーム")
            }
            
            NavigationStack {
                Text("検索画面")
                    .navigationTitle("検索")
            }
            .tabItem {
                Image(systemName: "magnifyingglass")
                Text("検索")
            }
            
            NavigationStack {
                Text("通知画面")
                    .navigationTitle("通知")
            }
            .tabItem {
                Image(systemName: "bell.fill")
                Text("通知")
            }
            
            NavigationStack {
                Text("設定画面")
                    .navigationTitle("設定")
            }
            .tabItem {
                Image(systemName: "gearshape.fill")
                Text("設定")
            }
        }
    }
}

#Preview {
    ContentView()
}

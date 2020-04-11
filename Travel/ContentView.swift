//
//  ContentView.swift
//  Travel
//
//  Created by Lanre ESAN on 11/04/2020.
//  Copyright © 2020 tomisinesan.com. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Home().tabItem {
                Image("home").font(.title)
            }
            Text("Activity").tabItem {
                Image("activity").font(.title)
            }
            Text("Search").tabItem {
                Image("search").font(.title)
            }
            Text("person").tabItem {
                Image("Setting").font(.title)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home : View {
    
    var body : some View {
        
        VStack(alignment:.leading, spacing:12){
            
            HStack{
                
                Button(action: {
                    
                }){
                    Image("menu").renderingMode(.original)
                }
                
                Spacer()
                
                Button(action: {
                    
                }){
                    Image("Profile").renderingMode(.original)
                }
            }
            
            Text("Find More")
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundColor(Color.black)
                .multilineTextAlignment(.leading).padding(.top,15)
            
            HStack {
                
                Button(action: {
                                   
                               }){
                                Text("Experiences").fontWeight(.heavy).foregroundColor(.black)
                               }
                Spacer()
                Button(action: {
                                                  
                                              }){
                                                Text("Adventures").foregroundColor(.gray)
                                              }
                Spacer()
                Button(action: {
                                                  
                                              }){
                                                Text("Activities").foregroundColor(.gray)
                                              }
            }.padding([.top],30)
                .padding(.bottom,15)
            
        MiddleView()
            BottomView().padding(.top,10)
        }.padding()
    }
}


struct Detail : View {
    
    var body : some View {
        
        ZStack(alignment:.top){
            
        VStack{
            Image("topbg").resizable().frame(width:UIScreen.main.bounds.width,height:500).aspectRatio(2.35,contentMode: .fill).offset(y:-200).padding(.bottom, -200).background(Color("bg"))
            
            GeometryReader{
                geo in
                VStack(alignment:.leading){
                    DetailTop()
                    DetailMiddle()
                    DetailBottom()
                }
            }.background(Color.white).clipShape(Rounded()).padding(.top,-75)
        }
            HStack(alignment:.top){
                Image(systemName:"person.fill").font(.body).foregroundColor(.black)
                Spacer()
                Image(systemName:"square.and.arrow.up.fill").font(.body).foregroundColor(.black)
            }.padding(.top,25)
                .padding()
    }
    }
}

struct DetailMiddle : View {
    
    var body : some View {
        
        VStack(alignment: .leading, spacing: 10) {
            
            HStack(spacing: 5){
                Image("map").renderingMode(.original)
                Text("Sambissa Forest").foregroundColor(Color("bg"))
            }
            
            HStack(spacing: 8){
                
                ForEach(0..<5){ _ in
                 
                    Image(systemName: "star.fill").font(.body).foregroundColor(.yellow)
                    
                }
                
            }
            
            Text("People").fontWeight(.heavy).padding(.top,5)
            
            Text("Number Of People In Your Group").foregroundColor(.gray)
            
            HStack(spacing: 6){
                ForEach(0..<5){ i in
                    Button(action:{
                        
                    }){
                        Text("\(i+1)").foregroundColor(.white).padding(20)
                    }.background(Color("bg"))
                    .cornerRadius(8)
                }
            }
        }.padding(.horizontal, 15)
    }
}

struct DetailTop : View {
    
    var body : some View {
        
        VStack(alignment: .leading, spacing: 10) {
            
            HStack(){
               
                VStack(alignment: .leading){
                    
                    Text("Forest").fontWeight(.heavy).font(.largeTitle)
                    Text("Camping").fontWeight(.heavy).font(.largeTitle)
                }
                
                Spacer()
                
                Text("$299").foregroundColor(Color("bg")).fontWeight(.heavy).font(.title)
            }
        }.padding()
    }
}

struct DetailBottom : View {
    
    var body : some View {
        
        VStack(alignment: .leading, spacing: 10) {
            
            HStack(){
               
                VStack(alignment: .leading){
                     Text("Description ").fontWeight(.heavy)
                    Text("Forest Camping Experiences and Meanings Key elements of camping experience include nature, social interaction, and comfort/convenience. The most common associated meanings are restoration, family functioning").foregroundColor(.gray)
                    
                    HStack(spacing: 15 ){
                        Button(action:{
                            
                        }){
                            Image("Save").renderingMode(.original)
                        }
                        
                        Button(action:{
                            
                        }){
                            HStack(spacing: 6){
                            Text("Book Your Experience")
                                Image("arrow").renderingMode(.original)
                                
                                }.foregroundColor(.white).padding()
                            }.background(Color("bg")).cornerRadius(8)
                    }.padding(.top, 15)
                }
                
              
            }
        }.padding()
    }
}

struct Rounded : Shape {
    
    func path(in rect: CGRect) -> Path {
        
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: [.topLeft,.topRight], cornerRadii: CGSize(width: 40, height: 40))
        return Path(path.cgPath)
    }
}

struct BottomView : View {
    
    
    var body : some View {
        
        VStack{
            
            HStack{
                Text("What you want?").fontWeight(.heavy).foregroundColor(.black).font(.body)
                Spacer()
                //Text("View All").fontWeight(.medium).foregroundColor(.black).font(.body)
                Button(action:{
                    
                }){
                    Text("View All").fontWeight(.medium).foregroundColor(.gray).font(.footnote)
                }
            }.padding([.top],15)
            
            ScrollView(.horizontal,showsIndicators: false){
                
                HStack(spacing:35){
                    Button(action:{
                                       
                                   }){
                                        VStack(spacing: 8){
                                                              Image("mcard1").renderingMode(.original)
                                                              Text("Hiking").foregroundColor(.gray)
                                                          }  }
                   Button(action:{
                                                         
                                                     }){
                                                           VStack(spacing: 8){
                                                                                 Image("mcard2").renderingMode(.original)
                                                                                 Text("Ski").foregroundColor(.gray)
                                                                             } }
                   Button(action:{
                                                                           
                                                                       }){
                                                                              VStack(spacing: 8){
                                                                                                    Image("mcard3").renderingMode(.original)
                                                                                                    Text("Sky Diving").foregroundColor(.gray)
                                                                        }}
                   Button(action:{
                                                                                             
                                                                                         }){
                                                                                                VStack(spacing: 8){
                                                                                                    Image("mcard4").renderingMode(.original)
                                                                                                    Text("Skate Board").foregroundColor(.gray)
                                                                                                }
                    
                }
                }
            }.padding(.leading, 20)
                .padding([.top,.bottom], 15)
        }
    }
}

struct  MiddleView : View {
    
    @State private var show = false
    
    var body: some View{
        
        ScrollView(.horizontal,showsIndicators: false){
                    HStack(spacing:25){
                        VStack(alignment:.leading,spacing: 5){
                            
                            Button(action: {
                                
                            }){
                                Image("Card1").renderingMode(.original)
                            }
                            
                            Text("Fishing Time").fontWeight(.heavy)
                            
                            HStack( spacing: 5) {
                                Image("map").renderingMode(.original)
                                Text("Ikeja, Lagos").foregroundColor(.gray)
                            }
                        }
                        
                        VStack(alignment:.leading,spacing: 12){
                                               
                                               Button(action: {
                                                self.show.toggle()
                                               }){
                                                   Image("Card2").renderingMode(.original)
                                               }
                                               
                                               Text("Forest Camping").fontWeight(.heavy)
                                               
                                               HStack( spacing: 5) {
                                                   Image("map").renderingMode(.original)
                                                Text("Sambisa Forest").foregroundColor(.gray)
                                               }
                                           }
                    }
        }.sheet(isPresented: $show){
            Detail()
        }
    }
}

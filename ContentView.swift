//
//  ContentView.swift
//  Test
//
//  Created by Coder XL on 3/3/22.
//

import SwiftUI

struct ContentView: View {
    @State var playerCard="card5";
    @State var cpuCard="card12";
    @State var playerScore=0;
    @State var cpuScore=0;
    
    var body: some View {
        
        ZStack{
        
            Image("background")
                .ignoresSafeArea()
           
            VStack(){
                Spacer()
                Image("logo")
                Spacer()
                HStack{
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                    
                }
                Spacer()
              
                Button(action: {
                    //Random genrate
                    let playerRand=Int.random(in: 2...14)
                    let cpuRand=Int.random(in: 2...14)
                    playerCard="card"+playerRand.description;
                    cpuCard="card"+cpuRand.description;
                    if(playerRand>cpuRand){
                        playerScore+=1;
                    }else if(playerRand==cpuRand){
                        playerScore+=1;
                        cpuScore+=1;
                        
                    }else{
                        cpuScore+=1;
                    }
                }, label: {
                        Image("dealbutton")
                    })
                       
                Spacer()
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom,10)
                        Text(playerScore.description)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding(.bottom,10)
                        Text(cpuScore.description)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                
        }
    }
}

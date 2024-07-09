
//  ContentView.swift
//  RadioButtonTabSelection
//  Created by Sumit on 09/07/24.

import SwiftUI

 struct RadioButtonView: View {
    
    @State var isRadioButtonSelected:Bool = false
    @State var radioButtonRowCount:Int = 0

    var body: some View {
        VStack {
            HStack {
                Circle()
                    .fill(.red)
                    .frame(width: radioButtonRowCount == 0 ? 28 : 22,height:radioButtonRowCount == 0 ? 28 : 22)
                    .overlay(content: {
                        if isRadioButtonSelected && radioButtonRowCount == 0  {
                            Image("RadioButtonIcon")
                                .resizable()
                                .clipped()
                        }
                    }).onTapGesture {
                        radioButtonRowCount = 0
                    }
                Circle()
                    .fill(.gray)
                    .frame(width:radioButtonRowCount == 1 ? 28 : 22,height:radioButtonRowCount == 1 ? 28 : 22)
                    .overlay(content: {
                        if isRadioButtonSelected && radioButtonRowCount == 1 {
                            Image("RadioButtonIcon")
                                .resizable()
                                .clipped()
                        }
                    })
                    .onTapGesture {
                        radioButtonRowCount = 1
                    }
                Circle()
                    .frame(width:radioButtonRowCount == 2 ? 28 : 22,height:radioButtonRowCount == 2 ? 28 : 22)
                    .overlay(content: {
                        if isRadioButtonSelected && radioButtonRowCount == 2 {
                            Image("RadioButtonIcon")
                                .resizable()
                                .clipped()
                        }
                    })
                    .onTapGesture {
                        radioButtonRowCount = 2
                    }
            }
        }.onAppear() {
            isRadioButtonSelected = true
            radioButtonRowCount = 0
        }
    }
 }

#Preview {
    RadioButtonView()
}

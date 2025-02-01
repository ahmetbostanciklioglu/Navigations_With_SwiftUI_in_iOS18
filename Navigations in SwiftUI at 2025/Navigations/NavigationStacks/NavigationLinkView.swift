import SwiftUI

struct NavigationLinkView: View {
    
    var model =  Model(bol: true)
    
    var body: some View {
        
        NavigationStack {
            VStack {
                Text("Home Screen")
                    .font(.largeTitle)
                
                // title ve destination are used
                NavigationLink("Go to Detail View 1") {
                    DetailView()
                }
                .padding()
                .buttonStyle(.borderedProminent)
                
                
                // destination ve Label are used
                NavigationLink(destination: {
                    DetailView()
                }, label: {
                    Text("Detail View")
                })
                .padding()
                .buttonStyle(.borderedProminent)
                
                // Hashable Model'e göre destination değişiyor ve Label are
                NavigationLink(value: model.bol == true) {
                    Text("Detail View 2")
                }
                .padding()
                .buttonStyle(.borderedProminent)
            }
            .navigationTitle("Home")
            .navigationDestination(for: Bool.self) { test in
                DetailView()
            }
            
            
           
        }
        
    }
}

struct Model: Hashable {
    var bol: Bool
}

#Preview {
    NavigationLinkView(model: Model(bol: true))
}


struct DetailView: View {
    @Environment(\.dismiss) var dismiss
    
    
    var body: some View {
        VStack {
            Button("Return Back to Home", action: {
                dismiss()
            })
                .font(.title)
        }
        .navigationTitle("Detail")
    }
}


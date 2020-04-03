# GridMenu

### Installation

The URL of this Swift Package is

```shell
https://github.com/labs-nomad/shared-nomad-go.com.git
```

### Visual

![selected](/Images/Carousel.png)

### Article

I also wrote a medium article about making this menu. Here is the link

### Usage

Here is a really basic usage on a fresh xCode project using `SwiftUI`

```swift
import SwiftUI
import GridMenu

struct ContentView: View {
    
    @ObservedObject var gmMenuController = GMMenuController()
    
    
    var body: some View {
        ZStack {
            VStack {
                HStack {
                    Spacer()
                    GMCollapsedMenu(controller: self.gmMenuController).padding([.top], 40).padding([.trailing], 20).foregroundColor(Color.white)
                }
                Spacer()
            }
            if self.gmMenuController.collapsed == false {
                GMMenu(controller: self.gmMenuController).background(Color.white)
            }
        }
        .background(Color.gray)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
```

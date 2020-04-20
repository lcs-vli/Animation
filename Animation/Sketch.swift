import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    
    var x = Double(random(from: 10, to: 490))
    var y = Double(random(from: 10, to: 490))
    
    let black = Color(hue:100, saturation: 100, brightness: 0, alpha: 100)
    let white = Color(hue:0, saturation: 0, brightness: 100, alpha: 100)
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        
        canvas.drawShapesWithBorders = false
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        
        if x >= 500, y < 500{
            
            //change the color
            canvas.fillColor = white
            //drwa a rectanlge to cover up the trace
            canvas.drawEllipse(at: Point(x: 1000 - x, y: y), width: 53, height: 53)
            x += 3
            y += 3
            canvas.fillColor = black
            // Draw an ellipse in a random place
            canvas.drawEllipse(at: Point(x: 1000 - x, y: y), width: 50, height: 50)
            
        } else if y >= 500, x < 500{
            
            //change the color
            canvas.fillColor = white
            //drwa a rectanlge to cover up the trace
            canvas.drawEllipse(at: Point(x: x, y: 1000 - y), width: 53, height: 53)
            x += 3
            y += 3
            canvas.fillColor = black
            // Draw an ellipse in a random place
            canvas.drawEllipse(at: Point(x: x, y: 1000 - y), width: 50, height: 50)
            
        }else if x < 500, y < 500{
            
            //change the color
            canvas.fillColor = white
            //drwa a rectanlge to cover up the trace
            canvas.drawEllipse(at: Point(x: x, y: y), width: 53, height: 53)
            x += 3
            y += 3
            canvas.fillColor = black
            // Draw an ellipse in a random place
            canvas.drawEllipse(at: Point(x: x, y: y), width: 50, height: 50)
        } else if x >= 500, y >= 500{
            
            //change the color
            canvas.fillColor = white
            //drwa a rectanlge to cover up the trace
            canvas.drawEllipse(at: Point(x: 1000 - x, y: 1000 - y), width: 53, height: 53)
            x += 3
            y += 3
            canvas.fillColor = black
            // Draw an ellipse in a random place
            canvas.drawEllipse(at: Point(x: 1000 - x, y: 1000 - y), width: 50, height: 50)
        }
        
        if x >= 1000{
            x = 0
        }
        if y >= 1000{
            y = 0
        }
        
        print(x)
        print(y)
            
    }
    
}

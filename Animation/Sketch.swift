import Foundation
import CanvasGraphics

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var x1 : Int
    
    let black = Color(hue: 0, saturation: 100, brightness: 0, alpha: 100)
    let blue = Color(hue: 240, saturation: 100, brightness: 100, alpha: 100)
    let green = Color(hue: 100, saturation: 100, brightness: 100, alpha: 100)
    let orange = Color(hue: 35, saturation: 100, brightness: 100, alpha: 100)
    let purple = Color(hue: 280, saturation: 70, brightness: 60, alpha: 100)
    
    var drawShapesWithBorders = false
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        x1 = 250
        
    }
    
    // This function runs repeatedly, forever, to create the animated effect
    func draw() {
        
        for n in 0...2{
            
            
            x += 1
            
            if n == 0{
                canvas.fillColor = black
            } else if n == 1{
                canvas.fillColor = green
            } else if n == 2{
                canvas.fillColor = purple
            }
                
            // Draw an ellipse in the middle of the canvas
            canvas.drawEllipse(at: Point(x: x, y: 83 + 166 * n), width: 50, height: 50)
            
        }
        
        for n in 0...1{
            
            x1 -= 1
            
            if n == 0{
                canvas.fillColor = blue
            } else if n == 1{
                canvas.fillColor = orange
            }
            
            // Draw an ellipse in the middle of the canvas
            canvas.drawEllipse(at: Point(x: x1, y: 166 + 166 * n), width: 50, height: 50)
            
        }
        
    }
    
}

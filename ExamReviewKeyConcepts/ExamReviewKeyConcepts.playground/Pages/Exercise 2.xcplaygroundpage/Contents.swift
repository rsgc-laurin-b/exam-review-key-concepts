//: [Previous](@previous) / [Next](@next)
//: # Exercise 2
//: ## Your goal
//: Reproduce this image:
//:
//: ![Undertones](Undertones.png "Undertones")
/*:
 ## Notes:
 * you will work on a canvas that is 400 pixels wide by 600 pixels high
 * strongly recommend that you make a plan [using this storyboard template](http://russellgordon.ca/rsgc/2016-17/ics2o/Storyboard%20Planning%20Template.pdf) (I have hard copies available if you are in class)
 * you can use the Digital Color Meter program to obtain an RGB color value (Command-Shift-C), then [go to this site](http://rgb.to/), paste the result, and use the HSB values provided.
 * efficiency counts: employ loops and/or function(s) and/or conditional statements to write compact code
 */
//: ## Template code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport
//: ## Reminder
//: To see the visual output, be sure to show the Assistant Editor and choose the Timeline option.
//:
//: ![timeline](timeline.png "Timeline")
//: ## Your code starts here
// Create a new canvas
let canvas = Canvas(width: 400, height: 600)

canvas.fillColor = Color(hue: 83, saturation: 8, brightness: 85, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)
//make all the text at the top

//variable so that if the textsize needs to be changed i dont have to replace every single one
var textsize = 10
var yvalupper = 550
//upper text
canvas.textColor = Color.red
canvas.drawText(message: "straight music presents", size: textsize, x: 20, y: yvalupper)
canvas.drawText(message: "victoria hall hanley", size: textsize, x: 150, y: yvalupper)
canvas.drawText(message: "advance tickets: $2.00", size: textsize, x: 280, y: yvalupper)
//lower text
canvas.drawText(message: "the undertones", size: textsize, x: 20, y: 540)
canvas.drawText(message: "stroke-on-trent, england", size: textsize, x: 150, y: 540)
canvas.drawText(message: "at the door: $2.50", size: textsize, x: 280, y: 540)

//second layer
canvas.drawText(message: "with special guests", size: textsize, x: 20, y: 520)
canvas.drawText(message: "tuesday", size: textsize, x: 150, y: 520)
//lower text
canvas.drawText(message: "the chords", size: textsize, x: 20, y: 510)
canvas.drawText(message: "june 5 1979 / 7:30 pm", size: textsize, x: 150, y: 510)



canvas.translate(byX: 10, byY: 400)


for y in stride(from: 95, to: 0, by: -5){
      canvas.textColor = Color(hue: 0, saturation: 0, brightness: 0, alpha: y)
    canvas.drawText(message: "undertones", size: 70, x: 0, y: 0)
    canvas.translate(byX: -2, byY: 0)
    canvas.rotate(by: -5)
  
}


//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView

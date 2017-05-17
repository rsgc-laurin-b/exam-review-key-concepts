//: [Previous](@previous) / [Next](@next)
//: # Exercise 1
//: ## Your goal
//: Reproduce this image:
//:
//: ![Blur](Blur.png "Blur")
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

canvas.fillColor = Color(hue: 193, saturation: 76, brightness: 94, alpha: 100)
canvas.drawRectangle(centreX: 200, centreY: 300, width: 400, height: 600)

//193, 76, 84
canvas.textColor = Color(hue: 10, saturation: 0, brightness: 0, alpha: 10)

//draw a loop that creates the text but moves the y value up by 5 every time to create the blur effect
for y in stride(from: -50, to: 300, by: 5){
    canvas.drawText(message: "blur", size: 200, x: 10, y: y)
}

//draw another blur text to make it easier to read and make it look like the original
canvas.textColor = Color(hue: 10, saturation: 0, brightness: 0, alpha: 100)
    canvas.drawText(message: "blur", size: 200, x: 10, y: 275)

//make all the text at the top
var textsize = 10
//upper text
canvas.drawText(message: "saturday", size: textsize, x: 20, y: 570)
canvas.drawText(message: "mandela hall", size: textsize, x: 150, y: 570)
canvas.drawText(message: "special guest", size: textsize, x: 280, y: 570)
//lower text
canvas.drawText(message: "october 16 1993 / 8 pm", size: textsize, x: 20, y: 560)
canvas.drawText(message: "at university of sussex", size: textsize, x: 150, y: 560)
canvas.drawText(message: "salad, plus my life story", size: textsize, x: 280, y: 560)
//price text
canvas.drawText(message: "$6.50 / &5.50 advance", size: textsize, x: 280, y: 550)
//: ## Template code
//: The code below is necessary to see the result of your work in the Assistant Editor at right. Please do not remove.
PlaygroundPage.current.liveView = canvas.imageView

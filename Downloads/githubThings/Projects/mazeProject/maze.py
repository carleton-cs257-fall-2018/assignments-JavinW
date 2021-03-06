#Written by whitej2
#6-5-17
#Final Project Code (maze)

#Imports the necessary modules
from graphics import *
import time
import random
from cImage import *

class Maze:
	def __init__(self):
		#Code from mouseandkeys.py
		self.window = GraphWin("Maze Game", 600, 600)
		self.window.setMouseHandler(self.handleClick)		
		self.window.master.bind("<Key>", self.handleKeyPress)
		#Sets the background color
		self.background = color_rgb(140,212,223)
		self.window.setBackground(self.background)	
		self.startScreen()

	def startScreen(self):
		"""This function displays the instructions for the game on the screen for 10 seconds,
		then displays the 3 emojis that represent the different maze options. The program waits for 
		the user to click on an emoji before displaying the corresponding maze to the screen"""
		#Draws the first instruction line to the screen
		intro = Text(Point(275, 50), "Pick an emoji and use the mouse and click on the maze at the")
		intro.setTextColor("black")
		intro.setSize(15)
		intro.draw(self.window)
		#Draws second line
		line2 = Text(Point(275, 70), "starting position to create a game piece. Use the arrow keys to")
		line2.setTextColor("black")
		line2.setSize(15)		
		line2.draw(self.window)
		#Draws third line
		line3 = Text(Point(275, 90), "find the finish line before the time runs out.")
		line3.setTextColor("black")
		line3.setSize(15)
		line3.draw(self.window)
		#Draws fourth line
		line4 = Text(Point(275, 110), "Good luck!")
		line4.setTextColor("black")
		line4.setSize(15)
		line4.draw(self.window)
		#Program sleeps then undraws all lines
		time.sleep(10)
		intro.undraw()
		line2.undraw()
		line3.undraw()
		line4.undraw()		
		#Draws the maze selection instruction to the screen
		self.selection = Text(Point(275, 75), "Click on an emoji to pick a maze!")
		self.selection.setTextColor("black")
		self.selection.setSize(15)
		self.selection.draw(self.window)
		#Draws first emoji to the screen
		emoji = FileImage("emoji1.gif")
		emoji.setPosition(100,250)
		emoji.draw(self.window)
		#Draws the second emoji
		emoji2 = FileImage("emoji2.gif")
		emoji2.setPosition(250,250)
		emoji2.draw(self.window)
		#Draws third emoji
		emoji3 = emoji.clone()
		emoji3.setPosition(400, 250)
		emoji3.draw(self.window)
		#Draws an instruction to the screen
		self.start = Text(Point(300,50), "Click in the maze near the start position to create a game piece!")
		self.start.setTextColor("blue")
		self.start.setSize(15)
		self.start.draw(self.window)		
		#calls the playGame function
		self.playGame()

	def handleClick(self, point):
		"""this function handles all clicks made by the user. It takes the points generated by the click 
		and determines if it the points fall into one of these conditions"""
		#Undraws the instruction lines
		self.selection.undraw()
		self.start.undraw()
		#checks if the click is within the range of the first emoji
		if 100 < point.getX() < 175 and 250 < point.getY() < 320:
			#displays the first maze to the screen
			self.maze = FileImage("firstmaze.gif")
			self.maze.setPosition(100,200)
			self.maze.draw(self.window)
		#checks if the click is within the range of the second emoji
		elif 250 < point.getX() < 320 and 250 < point.getY() < 320:
			#displays the second maze to the screen
			self.maze = FileImage("secondmaze.gif")
			self.maze.setPosition(100,200)
			self.maze.draw(self.window)
		#checks if the click is within the range of the third emoji
		elif 400 < point.getX() < 475 and 250 < point.getY() < 320:
			#displays the third maze to the screen
			self.maze = FileImage("thirdmaze.gif")
			self.maze.setPosition(100,200)
			self.maze.draw(self.window)
		#if the maze is displayed to the screen and the click meets the conditions
		#the game piece is drawn to the screen
		if 147 < point.getX() < 157 and 245 < point.getY() < 255:
			self.gamePiece = Circle(Point(point.getX(),point.getY()), 4)
			self.gamePiece.setFill(color_rgb(147,20,210))
			self.gamePiece.draw(self.window)
			#This gets the location of the click so that the program can track the circle's location
			self.locationX = point.getX()
			self.locationY = point.getY()		
		#if the click is not in the correct range a message is displayed
		else:
			badClick = Text(Point(300, 50), "Please follow directions. Click the start position to create a game piece!")
			badClick.setTextColor("red")
			badClick.setSize(15)
			badClick.draw(self.window)
			time.sleep(2)
			badClick.undraw()

	def handleKeyPress(self, key):
		"""handles the keystrokes during the game. The only allowed keys are the arrow keys"""
		#Circle for the path created by the user movements through the game
		self.pathMark = Circle(Point(self.locationX, self.locationY), 3)
		self.pathMark.setFill("green")
		#happens when the down key is pressed
		if key.keysym == "Down":
			self.gamePiece.move(0,10)
			self.validMove()
			self.pathMark.draw(self.window)
			self.locationY += 10
		#happens when the up key is pressed
		elif key.keysym == "Up":
			self.gamePiece.move(0,-10)
			self.validMove()			
			self.pathMark.draw(self.window)			
			self.locationY -= 10
		#happens when the left key is pressed
		elif key.keysym == "Left":
			self.gamePiece.move(-10,0)
			self.validMove()		
			self.pathMark.draw(self.window)
			self.locationX -= 10
		#happens when the right key is pressed
		elif key.keysym == "Right":
			self.gamePiece.move(10,0)
			self.validMove()
			self.pathMark.draw(self.window)
			self.locationX += 10
		#calls the endGame function
		self.endGame()

	def validMove(self):
		"""Checks the pixel color at the location of the game piece to see if the game piece is 
		colliding with the walls of the maze"""
		#Gets the color of the maze
		p = self.maze.getPixel(self.locationX-100, self.locationY-200)
		#if the pixel color is darker than the values then this code runs
		if p.red < 240 and p.green < 240 and p.blue < 240:
			badMove = Text(Point(200, 50), "Don't cross the maze walls!")
			badMove.setTextColor("black")
			badMove.setSize(15)
			badMove.draw(self.window)
			time.sleep(1)
			badMove.undraw()
		
	def playGame(self):
		"""Runs the time limit and if the time runs out, the meme is displayed"""
		#User has 90 seconds to find the exit
		self.timeLimit = 90
		#While there is time remaining, the while loop runs
		while self.timeLimit != 0:
			self.timeRemaining = Text(Point(550, 50), self.timeLimit)
			self.timeRemaining.setTextColor("red")
			self.timeRemaining.setSize(20)
			self.timeRemaining.draw(self.window)
			time.sleep(1)
			self.timeRemaining.undraw()
			self.timeLimit -= 1
		#If there's no time left, the meme is displayed
		if self.timeLimit == 0:
			self.lost = FileImage("losememe.gif")
			self.lost.setPosition(50,100)
			self.lost.draw(self.window)
			time.sleep(5)
			#The reset function is called
			self.reset()
					
	def reset(self):
		"""draws a rectangle that matches the color of the background to cover the maze"""
		clear = Rectangle(Point(50,100), Point(554, 438))
		clear.setOutline(self.background)
		clear.setFill(self.background)
		clear.draw(self.window)
		#calls the lastScreen function
		self.lastScreen()
		self.timeLimit += 100
			
	def lastScreen(self):
		"""Displays a closing message""" 
		bye = Text(Point(275, 50), "Thanks for playing!")
		bye.setTextColor("black")
		bye.setSize(25)
		bye.draw(self.window)
		time.sleep(5)		
					
	def endGame(self):
		"""If the game piece is in the correct range then the game is won"""
		if 480 < self.locationX < 490 and 215 < self.locationY < 225:
			#If the game is won, the meme is displayed
			self.won = FileImage("winmeme.gif")
			self.won.setPosition(50,100)
			self.won.draw(self.window)
			time.sleep(5)
			#calls the reset function
			self.reset()

#Runs the program			
def main():	
	win = Maze()
	input("Close the window to quit.")
if __name__=="__main__":
    main()
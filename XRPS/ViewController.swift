//
//  ViewController.swift
//  XRPS
//
//  Created by Benjamin Hayter on 12/12/14.
//  Copyright (c) 2014 Benjamin Hayter. All rights reserved.
//

import Cocoa

class ViewController: NSViewController
{

    override func viewDidLoad()
    {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBOutlet var userChoice_Pic: NSImageView!
    
    @IBOutlet var computerChoice_Pic: NSImageView!
    
    @IBOutlet var winnerText: NSTextField!
    
    
    
    @IBAction func rockButtonPressed(sender: AnyObject)
    {
        self.userChoice_Pic.image = NSImage(named: "rock")
		self.computerChoice(1)
       
    }
    
    
    @IBAction func paperButtonPressed(sender: AnyObject)
    {
        self.userChoice_Pic.image = NSImage(named: "paper")
		self.computerChoice(2)
        
    }
    
    
    @IBAction func scissorButtonPressed(sender: AnyObject)
    {
        self.userChoice_Pic.image = NSImage(named: "scissor")
		self.computerChoice(3)
        
        
    }
    
    @IBAction func playAgain(sender: AnyObject) {
        self.userChoice_Pic.image = nil
        self.computerChoice_Pic.image = nil
        self.winnerText.stringValue = ""
        
    }
    
    //func that returns a random number 1-3
    func randomNumber(min: Int, max:Int) ->Int
    {
        return min + Int(arc4random_uniform(uint32(max - min + 1)))
    }
    
   
    
    //func that sets the randomNumber to a var
    func computerChoice(userChoice:Int)
    {
        var computerChoice_int:Int = randomNumber(1, max:3)
        
        
        if  computerChoice_int == 1
        {
            self.computerChoice_Pic.image = NSImage(named: "rock")
        }
        else if computerChoice_int  == 2
        {
            self.computerChoice_Pic.image = NSImage(named: "paper")
        }
        else if computerChoice_int == 3
        {
            self.computerChoice_Pic.image = NSImage(named: "scissor")
        }
        self.pickWinner(userChoice, computerChoice: computerChoice_int)
    }

    // picks and displays winnder to UI Label
	func pickWinner(userChoice: Int, computerChoice:Int)
	{
        
        if userChoice == computerChoice
        {
            self.winnerText.stringValue = "Tie"
        }
        else if userChoice == 1 && computerChoice == 2
        {
            self.winnerText.stringValue = "Computer Wins!"
        }
        else if userChoice == 1 && computerChoice == 3
        {
            self.winnerText.stringValue = "User Wins!"
        }
        else if userChoice == 2 && computerChoice == 1
        {
            self.winnerText.stringValue = "User Wins!"
        }
        else if userChoice == 2 && computerChoice == 3
        {
            self.winnerText.stringValue = "Computer Wins!"
        }
        else if userChoice == 3 && computerChoice == 1
        {
            self.winnerText.stringValue = "Computer Wins!"
        }
        else if userChoice == 3 && computerChoice == 2
        {
             self.winnerText.stringValue = "User Wins!"
        }
        
        
	}

        
}




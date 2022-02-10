//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Bandharapu,Manish Goud on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var ImageViewOutlet: UIImageView!
    
    
    @IBOutlet weak var CrsNumber: UILabel!
    
    
    @IBOutlet weak var CrsTitle: UILabel!
    
    
    @IBOutlet weak var CrsSemester: UILabel!
    
    
    @IBOutlet weak var PreviousButton: UIButton!
    
    
    @IBOutlet weak var NextButton: UIButton!
    
    let Courses = [
        ["img01", "44-642", "OOPS", "Fall 2021"],
        ["img02", "44-643", "IOS", "Spring 2022"],
        ["img03", "44-444", "Patterns Frameworks", "Spring2022"]
        ]
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Load the details(image, num, title and sem) of the first (0th element) course
        updateUI(imageNumber);
        
        //Previous button is disabled
        PreviousButton.isEnabled = false;
    }

    @IBAction func Previousbutton(_ sender: Any) {
        //UI Should be updated with the previous course details
        NextButton.isEnabled = true
        //Next button should be enabled
        imageNumber -= 1
        updateUI(imageNumber)
        //If the course is at 0th position, previous button
        if(imageNumber == 0){
            PreviousButton.isEnabled = false
        }
    }
    
    @IBAction func Nextbutton(_ sender: Any) {
        //UI Should be updated with the next course details
        imageNumber += 1
        updateUI(imageNumber)
        //Previous button should be enabled
        PreviousButton.isEnabled = true
        //Once reaching the end point, next button should be disabled.
        if(imageNumber == Courses.count-1){
            NextButton.isEnabled = false
        }
    
    }
    
    func updateUI(_ imageNumber: Int){
        ImageViewOutlet.image = UIImage(named: Courses[imageNumber][0])
        CrsNumber.text = Courses[imageNumber][1]
        CrsTitle.text = Courses[imageNumber][2]
        CrsSemester.text = Courses[imageNumber][3]
    }
}


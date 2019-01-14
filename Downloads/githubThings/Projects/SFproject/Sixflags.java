/*
August 14, 2018
Sixflags.java
a program that allows the user to input employee information,
search for an employee's information, create a work schedule
for an employee, and compile a full employee schedule.
@Author: Javin White
*/

import java.util.Scanner;
import java.util.*;
import java.util.Random;
import java.util.ArrayList;
import java.util.Arrays;
import java.io.*;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

//add employee flags
//enhance with html file output
//add specific date feature (method should create a schedule for specific dates)
//break up fullSchedule() into more methods and possibly  scheduleMaker() too
public class Sixflags {
	
	//instance variables private to the class
	private ArrayList<SFEmployee> employeeList = new ArrayList<SFEmployee>();
	private String InputFile;
	private ArrayList<String> sun = new ArrayList<String>();
	private ArrayList<String> mon = new ArrayList<String>();
	private ArrayList<String> tues = new ArrayList<String>();
	private ArrayList<String> wed = new ArrayList<String>();
	private ArrayList<String> thurs = new ArrayList<String>();
	private ArrayList<String> fri = new ArrayList<String>();
	private ArrayList<String> sat = new ArrayList<String>();

//fix delete feature. Should delete employee information from schedule lists
// 	public void deleteEmployee(ArrayList<String[]> workers) {
// 		Scanner scDelete = new Scanner(System.in);
// 		System.out.println("Enter name of employee to be deleted from the system: ");
// 		String nameToDelete = scDelete.nextLine();
// 		for (int i = 0;  i < workers.size(); i++) {
// 			String[] emplArray = workers.get(i);
// 			String nameMatch = emplArray[0];
// 			if (nameToDelete.equals(nameMatch)) {
// 				workers.remove(i);
// 				// for (int j = i + 1; j < workers.size() - 1; j++) {
// // 					workers.get(i) = workers.get(j);
// // 				}
// 			}
// 		}
// 	
// 	} //end method

	public Sixflags(String fileName) {
		try{
			InputFile = fileName;
			Scanner readFile = new Scanner(new File(InputFile));
			while (readFile.hasNextLine()) {
				readFile.useDelimiter(",|\\n");
				String name = readFile.next();
				String bDate = readFile.next();
				String age = readFile.next();
				String number = readFile.next();
				String working = readFile.next();
				String idNum = readFile.next();
				SFEmployee newEmployee = new SFEmployee(name, bDate, age, number, working, idNum);
				employeeList.add(newEmployee);
			} //end while loop
		} catch (FileNotFoundException e) {
			System.out.println("File not found.");
		} //end try-catch
	} //end method 

	public void newEmployee() {
		Scanner gettingInfo = new Scanner(System.in);
		System.out.println("Enter the new employee's name (first last): ");
		String name = gettingInfo.nextLine();
		System.out.println("Enter the new employee's date of birth (MM/DD/YYYY): ");
		String bDate = gettingInfo.nextLine();
		System.out.println("Enter the new employee's age in years: ");
		String age = gettingInfo.nextLine();
		System.out.println("Enter the new employee's phone number (123-456-7890): ");
		String number = gettingInfo.nextLine();
		System.out.println("Enter the employee's general availability (S/M/T/W/Th/F/Sa): ");
		String working = gettingInfo.nextLine();
		String idNum = createID();
		SFEmployee newHire = new SFEmployee(name, bDate, age, number, working, idNum);
		employeeList.add(newHire);	
	} //end method

	public String createID() {
		Random randomInt = new Random();
		int lower = 100000;
		int upper = 999999;
		int badgeNum = randomInt.nextInt(upper - lower) + lower;
		String strIDNum = String.valueOf(badgeNum);
		return strIDNum;
 	} //end method

	public void addToList() {
		try {
			FileWriter writeToFile = new FileWriter("currEmployees.txt");
			for (int i = 0; i < employeeList.size(); i++) {
				String stringEmpl = employeeList.get(i).toString();
				writeToFile.write(stringEmpl);
				if (i != employeeList.size() - 1) {
					writeToFile.write("\n");
				} //end if
			} //end for
			writeToFile.flush();
			writeToFile.close();
 		} catch (IOException e) {
  			e.printStackTrace();
 		}
	} //end method
	
	public void employeeInfo(String searchName) {
		boolean found = false;
		int i = 0;
		while (found == false && i < employeeList.size()) {
			String employee = employeeList.get(i).getName();
			if (employee.equals(searchName)) {
				found = true;
				String info = employeeList.get(i).toString();
				String[] infoArray = info.split(",");
				for (int j = 0; j < infoArray.length; j++) {
					System.out.println(infoArray[j]);
					} //end for loop
			} else if (i == employeeList.size() - 1 && found == false) {
				System.out.println("Employee not found.");
				found = true;
			} else {
				found = false;
				i++;
			} //end if-else
		} //end while
	} //end method
 	 	
	public void displaySchedule(String scheduleType) {
		ArrayList[] fullSchedule = new ArrayList[7];
		fullSchedule[0] = sun;
		fullSchedule[1] = mon;
		fullSchedule[2] = tues;
		fullSchedule[3] = wed;
		fullSchedule[4] = thurs;
		fullSchedule[5] = fri;
		fullSchedule[6] = sat;
		if (scheduleType.equals("full")) {
			for (int i = 0; i < fullSchedule.length; i++) {
				ArrayList<String> daySched = getSchedule(fullSchedule[i]);
				System.out.println(fullSchedule[i]);
				for (int j = 0; j < daySched.size(); j++) {
					System.out.println(daySched.get(i));
				}
			}
		} else {
			ArrayList<String> daySched = getSchedule(scheduleType);
			for (int i = 0; i < daySched.size(); i++) {
				System.out.println(daySched.get(i));
			} 			//stopped here - can't call method from SFEmployee class
		}
	} //end method

// 	public void updateInfo() {
// 	
// 	
// 	} //end method
	
	public static void main(String[] args) {
		System.out.println("Welcome to the employee directory!" + "\n");
		Sixflags current = new Sixflags("currEmployees.txt");
 		Scanner keyboard = new Scanner(System.in);
 		boolean keepGoing = true;
 		while (keepGoing == true) {
			System.out.println("Options: " + "\n" + "New employee" + "\n" 
			+ "Show employee information" + "\n" + "Show employee schedule" + "\n" + 
			"Show full schedule" + "\n" + "Add employee flags" + "\n" + 
			"Update employee information" + "\n" + "Delete employee" + "\n" 
			+ "Show daily schedule"	+ "\n" + "Quit program" + "\n");
			System.out.println("What would you like to do?");
			String input = keyboard.nextLine();			
			String choice = input.toLowerCase();
			//System.out.println("This is the choice: " + choice);
			if (choice.equals("new employee")) {
				current.newEmployee();
			} else if (choice.equals("show employee information")) {
				System.out.println("Enter an employee's name: ");
				String employeeToSearch = keyboard.nextLine();
				System.out.println("\n");
				current.employeeInfo(employeeToSearch);
// 			} else if (choice.equals("Show employee schedule")) {
// 				String showSchedule = current.employeeSched(employeeList);
//  				System.out.println(showSchedule);
			} else if (choice.equals("show full schedule")) {   
 				current.displaySchedule("full");
// // 			} else if (choice.equals("add employee flags")) {
// // 				current.flags();
// 	// 		} else if (choice.equals("delete employee")) {
// // 				current.deleteEmployee(employeeList);
// 			} else if (choice.equals("update employee information")) {
// 					current.updateInfo();
			} else if (choice.equals("show daily schedule")) {
				System.out.println("Which day's schedule would you like to see: ");
				String scheduleToShow = keyboard.nextLine();
				current.displaySchedule(scheduleToShow);
			} else if (choice.equals("quit program")) {
				current.addToList();
				keepGoing = false;
			} else {
				System.out.println("Please enter a command exactly as written.");	
				keepGoing = true;			
			}
		} //end while loop	
		System.out.println("Thanks for using the employee directory!");
	} //end method
} //end Sixflags.java
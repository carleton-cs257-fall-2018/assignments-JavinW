/*
* SFEmployee.java
* A class used by Sixflags.java to complete all functions of 
* the employee directory.
* 
* @author: Javin White
* date created: September 13, 2018
*/


//add checks to ensure that things are formatted properly
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

public class SFEmployee {

	private String fullName;
	private String birthDate;
	private String ageInYears;
	private String phoneNum;
	private String availability;
	private String idNum;
	private ArrayList<String> sunday = new ArrayList<String>();
	private ArrayList<String> monday = new ArrayList<String>();
	private ArrayList<String> tuesday = new ArrayList<String>();
	private ArrayList<String> wednesday = new ArrayList<String>();
	private ArrayList<String> thursday = new ArrayList<String>();
	private ArrayList<String> friday = new ArrayList<String>();
	private ArrayList<String> saturday = new ArrayList<String>();
		
	public SFEmployee(String name, String dob, String age, String num, String canWork, String id) {
		fullName = name;
		birthDate = dob;
		ageInYears = age;
		phoneNum = num;
		availability = canWork;
		idNum = id; 
		scheduleMaker();
	} //end constructor

	public void scheduleMaker() {
		String[] workSched = availability.split("/");
		for (int i = 0; i < workSched.length; i++) {
			if (workSched[i].equals("S")) {
				sunday.add(fullName);
			} else if (workSched[i].equals("M")) {
				monday.add(fullName);
			} else if (workSched[i].equals("T")) {
				tuesday.add(fullName);
			} else if (workSched[i].equals("W")) {
				wednesday.add(fullName);
			} else if (workSched[i].equals("Th")) {
				thursday.add(fullName);
			} else if (workSched[i].equals("F")) {
				friday.add(fullName);
			} else if (workSched[i].equals("Sa")) {
				saturday.add(fullName);
			} else {
				System.out.println("Invalid employee schedule.");	//needs to be changed 
			} //end if/else series									//to throw exception
		} //end for loop
	} //end method

	public String getName() {
		return fullName;
	}
	
	public String toString() {
	String stringEmpl = fullName + "," + birthDate + "," + ageInYears + "," + phoneNum + "," + availability + "," + idNum; 
	return stringEmpl;
	} //end method

	public ArrayList<String> getSchedule(ArrayList<String> schedule) {
		return schedule;
	}

	public static void main(String[] args) {
		System.out.println("Thanks for using the employee directory!");
	} //end main

} //end class
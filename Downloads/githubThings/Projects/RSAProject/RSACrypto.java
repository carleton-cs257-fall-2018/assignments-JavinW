import java.util.*;
import java.util.Arrays;

//// Random string: NLOCMNNOXB


public class RSACrypto {

    private int numChars;
    private ArrayList<Long> integerList = new ArrayList<Long>();
    
	public Long modExponentiate(Long b, Long e, Long n) {
		if (e == 0) {
			return Long.valueOf(1);
		}
		if (e % 2 == 0) {
			Long x = b^(e/2) % n;
			return (x^2) % n;
		}
		else {
			Long x = b^(e-1) % n;
			return (b*x) % n;
		}
	}

	public int[] extendedEuclid(int n, int m) {
		int[] eEuclidAnswers = new int[3];
		if (m % n == 0) {
			//int y = 1;
			//int x = 0;
			//int r = n;
			eEuclidAnswers[0] = 1;
			eEuclidAnswers[1] = 0;
			eEuclidAnswers[2] = n;		//because that's the gcd
			return eEuclidAnswers;
		} else{
			eEuclidAnswers = extendedEuclid(m%n, n);	//everything gets put in the right places
            int tempFloor = (int) Math.floor(m/n);
            int tempX = eEuclidAnswers[0];
            eEuclidAnswers[0] = eEuclidAnswers[0] - (tempFloor * eEuclidAnswers[1]);//// returning [y - (m/n)x], x, r
            eEuclidAnswers[1] = tempX;
			return eEuclidAnswers;
		}
	}

	public int multiplicativeInverse(int a, int n){
		int[] checkArray = new int[3];
		checkArray = this.extendedEuclid(a, n);
		try {
			if (checkArray[2] == 1) {		//want checkArray[2] because that is the remainder
				a = a%n;
                for (int i = 1; i < n; i++){
                    if((a*i)%n == 1){
                        return i;
                    }
                }
                return 1;	//mutl inverse exists if and only if a and n are relatively prime
			} else {						//2 numbers are relatively prime when their gcd = 1
				throw new Exception();
			}
		} catch (Exception e){
			System.out.println("The multiplicative inverse of " + a + " does not exist");
			return a;
		}
	}

	public ArrayList<Long> stringToIntList(String s, int k) {
		ArrayList<Long> integerList = new ArrayList<Long>();
	 	ArrayList<String> substrings = new ArrayList<String>();
		ArrayList<Integer> intermediateList = new ArrayList<Integer>();
		ArrayList<String> intermList2 = new ArrayList<String>();
		if (k < 127) {
			k = 127;        //lower bound
		} 
        else if (k > 999999){
            k = 999999;
        }
		String kValue = Integer.toString(k);
		for (int m = 0; m < kValue.length(); m++) {
			String intChar = Character.toString(kValue.charAt(m));
			if (!intChar.equals("9")) {
				intChar = "9";
			}
		}
		int kLength = kValue.length();
		numChars = kLength/3; //add kValue check for upper bound
		int remainder = s.length() % numChars;
		if (remainder != 0) {
			for (int j = 0; j < remainder; j++) {
				s += " ";
			}
		}
		int i = 0;
		while (i < s.length()) {
			substrings.add(s.substring(i, Math.min(i + numChars, s.length())));
			i += numChars;
		}		

		for (int n = 0; n < substrings.size(); n++) {
			for (int o = 0; o < numChars; o++) {
				char letter = substrings.get(n).charAt(o);
				int ASCIIValue = (int) letter;	
				intermediateList.add(ASCIIValue);	
			}
		}
		for (int n = 0; n < intermediateList.size(); n++) {
			String intToString = String.valueOf(intermediateList.get(n));
			intermList2.add(intToString);
		}
		//for now only works with adding 2 characters
	
		for (int m = 0; m < intermList2.size()-1; m++) {
			String tempString = "";
			tempString += intermList2.get(m);
			tempString += intermList2.get(m+1);
			m++;
			int intLetter = Integer.valueOf(tempString);
            Long longLetter = Long.valueOf(intLetter);          //(Long) intLetter;
			integerList.add(longLetter);
		}
        this.integerList = integerList;
		return integerList;
	}
	
	public String intListToString(ArrayList<Long> L) {
	    ArrayList<String> intermList = new ArrayList<String>();
	    ArrayList<String> intermList2 = new ArrayList<String>(); 
	    String s = "";
	    for (int i = 0; i < L.size(); i++)
	    {
	        String intToString = String.valueOf(L.get(i));
	        intermList.add(intToString);
	    }
	    for (int j = 0; j < intermList.size(); j++) {
            int i = 0;
            while (i < intermList.get(j).length()) {
                intermList2.add(intermList.get(j).substring(i, Math.min(i + numChars + 2, intermList.get(j).length())));
                i = i + numChars + 2;
            }	
		}
		 for (int k = 0; k < intermList2.size(); k++) {
 		    System.out.println("this is intermList2" + intermList2.get(k));
 		}	
        int tempValue = 0;
        String tempString = "";
        for (int i = 0; i < intermList2.size(); i++){
            tempString = intermList2.get(i);
            tempValue = Integer.valueOf(tempString);
            char ascii = (char) tempValue;
            s += String.valueOf(ascii);
        }
		return s;
	}
	

    public int[][] keygen(int p, int q) {
	    int[] extendedEuclidArray = new int[3];
	    int[][] keyPairs = new int[2][2];
	    int[] publicKey = new int[2];
	    int[] secretKey = new int[2];
        System.out.println("p is " + p);
        System.out.println("q is " + q);
	    int n = p * q;
        System.out.println("n is " + n);
	    publicKey[0] = n;
	    secretKey[0] = n;
	    boolean isRelativelyPrime = false;
	    int e = 3;
	    while (isRelativelyPrime == false){
	        extendedEuclidArray = extendedEuclid(e, ((p-1)*(q-1)));
	        System.out.println("isOne is " + extendedEuclidArray[2]);
	        if (extendedEuclidArray[2] == 1){
	            isRelativelyPrime = true;
	            System.out.println("isRelativelyPrime is " + isRelativelyPrime);
	        }
	        else{
	            e += 2;
	        }
	    }
	    int multInv = multiplicativeInverse(e, n);
        int d = multInv % ((p-1)*(q-1));
        publicKey[1] = e;
	    secretKey[1] = d;
        System.out.println("e = " + e + " d = " + d);
	    keyPairs[0] = publicKey;
	    keyPairs[1] = secretKey;
	    return keyPairs;
	    
	}
	
	public ArrayList<Long> encrypt(String m, int[] publickey) {
	    ArrayList<Long> tempList = new ArrayList<Long>();
        tempList = stringToIntList(m, publickey[0]);
	    ArrayList<Long> encryptedMessage = new ArrayList<Long>();
	    Long tempVal = Long.valueOf(0);
	    for (int i = 0; i < tempList.size(); i++){
	        tempVal = tempList.get(i);
            tempVal = modExponentiate(tempVal, Long.valueOf(publickey[1]), Long.valueOf(publickey[0]));
	        encryptedMessage.add(tempVal);
            System.out.println(tempVal);
	    }
	    return encryptedMessage;
	}
	
	public String decrypt(ArrayList<Long> y, int[] privatekey){
	    Long tempVal = Long.valueOf(0);
	    ArrayList<Long> decryptedInts = new ArrayList<Long>();
	    for (int i = 0; i < y.size(); i++){
	        tempVal = y.get(i);
            tempVal = modExponentiate(tempVal, Long.valueOf(privatekey[1]), Long.valueOf(privatekey[0]));
	        decryptedInts.add(tempVal);
            System.out.println("tempVal is " + tempVal);
	    }
        for (int j = 0; j < integerList.size(); j++) {
            System.out.println(integerList.get(j));
        }
	    String decryptedMessage = intListToString(integerList); ////////////////////////FIX LATER
	    return decryptedMessage;
	}
	
	public static void main(String[] args) {
		RSACrypto callFunctions = new RSACrypto();
// 		int modExpo = callFunctions.modExponentiate(2, 4, 3);
// 		System.out.println(modExpo);
// 		int[] eEArray = new int[3];
//		eEArray = callFunctions.extendedEuclid(48, 1024);
//		for (int i = 0; i < eEArray.length; i++) {
//			System.out.println(eEArray[i]);
//		}
// 		int isMultInv = callFunctions.multiplicativeInverse(17, 42);
// 		System.out.println(isMultInv);
// 		ArrayList<Integer> intList = new ArrayList<Integer>();
// 		String s = "hello there";
// 		intList = callFunctions.stringToIntList(s, 999999);
// 		for (int r = 0; r < intList.size(); r++) {
// 			System.out.println(intList.get(r));
// 		}
// 		String returnedString = callFunctions.intListToString(intList);
// 		System.out.println(returnedString);
//		int[][] keypairs = callFunctions.keygen(13, 17);
        
        Scanner scanner = new Scanner(System.in);
        System.out.println("Please input a k value.");
        int kVal = Integer.parseInt(scanner.nextLine());
        System.out.println("Please input a y value.");
        int yVal = Integer.parseInt(scanner.nextLine());
        System.out.println("Please input a message to encode.");
        String message = scanner.nextLine();
        int[][] keypair = callFunctions.keygen(kVal, yVal);
        System.out.println("publickey is " + keypair[0][0] + "and n is " + keypair[0][1]);
        System.out.println("secretkey is " + keypair[1][0] + "and n is " + keypair[1][1]);
        ArrayList<Long> encryptedMessage = callFunctions.encrypt(message, keypair[0]);
        System.out.println("Encrypted Message:");
        for (int i = 0; i < encryptedMessage.size(); i++){
            System.out.println(encryptedMessage.get(i));
        }
        System.out.println("Decrypted Message:");
        String decryptedMessage = callFunctions.decrypt(encryptedMessage, keypair[1]);
        System.out.println(decryptedMessage);
        
	}
}
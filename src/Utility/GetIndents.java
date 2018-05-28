package Utility;

public class GetIndents {

	public static String getIndents(int n) {
		switch (n) {
			case 0:
				return "";
			case 1:
				return "\t";
			case 2:
				return "\t\t";
			case 3:
				return "\t\t\t";
			case 4:
				return "\t\t\t\t";
			case 5:
				return "\t\t\t\t\t";
			case 6:
				return "\t\t\t\t\t\t";
			default:
				return "\t\t\t\t\t\t\t";
		}
	}

}

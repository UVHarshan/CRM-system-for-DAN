package mobios.dan.api.Common;

import java.util.regex.Pattern;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CaseValidation {


	public static boolean proposedSubjectValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}
	
	public static boolean implementPeriodStartValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean implementPeriodEndValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean implementPeriodMatchValidate(String value1, String value2) {
		if (value1.trim() != "" && value2.trim() != "" ) {
		
			Date startDate = new SimpleDateFormat("yyyy/MM/dd").parse(value1);
			Date endDate = new SimpleDateFormat("yyyy/MM/dd").parse(value2);

			if (endDate.before(startDate)) {
				System.out.println(value1 + value2 + " Flase 2");
				return false;
			}else {
				System.out.println(value1 + value2 + " True 1");
				return true;
			}			
		}
	}

	public static boolean PlaceOfworkValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}
	
	public static boolean assignmentCategoryValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}
	
	public static boolean dispatchCategoryValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}
	
	public static boolean assignmentPeriodValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}


	

}

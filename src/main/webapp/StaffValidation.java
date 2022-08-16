package mobios.dan.api.Common;

import java.util.regex.Pattern;
import java.text.SimpleDateFormat;
import java.util.Date;

public class StaffValidation {
	public static boolean staffNameValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (!Pattern.matches("^([^0-9]*)$", value)
					|| Pattern.matches("[$&+,:;=\\\\?@#|/'<>{}\\[\\].^*()%!-]", value)) {
				System.out.println(value + " Flase 2");
				return false;
			}
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean staffNameKatakanaValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (!Pattern.matches("^([^0-9]*)$", value)
					|| Pattern.matches("[$&+,:;=\\\\?@#|/'<>{}\\[\\].^*()%!-]", value)) {
				System.out.println(value + " Flase 2");
				return false;
			}
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean zipCodeValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (!Pattern.matches("^[0-9]{7}$", value)) {
				System.out.println(value + " Flase 2");
				return false;
			}
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean prefectureValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean addressValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean emailValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (!Pattern.matches("^[a-zA-Z0-9._%+-]+@[A-Za-z0-9.-]+\\.[a-zA-Z]{2,}$", value)) {
				System.out.println(value + " Flase 2");
				return false;
			}
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean dateOfBirthValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			Date inputDate = new SimpleDateFormat("yyyy/MM/dd").parse(value);
			Date today = new Date();

			if (today.before(inputDate)) {
				System.out.println(value + " Flase 2");
				return false;
			}
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean genderValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean staffMobileValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (!Pattern.matches("^[0-9]{10,11}$", value)) {
				System.out.println(value + " Flase 2");
				return false;
			}
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean attributeClassiValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (value == "自社" || value == "外注") {
				System.out.println(value + " True 1");
				return true;
			}
			System.out.println(value + " Flase 2");
			return false;
		}
	}

	public static boolean socialInsuranceValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (value == "手渡" || value == "振込") {
				System.out.println(value + " True 1");
				return true;
			}
			System.out.println(value + " Flase 2");
			return false;
		}
	}

	public static boolean taxPayerClassiValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (value == "甲" || value == "乙" || value == "丙") {
				System.out.println(value + " True 1");
				return true;
			}
			System.out.println(value + " Flase 2");
			return false;
		}
	}

	public static boolean employmentInsuranceValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (value == "手渡" || value == "振込") {
				System.out.println(value + " True 1");
				return true;
			}
			System.out.println(value + " Flase 2");
			return false;
		}
	}

	public static boolean numberDependentsValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (Pattern.matches("^[0-9]+$", value)) {
				System.out.println(value + " True 1");
				return true;
			}
			System.out.println(value + " Flase 2");
			return false;
		}
	}

	public static boolean dependentNameValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (!Pattern.matches("^([^0-9]*)$", value)
					|| Pattern.matches("[$&+,:;=\\\\?@#|/'<>{}\\[\\].^*()%!-]", value)) {
				System.out.println(value + " Flase 2");
				return false;
			}
			System.out.println(value + " True 1");
			return true;
		}
	}

}

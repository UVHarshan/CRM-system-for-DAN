package mobios.dan.api.Common;

import java.util.regex.Pattern;

public class CompanyValidation {
	public static boolean companyNameValidate(String value) {
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

	public static boolean organizationNameValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean organizationEmailValidate(String value) {
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

	public static boolean organizationMobileValidate(String value) {
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

	public static boolean organizationAddressValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			System.out.println(value + " True 1");
			return true;
		}
	}

	public static boolean organizationURLValidate(String value) {
		if (value.trim() == "") {
			System.out.println(value + " Flase 1");
			return false;
		} else {
			if (!Pattern.matches("^(https?|ftp|file)://[-a-zA-Z0-9+&@#/%?=~_|!:,.;]*[-a-zA-Z0-9+&@#/%=~_|]$", value)) {
				System.out.println(value + " Flase 2");
				return false;
			}
			System.out.println(value + " True 1");
			return true;
		}
	}

}

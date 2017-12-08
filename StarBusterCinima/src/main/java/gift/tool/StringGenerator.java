package gift.tool;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;

public class StringGenerator {

	public static void main(String[] args) {
		//System.out.println(getRandomString(35, true, false));
	}

	public static java.sql.Timestamp getCurrentTime() {
		Calendar calendar = Calendar.getInstance();
		java.sql.Timestamp currentTime = new java.sql.Timestamp(calendar.getTime().getTime());
		return currentTime;
	}

	public static String getRandomString(int digit, boolean numberContained, boolean zeroContained) {
		if (digit > 35) {
			return null;
		}
		List<String> charList = new ArrayList<String>();
		for (int i = 97; i <= 122; i++) {
			String strAscii = Character.toString((char) i);
			charList.add(i - 97, strAscii);
		}
		int numStart = 48;
		if (!zeroContained) {
			numStart = 49;
		}
		for (int i = numStart; i <= 57; i++) {
			String strNumAscii = Character.toString((char) i);
			charList.add(i - numStart, strNumAscii);
		}
		Collections.shuffle(charList);
		String result = "";
		for (int i = 0; i < digit; i++) {
			result = result + charList.get(i);
		}
		if (numberContained) {
			StringBuilder sb = new StringBuilder(result);
			result = sb.toString();
		}
		return result;
	}
}

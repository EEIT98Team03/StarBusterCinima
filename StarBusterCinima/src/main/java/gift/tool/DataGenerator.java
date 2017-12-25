package gift.tool;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import java.util.Set;
import java.util.TreeSet;

public class DataGenerator {

	private static String timeFormat = "yyyy/MM/dd HH:mm:ss EEE";

	public static String getTimeFormat() {
		return timeFormat;
	}

	public static Set<String> getCommonValues(Set<String> set1, Set<String> set2, Set<String> set3) {
		Set<String> setTemp = new TreeSet<String>();
		for (Iterator<String> iterator = set1.iterator(); iterator.hasNext();) {
			String value = (String) iterator.next();
			if (set2.contains(value)) {
				setTemp.add(value);
			}
		}
		Set<String> setResult = new TreeSet<String>();
		for (Iterator<String> iterator = setTemp.iterator(); iterator.hasNext();) {
			String value = (String) iterator.next();
			if (set3.contains(value)) {
				setResult.add(value);
			}
		}
		return setResult;
	}

	public static void setTimeFormat(String timeFormat) {
		DataGenerator.timeFormat = timeFormat;
	}

	public static int getRandomNumber(int minNum, int maxNum) {
		Random rn = new Random();
		return rn.nextInt(maxNum - minNum + 1) + minNum;
	}

	public static String getFormattedTime(java.util.Date now) {
		SimpleDateFormat df = new SimpleDateFormat(timeFormat);
		return df.format(now);
	}

	public static java.util.Date getCurrentTime() {
		Calendar calendar = Calendar.getInstance();
		return calendar.getTime();
	}

	public static java.util.Date getCurrentTime(int daysShift) {
		Calendar calendar = Calendar.getInstance();
		calendar.add(Calendar.DAY_OF_MONTH, daysShift);
		return calendar.getTime();
	}

	public static java.sql.Timestamp getCurrentTimeSQL() {
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

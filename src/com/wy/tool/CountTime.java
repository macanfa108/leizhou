package com.wy.tool;
import java.util.Date;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
public class CountTime {
	public String currentlyTime() {
		Date date = new Date();
		//DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.FULL);
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		return dateFormat.format(date);
	}
}

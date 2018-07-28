package com.internousdev.soliloquies.util;

import java.sql.Date;
import java.text.SimpleDateFormat;

public class DateUtil {

	public static String format(Date date, String pattern){
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern);
		return simpleDateFormat.format(date);
	}

}

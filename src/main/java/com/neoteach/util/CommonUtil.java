package com.neoteach.util;

import java.util.Random;

import org.springframework.stereotype.Component;

@Component
public  class CommonUtil {

	public static  String generateRandomNum()
	{
		String format = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
        StringBuilder stringBuilder = new StringBuilder();
        Random rnd = new Random();
        while (stringBuilder.length() < 5) { // length of the random string.
            int index = (int) (rnd.nextFloat() * format.length());
            stringBuilder.append(format.charAt(index));
        }
        return  stringBuilder.toString();
	}
}

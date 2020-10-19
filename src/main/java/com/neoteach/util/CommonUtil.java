package com.neoteach.util;

import java.util.Random;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Hex;
import org.springframework.stereotype.Component;

import com.razorpay.RazorpayException;

@Component
public class CommonUtil {

	public static String generateRandomNum() {
		String format = "ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		StringBuilder stringBuilder = new StringBuilder();
		Random rnd = new Random();
		while (stringBuilder.length() < 5) { // length of the random string.
			int index = (int) (rnd.nextFloat() * format.length());
			stringBuilder.append(format.charAt(index));
		}
		return stringBuilder.toString();
	}

	public static String generateSignature(String payload, String secret) throws RazorpayException {
		Mac sha256_HMAC;
		try {
			sha256_HMAC = Mac.getInstance("HmacSHA256");
			SecretKeySpec secret_key = new SecretKeySpec(secret.getBytes("UTF-8"), "HmacSHA256");
			sha256_HMAC.init(secret_key);
			byte[] hash = sha256_HMAC.doFinal(payload.getBytes());
			return new String(Hex.encodeHex(hash));
		} catch (Exception e) {
			throw new RazorpayException(e.getMessage());
		}
	}
}

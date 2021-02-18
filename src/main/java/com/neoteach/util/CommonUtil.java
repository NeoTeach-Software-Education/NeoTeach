package com.neoteach.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Random;
import java.util.zip.DataFormatException;
import java.util.zip.Deflater;
import java.util.zip.Inflater;

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
	// compress the image bytes before storing it in the database
	    public byte[] compressBytes(byte[] data) {
	        Deflater deflater = new Deflater();
	        deflater.setInput(data);
	        deflater.finish();
	        ByteArrayOutputStream outputStream = new ByteArrayOutputStream(data.length);
	        byte[] buffer = new byte[1024];
	        while (!deflater.finished()) {
	            int count = deflater.deflate(buffer);
	            outputStream.write(buffer, 0, count);
	        }
	        try {
	            outputStream.close();
	        } catch (IOException e) {
	        }
	        System.out.println("Compressed Image Byte Size - " + outputStream.toByteArray().length);
	        return outputStream.toByteArray();
	    }
	    // uncompress the image bytes before returning it to the angular application
	    public byte[] decompressBytes(byte[] data) {
	        Inflater inflater = new Inflater();
	        inflater.setInput(data);
	        ByteArrayOutputStream outputStream = new ByteArrayOutputStream(data.length);
	        byte[] buffer = new byte[1024];
	        try {
	            while (!inflater.finished()) {
	                int count = inflater.inflate(buffer);
	                outputStream.write(buffer, 0, count);
	            }
	            outputStream.close();
	        } catch (IOException ioe) {
	        } catch (DataFormatException e) {
	        }
	        return outputStream.toByteArray();
	    }
}

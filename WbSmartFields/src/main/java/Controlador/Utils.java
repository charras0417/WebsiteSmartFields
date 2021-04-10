package Controlador;

import java.io.BufferedReader;

import javax.servlet.http.HttpServletRequest;

import com.google.gson.ExclusionStrategy;
import com.google.gson.FieldAttributes;
import com.google.gson.GsonBuilder;

public class Utils {

	public static String readParams(HttpServletRequest request) {
		StringBuffer jb = new StringBuffer();
		String line = null;
		try {
			request.setCharacterEncoding("UTF-8");
			BufferedReader reader = request.getReader();
			while ((line = reader.readLine()) != null) {
				jb.append(line);
			}
		} catch (Exception e) {
			/* report an error */ }

		line = jb.toString();
		return line;
	}

	/** FUNCIONES JSON*/
	public static final String DATE_FORMAT="yyyy-MM-dd HH:mm:ss";
	
	public static GsonBuilder builder = null;

	public static String toJson(Object obj) {

		builder = new GsonBuilder();
		builder.setExclusionStrategies(new TestExclStrat());
		return builder.setDateFormat(DATE_FORMAT).create().toJson(obj);
	}

		

	public static <T> Object fromJson(String json, Class<T> obj) {

		builder = new GsonBuilder();
		builder.setExclusionStrategies(new TestExclStrat());

		return builder.create().fromJson(json, obj);
	}
	
	

	@Deprecated
	public static class TestExclStrat implements ExclusionStrategy {

		public boolean shouldSkipClass(Class<?> arg0) {
			return false;
		}

		public boolean shouldSkipField(FieldAttributes f) {

			return false;

		}

	}

	
}

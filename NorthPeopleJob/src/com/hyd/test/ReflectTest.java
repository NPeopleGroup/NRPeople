package com.hyd.test;

import java.lang.reflect.Field;

import org.apache.log4j.Logger;

public class ReflectTest {
	private String code;
	private String name;
	private String test;
	private int hello;

	public void setCode(String code) {
		this.code = code;
	}

	public String getCode() {
		return this.code;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getName() {
		return this.name;
	}

	public static void main(String[] args) throws SecurityException,
			ClassNotFoundException, IllegalArgumentException,
			IllegalAccessException {
		ReflectTest obj = new ReflectTest();
		obj.setName("name value");
		obj.setCode("code value");
		Field[] fds = Class.forName("com.hyd.test.ReflectTest")
				.getDeclaredFields();

		System.out.println(fds.length);
		for (int i = 0; i < fds.length; i++) {
			System.out.println(fds[i].getName());
			System.out.println(fds[i].get(obj));

		}
		Logger myLogger=Logger.getLogger("com.hyd.test.ReflectTest");
		myLogger.error("error!");
		System.out.println(System.getProperty("catalina.home"));
	}

	public String getTest() {
		return test;
	}

	public void setTest(String test) {
		this.test = test;
	}

	public int getHello() {
		return hello;
	}

	public void setHello(int hello) {
		this.hello = hello;
	}
}

package com.mini.DbTest;

import static org.junit.Assert.*;

import org.junit.Assert;
import org.mockito.Mockito;

import org.junit.Test;

import com.mini.Db.MyDB;

public class MyDBTest {
	
	MyDB mydb;

	@Test
	public void validateadminTest() {
		
		boolean sample=mydb.validateadmin("abcd@123","abcd@123");
		Assert.assertEquals(true, sample);
	}
	
	@Test
	public void validatecustomerTest() {
		
		boolean sample=mydb.validatecustomer("cust@gmail.com","Abcd@1234");
		Assert.assertEquals(true, sample);
	}

	@Test
	public void validatevendor() {
		
		boolean sample=mydb.validatevendor("v123","Vendor@123");
		Assert.assertEquals(true, sample);
	}
}

package com.mini.DbTest;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Assert;
import org.junit.Test;

import com.mini.Db.DbConnection;

public class DbConnectionTest {

	DbConnection db;
	@Test
	public void getconnectionTest() throws ClassNotFoundException, SQLException {
		Connection con=null;
		con=db.getconnection();
		boolean sample = false;
		if(con!=null) {
			sample=true;
		}
		Assert.assertEquals(true, sample);
	}

}

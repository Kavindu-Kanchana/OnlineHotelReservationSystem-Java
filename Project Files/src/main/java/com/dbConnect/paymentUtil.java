package com.dbConnect;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.javaClasses.promotion;

public class paymentUtil {
	
		
		private static boolean isSuccess;
		private static Connection con = null;
		private static Statement stmt = null;
		private static ResultSet rs = null;
		
		//getting package price
		public static float getPPrice(String pkgID){
			
			float packPrice = 0.0f;
			
			try {
				 con = dbConnect.getConnection();
				 stmt = con.createStatement();
				 String sql = "select price from packages where id = '"+pkgID+"'";
				 rs = stmt.executeQuery(sql);
				 
				 while(rs.next()) {
					  packPrice = rs.getFloat(1);
				 }
				 
				 con.close();
				 
			 }catch(Exception e) {
				 e.printStackTrace();
			 }
			
			return packPrice;
		}
		
		//calculating price with stay length
		public static float getPrice(float pkgPrice, int stayLength){
			
			float price = 0.0f;
			
			price =  (pkgPrice  * stayLength);
			
			return price;
		}
		
		//getting discount from promotion table
		public static int getDiscount(String promoCode){
			
			int amount = 0;
			
			try {
				 con = dbConnect.getConnection();
				 stmt = con.createStatement();
				 String sql = "select amount from promotion where promoCode = '"+promoCode+"'";
				 rs = stmt.executeQuery(sql);
				 
				 while(rs.next()) {
					  amount = Integer.parseInt(rs.getString(1));
				 }
				 
				 con.close();
			 }catch(Exception e) {
				 e.printStackTrace();
			 }
			
			return amount;
		}
		
		//calculating total price
		public static float getTotal(float price, int discount){
			float total = 0.0f;
			
			if(discount > 0 ) {
				total = price * (discount/100.0f);
				
			}else {
				total = price;
				
			}
			return total;	
		}
		
		//validating promotion code
		public static boolean validatePromo(String promoCode) {
	      
	        boolean result = false;

	        try {
	        	con = dbConnect.getConnection();
	        	stmt = con.createStatement();
	        	String sql = "select * from promotion where promoCode = '"+promoCode+"'";
	           rs = stmt.executeQuery(sql);

	            if (rs.next()) {
	                result = true;
	            } else {
	                result = false;
	            }
	            con.close();
	        } catch (Exception e) {
	            e.printStackTrace();
	        }

	        return result;
	    }
		
		//inserting payment details to database
		 public static boolean insertPayment(int cardNumber, String cardName,int cvv, float amount ) {
			 
			 boolean isSuccess = false;
			 
			 try {
				 con = dbConnect.getConnection();
				 stmt = con.createStatement();
				 String sql = "insert into payment (cardNumber,cardName,cvv,amount) values('"+cardNumber+"','"+cardName+"','"+cvv+"','"+amount+"')";
				 int rs = stmt.executeUpdate(sql);
				 
				 if(rs > 0) {
					 isSuccess = true;
				 }else {
					 isSuccess = false;
				 }
				 con.close();
				 
			 }catch(Exception e) {
				 e.printStackTrace();
			 }
			 
			 return isSuccess;
		 }
}

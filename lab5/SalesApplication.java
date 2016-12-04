import java.sql.*;
import java.util.*;

/**
 * The class implements methods of the Sales database
 * interface.
 *
 * All methods of the class receive a Connection object through which all
 * communication to the database should be performed. Note: the
 * Connection object should not be closed by any method.
 *
 * Also, no method should throw any exceptions. In particular, in case
 * that an error occurs in the database, then the method should print an
 * error message and call System.exit(-1);
 */
public class SalesApplication {

    private Connection connection;
    
    /*
     * Constructor
     */
    public SalesApplication(Connection connection) {
        this.connection = connection;
    }
    
    public Connection getConnection()
    {
        return connection;
    }
    
     /**
     * Return list of product names for products whose total sales 
     * i.e. , the total price of the sale of the product across all sales
     * is greater than some specified amount
     * 
     */

	public List<String> getProductNamesWithTotalPriceLargerThan(double amount){
	try{
		List<String> result = new ArrayList<String>();
		Statement stat1	= connection.createStatement();
		ResultSet Menu = stat1.executeQuery("select products.name,sum(sales.quantity*sales.unit_price) from products inner join sales on sales.product_id = products.product_id group by products.name order by sum(sales.quantity*sales.unit_price) DESC;");
		while ( Menu.next() ) {
			if (Menu.getFloat(2) > amount)
				result.add(Menu.getString(1));
			else
				break;	
		}
		return result;
	}
	catch(Exception e){
		return null;
	}  
}

    /**
     * Add a product to the database. If the product’s name and manufacturer
     * already exists in the database, return the product’s id. Otherwise,
     * add the product to the database, and return the new product id.
     * When a new product is added to the database, its category should be NULL.
     *
     * Adding a product and a manufacturer should be done
     * within a transaction. The isolation level should be Serializable.
     *
     * You will lose credit if this is not done in a transaction; you will get extra
     * credit if you do this in a stored procedure.
     */
    public int addProduct(String name, String manufacturer){
        int productId = 0;
        // your code here        
        try{
        	connection.setAutoCommit(false);
        	connection.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
        	CallableStatement stmt = connection.prepareCall("{? = call getProductID(?,?)}");
        	stmt.registerOutParameter(1, Types.INTEGER);
        	stmt.setString(2,name);
        	stmt.setString(3,manufacturer);
        	stmt.execute();        	
        	productId = stmt.getInt(1);
        	connection.commit();
        	return productId;
        }
        catch(Exception e){
        	try{
	        	connection.rollback();
	        	return -1;
	        }
	        catch(Exception p){return -1;} 	
		
	}
    }

};

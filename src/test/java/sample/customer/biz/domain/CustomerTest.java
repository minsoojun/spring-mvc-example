package sample.customer.biz.domain;

import org.junit.Test;
import static org.junit.Assert.*;

import java.util.Date;


public class CustomerTest {

    @Test
    public void testCustmer(){
        Customer cus = new Customer("TestMe", "minsoo@ng.com", new Date(System.currentTimeMillis()), 3);
        assertTrue(cus.isNgEmail());
        assertEquals("Testme",cus.getName());
        assertEquals("FavoriteNumber", new Integer(3), cus.getFavoriteNumber());
    }
}

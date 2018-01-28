package sample.customer.biz.domain;

import org.junit.Ignore;
import org.junit.Test;
import static org.junit.Assert.*;
import org.junit.runner.RunWith;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.MockMvc;

import java.util.Date;

import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.forwardedUrl;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.model;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.view;

/**
 *
 */
public class CustomerTests {

    @Test
    public void testCustmer(){
        Customer cus = new Customer("TestMe", "minsoo@ng.foo.baz", new Date(System.currentTimeMillis()), 3);
        assertTrue(cus.isNgEmail());
        assertEquals("minsoo@ng.foo.baz",cus.getEmailAddress());
        assertEquals("FavoriteNumber", new Integer(3), cus.getFavoriteNumber());
    }
}

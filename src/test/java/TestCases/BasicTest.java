/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package TestCases;

import com.mycompany.demo.Login.Calculator;
import org.junit.Test;
import static org.testng.Assert.*;


/**
 *
 * @author Utkarsh
 */
public class BasicTest {
    
    public BasicTest() {   
    }
    
      Calculator calculator = new Calculator();
         @Test
    public void shouldAddTwoNumbers() {
        assertEquals(3,calculator.add(2,3));
    }
    
   

    @Test
    public void shouldMultiplyTwoNumbers() {
      assertEquals(6,calculator.multiply(2,3));
    }

}
   


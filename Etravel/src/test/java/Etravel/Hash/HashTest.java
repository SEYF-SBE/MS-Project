/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Etravel.Hash;

import org.junit.AfterClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author chris
 */
public class HashTest {
    
    public HashTest() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }

    @Test
    public void testSomeMethod() throws Exception {
        // TODO review the generated test code and remove the default call to fail.
        String test= Hash.getSaltedHash("UND123");
        
        System.out.println("------------------------------------");
        System.out.println("Hash code \n");
        System.out.println(test +"\n");
        assertEquals(true,Hash.check("UND123", "P1Rlnnlc9wJZXmieTCsZwFs0ppnQpOXjLPIuju0BaFE=$WuRG4kAGPpkR2XxRMH4Dz7T39iHttGzCrDIMaEMYvhA="));
    }
    
}

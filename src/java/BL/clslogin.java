/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BL;

/**
 *
 * @author Carlos Enrique P P
 */
public class clslogin {

    public boolean validarlogin(Models.clslogin obclslogin) {
        try{

            return obclslogin.getStEmail().equals("carlosenpp24@gmail.com") &&  
                    
                    obclslogin.getStPassword().equals("12345678");
                       
            
        }catch(Exception ex){
         throw ex;
        }

    }
}

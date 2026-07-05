/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tampilan;

/**
 *
 * @author user
 */
public class userid {
    private static String kd="";

    public static void setUserLogin(String id) {
        kd = id;
    }

    public static String getUserLogin() {
        return kd;
    }
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.camp.servlet;

import java.io.Serializable;
import java.util.Date;

/**
 *
 * @author keiga
 */
public class ResultData implements Serializable {
    private Date d;
    private String luck; 
    
    public ResultData () {}
    
    /**
     * @return the d
     */
    public Date getD() {
        return d;
    }
    
    /**
     * @param d the to set
     */
    
    public void setD(Date d) {
        this.d = d;
    }
    
    /**
     * @return d the luck
     */
    public String getLuck() {
        return luck;
    }
    
    /**
     * @param luck the to set
     */
    public void setLuck(String luck) {
        this.luck = luck;
    }
}

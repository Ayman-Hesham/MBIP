package entity;

import java.util.ArrayList;
import java.util.List;

public class Month {
    private int monthNumber;
    private water w;
    private Electricity elec;
    private recycle r;
    private List<water> waterList;
    private List<Electricity> electricityList;
    private List<recycle> recycleList;

    public Month() {
        w = new water();
        elec=new Electricity();
        r = new recycle();
        
    }

    public Month(int monthNumber) {
        this.monthNumber = monthNumber;
        waterList = new ArrayList<water>();
        electricityList = new ArrayList<Electricity>();
        recycleList = new ArrayList<recycle>();
    }

    public int getMonthNumber() {
        return monthNumber;
    }

    public void setMonthNumber(int monthNumber) {
        this.monthNumber = monthNumber;
    }

    public double getWaterConsumption() {
        return w.getWCC();
    }
    public double getWater()
    {
    	return w.getAmount();
    }
    public void setWaterList(List<water> waterList)
    {
    	this.waterList=waterList;
    }
    public void setElectricityList(List<Electricity> electricityList)
    {
    	this.electricityList=electricityList;
    }
    public void setRecycleList(List<recycle> recycleList)
    {
    	this.recycleList=recycleList;
    }
    
    public double getElectricity()
    {
    	return elec.getAmount();
    }
    public double getRecycle()
    {
    	return r.getAmount();
    }
    public double getElectricityConsumption() {
        return elec.getECC();
    }

    public void addWater(double amount) {
    	w.setAmount(amount);
       
    }
    public void addElectricity(double amount) {
    	elec.setAmount(amount);;
    }
    public double getRecycleConsumption() {
        return r.getRCC();
    }

    public void addRecycle(double amount) {
    	r.setAmount(amount);
    }
    
}
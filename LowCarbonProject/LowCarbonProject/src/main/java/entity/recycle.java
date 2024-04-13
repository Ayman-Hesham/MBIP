package entity;

public class recycle {
	private String userFullName;
	private int monthNumber;
    private double rAmount;
    private double rCC;

    public recycle() {
    }
    
    public String getUserFullName() {
 		return userFullName;
 	}

 	public void setUserFullName(String userFullName) {
 		this.userFullName = userFullName;
 	}

	public int getMonthNumber() {
		return monthNumber;
	}

	public void setMonthNumber(int monthNumber) {
		this.monthNumber = monthNumber;
	}

	public double getrCC() {
		return rCC;
	}

	public void setrCC(double rCC) {
		this.rCC = rCC;
	}

	public recycle(double amount) {
        this.rAmount = amount;
        this.rCC = amount * 2.860;
    }

    public double getAmount() {
        return rAmount;
    }

    public void setAmount(double amount) {
        this.rAmount = amount;
        this.rCC = amount * 2.860;
    }
    public double getRAmount() {
        return rAmount;
    }

    public void setRAmount(double rAmount) {
        this.rAmount = rAmount;
       
    }
    public double getRCC() {
        return rCC;
    }
}

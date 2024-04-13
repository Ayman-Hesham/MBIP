package entity;

public class water {
	private String userFullName;
	private int monthNumber;
    private double wAmount;
    private double wCC;

    public water() {
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

	public double getwCC() {
		return wCC;
	}

	public void setwCC(double wCC) {
		this.wCC = wCC;
	}

	public water(double wAmount) {
        this.wAmount = wAmount;
        this.wCC = wAmount * 0.419;
    }

    public double getAmount() {
        return wAmount;
    }

    public void setAmount(double wAmount) {
        this.wAmount = wAmount;
        this.wCC = wAmount * 0.419;
    }
    public double getWAmount() {
        return wAmount;
    }

    public void setWAmount(double wAmount) {
        this.wAmount = wAmount;
        
    }
   
    public double getWCC() {
        return wCC;
    }
}

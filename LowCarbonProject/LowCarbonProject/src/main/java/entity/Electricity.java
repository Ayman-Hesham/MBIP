package entity;

public class Electricity {
	private String userFullName;
	private int monthNumber;
	private double eAmount;
	private double eCC;
	 public Electricity() {
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

	public double geteCC() {
		return eCC;
	}

	public void seteCC(double eCC) {
		this.eCC = eCC;
	}

	public Electricity(double amount) {
		super();
		this.eAmount = amount;
		this.eCC = amount * 0.584;
	}
	public  double getAmount() {
		return eAmount;
	}
	public void setAmount(double eAmount) {
		this.eAmount = eAmount;
		this.eCC = eAmount * 0.584;
	}
	public  double getEAmount() {
		return eAmount;
	}
	public void setEAmount(double eAmount) {
		this.eAmount = eAmount;
		
	}
	public double getECC()
	{
		return eCC;
	}
	 
}

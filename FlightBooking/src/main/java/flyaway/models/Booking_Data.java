package flyaway.models;

public class Booking_Data
{
	
	private String From, To, Date ;

	public Booking_Data(String from, String to, String date) {
		super();
		From = from;
		To = to;
		Date = date;
	}

	public String getFrom() {
		return From;
	}

	public void setFrom(String from) {
		From = from;
	}

	public String getTo() {
		return To;
	}

	public void setTo(String to) {
		To = to;
	}

	public String getDate() {
		return Date;
	}

	public void setDate(String date) {
		Date = date;
	}
	
}
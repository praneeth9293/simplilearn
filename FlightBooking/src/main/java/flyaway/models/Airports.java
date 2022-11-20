package flyaway.models;

public class Airports {
	
	    public int airport_id;
	    public String airport_name;
	 
	    public Airports(int airport_id, String airport_name) 
	    {
	        super();
	        this.airport_id = airport_id;
	        this.airport_name = airport_name;
	    }
	 
	    public int getairportId() {
	        return airport_id;
	    }
	 
	    public void setairportId(int airport_id) {
	        this.airport_id = airport_id;
	    }
	 
	    public String getairportName() {
	        return airport_name;
	    }
	 
	    public void setairportName(String airport_name) {
	        this.airport_name = airport_name;
	    }
	}


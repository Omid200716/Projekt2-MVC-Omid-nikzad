package Bean;

public class Login {
	
private String name;
private String password;
private String addText;
//private String name2;
//private String password2;




	public String getAddText() {
	return addText;
}

public void setAddText(String addText) {
	this.addText = addText;
}

	public String getName() {

		return name;
	}
	
	public void setName(String name) {
		this.name=name;
	}
	
	
	public String getPassword() {
		return password;
	}
	
	
	public void setPassword(String password) {
		this.password=password;
	}
	
	public boolean validate() {
		if (name.equals("omar")&& password.equals("12345") || name.equals("omid") && password.equals("12345") ) {
			return true;
		}else {
			return false;
		}
	}
}



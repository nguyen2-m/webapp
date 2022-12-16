package javaMode;

public class DTO {

	private String classname;
	private String userId;
	private String name;



	public String getClassname() {
		return classname;
	}
	public void setClassname(String classname) {
		this.classname = classname;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}




	public DTO() {
		super();
	}


	public DTO(String classname, String userId, String name) {
		super();
		this.classname = classname;
		this.userId = userId;
		this.name = name;
	}


	@Override
	public String toString() {
		return "DTO [classname=" + classname + ", userId=" + userId + ", name=" + name + "]";
	}







}

package com.sola.model;

public class SystemUser
{


    
	public String getUuid() {
		return uuid;
	}
	public void setUuid(String uuid) {
		this.uuid = uuid;
	}
	
	public String getGuid() {
		return guid;
	}
	public void setGuid(String guid) {
		this.guid = guid;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNameKatakana() {
		return nameKatakana;
	}
	public void setNameKatakana(String nameKatakana) {
		this.nameKatakana = nameKatakana;
	}
	public String getProfilePicturePath() {
		return profilePicturePath;
	}
	public void setProfilePicturePath(String profilePicturePath) {
		this.profilePicturePath = profilePicturePath;
	}
	public Long getUserRoleId() {
		return userRoleId;
	}
	public void setUserRoleId(Long userRoleId) {
		this.userRoleId = userRoleId;
	}
	public Long getStatus() {
		return status;
	}
	public void setStatus(Long status) {
		this.status = status;
	}
    
    public SystemUser() 
    {}
    
	public SystemUser(String uuid, String guid, String name, String nameKatakana, String profilePicturePath,
			Long userRoleId, Long status) {
		super();
		this.uuid = uuid;
		this.guid = guid;
		this.name = name;
		this.nameKatakana = nameKatakana;
		this.profilePicturePath = profilePicturePath;
		this.userRoleId = userRoleId;
		this.status = status;
	}


	private Long id;
	private String uuid;
	private String guid;
	private Long userRegId;
	private String email;
	private String password;
	private String confirmPassword;
	private String nameInitials;
	private String name;
	private String nameKatakana;
	private String profilePicturePath;
	private String dOB;
	private Long age;
	private Long gender;
	private String telMobile;
	private String telHome;
	private String fax;
	private Long userRoleId;
	private String userCreated;
	private String dateCreated;
	private String userModified;
	private String dateModified;
	private String uuidModified;
	private Long status;
	private Long isDeleted;
	private Long failedAttempt;
	private Long passwordResetCount;
	private String resetPasswordToken;
	private String lastLoggedDate;
	private String lastLoggedIP;

}
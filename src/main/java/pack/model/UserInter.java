package pack.model;

import pack.controller.UserBean;

public interface UserInter {
    UserDto login(UserBean bean);
    
    UserDto mypage(UserBean bean);
     
    boolean saveMember(UserBean bean);
     
    boolean deleteMember(UserBean bean);
	
	UserDto selectUserOne(String user_id);
	
	public int checkId(String user_id);
	
	boolean insertMember(UserBean bean);
	
	
}

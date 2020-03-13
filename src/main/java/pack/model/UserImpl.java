package pack.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import pack.controller.UserBean;

@Repository
public class UserImpl implements UserInter {

	@Autowired
	UserAnnoInter userAnnoInter;

	// 로그인 기능
    public UserDto login(UserBean bean) {
        return userAnnoInter.login(bean);
 
    }
     
    @Override
    public UserDto mypage(UserBean bean) {
        return userAnnoInter.mypage(bean);
    }
     
    @Override
    public boolean saveMember(UserBean bean) {
        return userAnnoInter.saveMember(bean);
    }
     
    @Override
    public boolean deleteMember(UserBean bean) {
        return userAnnoInter.deleteMember(bean);
    }

	// 마이페이지에 유저 정보를 반환하는 메서드
	@Override
	public UserDto selectUserOne(String user_id) {
		return userAnnoInter.selectUserOne(user_id);
	}
	
	@Override
	public int checkId(String user_id) {
		return userAnnoInter.checkId(user_id);
	}
	
	@Override
	public boolean insertMember(UserBean bean) {
        return userAnnoInter.insertMember(bean);

	}
}

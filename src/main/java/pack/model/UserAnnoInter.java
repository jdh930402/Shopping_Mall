package pack.model;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pack.controller.UserBean;

public interface UserAnnoInter {
	@Select("select * from user where user_id = #{user_id} and user_pwd = password(#{user_pwd})")
	public UserDto login(UserBean bean);

	@Select("select user_id, user_name, user_email, user_zipcode, user_loc, user_loc_detail, user_tel, user_utilizer from user where user_id = #{user_id}")
	public UserDto mypage(UserBean bean);

	@Update("update user set user_name=#{user_name}, user_email=#{user_email}, user_zipcode=#{user_zipcode}, user_loc=#{user_loc}, user_loc_detail=#{user_loc_detail}, user_tel=#{user_tel}, user_utilizer=#{user_utilizer} where user_id = #{user_id}")
	public boolean saveMember(UserBean bean);

	@Delete("delete from user where user_id = #{user_id} and user_pwd = password(#{user_pwd})")
	public boolean deleteMember(UserBean bean);
	
	@Select("select user_name, user_email, user_zipcode, user_loc, user_loc_detail, user_tel, user_utilizer from user where user_id = #{user_id}")
	public UserDto selectUserOne(String user_id);
	
	@Select("select count(*) from user where user_id = #{user_id}")
	public int checkId(String user_id);
	
    @Insert("insert into user values(#{user_id}, password(#{user_pwd}), #{user_name}, #{user_email}, #{user_zipcode}, #{user_loc}, #{user_loc_detail}, #{user_tel}, #{user_utilizer}, now())")
    public boolean insertMember(UserBean bean);
}

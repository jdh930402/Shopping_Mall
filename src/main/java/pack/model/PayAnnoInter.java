package pack.model;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import pack.controller.PayBean;

public interface PayAnnoInter {
	// 
	@Insert("insert into pay(order_num, user_id, prd_num, pay_name, pay_tel, pay_zipcode, pay_loc, pay_loc_detail, pay_price, pay_quantity, pay_regdate, pay_memo, pay_deli) values(#{order_num}, #{user_id}, #{prd_num}, #{pay_name} ,#{pay_tel}, #{pay_zipcode}, #{pay_loc}, #{pay_loc_detail}, #{pay_price}, #{pay_quantity}, now(), #{pay_memo}, 1)")
	public int insertPay(PayBean bean);

	@Select("select pay_no, order_num, user_id, pay.prd_num as prd_no, pay_name, pay_tel, pay_zipcode, pay_loc, pay_loc_detail, pay_price, pay_quantity, pay_regdate, pay_memo, pay_deli, prd_name, product.prd_num as prd_num, prd_msr ,prd_quantity, prd_price, img_header ,img_description , img_option from pay,product where pay.prd_num = product.prd_no and user_id = #{user_id} order by pay_regdate desc")
	public ArrayList<PayDto> selectPayAll(String user_id);
	
	@Update("update pay set pay_deli=10 where user_id=#{user_id} and pay_no = #{pay_no}")
	public int updateDeli(PayBean bean);
	
	@Delete("delete from pay where user_id = #{user_id}")
	public int deleteMemberPay(String user_id);
}

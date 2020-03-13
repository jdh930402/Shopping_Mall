package pack.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import pack.model.UserInter;

@Controller
public class RegisterController {
	
	@Autowired
	@Qualifier("userImpl")
	private UserInter userInter;
	
	@RequestMapping(value = "checkId", method = RequestMethod.POST)
	@ResponseBody
	public Map<Object, Object> guestCheckIdProcess(@RequestBody String user_id){
		Map<Object, Object> map = new HashMap<Object, Object>();
		int count = userInter.checkId(user_id);
		map.put("user_id", count);
		return map;
	}
	
    @RequestMapping(value = "insertMember", method = RequestMethod.POST)
    public String postInsertMember(UserBean bean) {
        userInter.insertMember(bean);
        return "redirect:index";
    }
}

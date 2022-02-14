package com.fire.Dao;

import java.util.List;

import com.fire.Pojo.Topic;
import com.fire.Pojo.User;

public interface LoginDaoIn {

	User selectuser(User u);

	List<Topic> selecttopic();

}

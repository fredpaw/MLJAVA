package org.lxh.mvcdemo.dao.factory;
import org.lxh.mvcdemo.dao.*;
import org.lxh.mvcdemo.dao.proxy.*;
public class UserDAOFactory{
	public static IUserDAO getIUserDAOInstance(){
		return new UserDAOProxy();
	}
}
package org.lxh.mvcdemo.dao;
import org.lxh.mvcdemo.vo.User;
public interface IUserDAO{
	//������ɵ��ǵ�¼��֤����ô��¼����ֻ�����ַ��ؽ����
	public boolean findLogin(User user) throws Exception;
}
package com.kingdee.carmanager.test.IDao;

import com.kingdee.carmanager.test.bean.User;
import org.apache.ibatis.annotations.Select;

public interface UserMapper {
    int deleteByPrimaryKey(Integer fid);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer fid);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);


}
package com.dao.impl;

import com.dao.BaseDao;
import com.dao.UserDao;
import com.entity.User;

import java.util.List;

/**
 * @author Lihanqin
 * @Description
 * @date 2020-12-08 16:16
 **/
public class UserDaoImpl extends BaseDao implements UserDao {

    @Override
    public int insert(User user) {
        String sql="insert into user(Title,UserName,Pwd,AddTime,LastTime,LogCount) values(?,?,?,?,?,?)";
        return update(sql,user.getTitle(),user.getUserName(),user.getPwd(),user.getAddTime(),user.getLastTime(),user.getLogCount());
    }

    @Override
    public int delete(int id) {
        String sql="delete from user where id=?";
        return update(sql,id);
    }

    @Override
    public int update(User user) {
        String sql="update user set Title=?,UserName=?,Pwd=?,AddTime=?,LastTime=?,LogCount=? where id=?";
        return update(sql,user.getTitle(),user.getUserName(),user.getPwd(),user.getAddTime(),user.getLastTime(),user.getLogCount(),user.getId());
    }

    @Override
    public List<User> queryAll() {
        String sql="select*from user";
        return queryForList(User.class,sql);
    }

    @Override
    public User queryUserByNameAndPassword(User user) {
        String sql = "select *from user where UserName=? and  Pwd=?";
        return queryForOne(User.class, sql, user.getUserName(), user.getPwd());
    }
}
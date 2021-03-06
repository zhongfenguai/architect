package com.dao.impl;

import com.dao.BaseDao;
import com.dao.CommentDao;
import com.entity.Comment;
import com.entity.Film;
import com.entity.User;

import java.util.List;

/**
 * @author Lihanqin
 * @Description
 * @date 2020-12-09 9:52
 **/
public class CommentDaoImpl extends BaseDao implements CommentDao {
    @Override
    public int insert(Comment comment) {
        String sql="insert into comment (CommentTypeId,MovieId,CommentUser,CommentContent,CommentTime)values(?,?,?,?,?)";
        return update(sql,comment.getCommentTypeId(),comment.getMovieId(),comment.getCommentUser(),comment.getCommentContent(),comment.getCommentTime());
    }

    @Override
    public int delete(int CommentId) {
        String sql="delete from comment where CommentId=? ";
        return update(sql,CommentId);
    }

    @Override
    public int update(Comment comment) {
        String sql="update comment set CommentTypeId=?,MovieId=?,CommentUser=?,CommentContent=?,CommentTime=? where CommentId=?";
        return update(sql,comment.getCommentTypeId(),comment.getMovieId(),comment.getCommentUser(),comment.getCommentContent(),comment.getCommentTime(),comment.getCommentId());
    }

    @Override
    public List<Comment> queryAll() {
        String sql="select film.MovieName,comment.* from comment,film where comment.MovieId=film.MovieId";
        return queryForList(Comment.class,sql);
    }

    @Override
    public  List<Comment> queryCommentByMovieId(Integer movieId) {
        String sql = "select c.* from comment c, film f where f.MovieId = c.MovieId AND f.MovieId = ?";
        return queryForList(Comment.class,sql,movieId);
    }




    @Override
    public Comment query(int id) {
        String sql="select * from comment where id=?";
        return queryForOne(Comment.class,sql,id);
    }



    @Override
    public Integer queryCounts() {
        String sql="select count(1) from film,comment where comment.MovieId=film.MovieId";
        return Math.toIntExact((long)queryForSingleValue(sql));
    }

    @Override
    public List<Comment> queryUserBypage(int begin, int pageSize) {
        String sql="select film.MovieName,comment.* from film,comment where comment.MovieId=film.MovieId limit ?,?";
        return queryForList(Comment.class,sql,begin,pageSize);
    }

    @Override
    public List<Comment> queryUserByKeywordForPage(Film film, int begin, int pageSize) {
        String sql = "select film.MovieName,comment.* from comment,film where comment.MovieId=film.MovieId AND  film.MovieName like concat(\'%\', ?,\'%\') limit ?,?";
        return queryForList(Comment.class, sql, film.getMovieName(),begin,pageSize);
    }

    @Override
    public List<Comment> commentList(Film film) {
        String sql="select film.MovieName,comment.* from comment,film where comment.MovieId=film.MovieId AND  film.MovieName like concat(\'%\', ?,\'%\')";
        return  queryForList(Comment.class, sql, film.getMovieName());
    }


}

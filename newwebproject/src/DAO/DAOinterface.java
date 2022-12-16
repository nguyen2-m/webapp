package DAO;


import java.util.ArrayList;
import java.util.List;

public interface DAOinterface<T> {

	public int insert(T t);

	public int update(T t);

	public int delete(T t);

	public List<T> selectAll();

	public T selectById(T t);

	public ArrayList<T> setectByCindition(String condition);



}

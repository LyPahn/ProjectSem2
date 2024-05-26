package com.bkap.services;

import java.util.List;

public interface GenericService<T,K> {
    public List<T> getAll();
    public T getById(K id);
    public T save(T t);
    public T update(T t);
    public void delete(T t);
}

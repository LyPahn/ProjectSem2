package com.bkap.services.impl;

import com.bkap.entities.OrderStatus;
import com.bkap.repository.OrderStatusRepository;
import com.bkap.services.OrderStatusService;
import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
@RequiredArgsConstructor
public class OrderStatusServiceImpl implements OrderStatusService {
    private final OrderStatusRepository orderStatusRepository;
    @Override
    public List<OrderStatus> getAll() {
        return orderStatusRepository.findAll();
    }

    @Override
    public OrderStatus getById(Integer id) {
        return orderStatusRepository.findById(id).orElseThrow(()-> new RuntimeException("không tìm thấy id"));
    }

    @Override
    public OrderStatus save(OrderStatus orderStatus) {
        return orderStatusRepository.save(orderStatus);
    }

    @Override
    public OrderStatus update(OrderStatus orderStatus) {
        return orderStatusRepository.save(orderStatus);
    }

    @Override
    public void delete(OrderStatus orderStatus) {
        orderStatusRepository.delete(orderStatus);
    }
}

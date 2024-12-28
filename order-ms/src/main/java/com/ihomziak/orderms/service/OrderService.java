package com.ihomziak.orderms.service;

import com.ihomziak.orderms.dto.OrderDTO;
import com.ihomziak.orderms.dto.OrderDTOFromFE;
import com.ihomziak.orderms.dto.UserDTO;
import com.ihomziak.orderms.entity.Order;
import com.ihomziak.orderms.mapper.OrderMapper;
import com.ihomziak.orderms.repo.OrderRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

@Service
public class OrderService {

    private final OrderRepo orderRepo;
    private final SequenceGenerator sequenceGenerator;
    private final RestTemplate restTemplate;

    @Autowired
    public OrderService(OrderRepo orderRepo, SequenceGenerator sequenceGenerator, RestTemplate restTemplate) {
        this.orderRepo = orderRepo;
        this.sequenceGenerator = sequenceGenerator;
        this.restTemplate = restTemplate;
    }

    public OrderDTO saveOrderInDb(OrderDTOFromFE orderDetails) {
        Integer newOrderID = sequenceGenerator.generateNextOrderId();
        UserDTO userDTO = fetchUserDetailsFromUserId(orderDetails.getUserId());
        Order orderToBeSaved = new Order(newOrderID, orderDetails.getFoodItemsList(), orderDetails.getRestaurant(), userDTO );
        orderRepo.save(orderToBeSaved);
        return OrderMapper.INSTANCE.mapOrderToOrderDTO(orderToBeSaved);
    }

    private UserDTO fetchUserDetailsFromUserId(Integer userId) {
       return restTemplate.getForObject("http://localhost:9093/user/fetchUserById/" + userId, UserDTO.class);
    }
}

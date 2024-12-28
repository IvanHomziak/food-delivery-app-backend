package com.ihomziak.orderms.entity;

import com.ihomziak.orderms.dto.FoodItemsDTO;
import com.ihomziak.orderms.dto.Restaurant;
import com.ihomziak.orderms.dto.UserDTO;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.data.mongodb.core.mapping.Document;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
@Document("order")
public class Order {
    private Integer orderId;
    private List<FoodItemsDTO> foodItemsList;
    private Restaurant restaurant;
    private UserDTO userDTO;

}

package com.codegym.service;

import com.codegym.model.Product;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ProductServiceImpl implements ProductService {
    private static final Map<Integer, Product> products = new HashMap<>();

    static {
        products.put(1, new Product(1, "iPhone 15 Pro", 999.0, "Titanium design, A17 Pro chip", "Apple"));
        products.put(2, new Product(2, "Samsung Galaxy S24", 899.0, "Galaxy AI, Snapdragon 8 Gen 3", "Samsung"));
        products.put(3, new Product(3, "Sony WH-1000XM5", 399.0, "Noise cancelling headphones", "Sony"));
        products.put(4, new Product(4, "MacBook Air M2", 1099.0, "Liquid Retina display, M2 chip", "Apple"));
        products.put(5, new Product(5, "Dell XPS 13", 1199.0, "InfinityEdge display, Intel Core Ultra", "Dell"));
    }

    @Override
    public List<Product> findAll() {
        return new ArrayList<>(products.values());
    }

    @Override
    public void save(Product product) {
        products.put(product.getId(), product);
    }

    @Override
    public Product findById(int id) {
        return products.get(id);
    }

    @Override
    public void update(int id, Product product) {
        products.put(id, product);
    }

    @Override
    public void remove(int id) {
        products.remove(id);
    }

    @Override
    public List<Product> findByName(String name) {
        List<Product> results = new ArrayList<>();
        if (name == null || name.trim().isEmpty()) {
            return findAll();
        }
        for (Product p : products.values()) {
            if (p.getName().toLowerCase().contains(name.toLowerCase().trim())) {
                results.add(p);
            }
        }
        return results;
    }
}
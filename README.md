# reverse-logistics-profitability-platform
Reverse Logistics Profitability and Returns Intelligence Platform using SQL, Python, Power BI and AI insights
## Dataset Schema

Dataset Source:
Brazilian E-Commerce Public Dataset by Olist

### Tables Used

### Orders

order_id (Primary Key)

customer_id

order_status

purchase_timestamp

delivered_customer_date

estimated_delivery_date

---

### Order Items

order_id (Foreign Key)

product_id

seller_id

price

freight_value

---

### Products

product_id (Primary Key)

product_category_name

product_weight_g

product_length_cm

product_height_cm

product_width_cm

---

### Reviews

review_id

order_id

review_score

review_comment_message

---

### Payments

order_id

payment_type

payment_value

---

### Relationships

Orders
↓

Order Items

↓

Products

↓

Reviews

↓

Payments

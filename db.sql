//สร้างฐานข็อมูล
CREATE DATABASE market ;

CREATE TABLE IF NOT EXISTS market.product (
  id INT NOT NULL AUTO_INCREMENT,
  Product_Name VARCHAR(255) NOT NULL ,
  price int NOT NULL ,
  detail VARCHAR(1000) NOT NULL,
  image VARCHAR(200) NOT NULL,
  PRIMARY KEY (id))
ENGINE = InnoDB;



INSERT INTO `product` (`id`, `Product_Name`, `price`, `detail`, `image`) 
VALUES (NULL, 'เก้าอี้', '250', 'รายละเอียดสินค้า:ขนาดสินค้ายาว60 * กว้าง40 สามารถปรับความสูงได้ถึง 70-90 เซนติเมตร ทำจากเหล็กเคลือบสีและไม้อัด โครง่หล็กแข็งแรงทนทาน สามารถรองรับน้ำหนักได้ดี โครงสร้างฐานทรง C เพิ่มความแข็งแรง กันรอยขีดข่วน กันน้ำ รักษาง่าย สามารถเช็ดทำความสะอาดได้ง่าย การออกแบบมีล้อ เคลื่อนย้ายสะดวก หน้าโต๊ะกว้างขวางขึ้น ใช้งานสบาย หัวมุมโต๊ะทรงโค้ง ลดการชนบาดเจ็บกับหัวมุมโต๊ะ', 'p1.JPG')
,(NULL, 'Razer Kraken X 7.1', '1290', 'รายละเอียดสินค้า:7.1 Surround Sound Ultra-light at 250g Bendable Cardioid Microphone Custom-Tuned 40 mm Drivers On-headset Controls Cross-Platform Compatibility', 'p2.JPG');
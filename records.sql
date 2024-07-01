--table with customer details
CREATE TABLE `customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(45) NOT NULL,
  `lname` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `city` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
SELECT * FROM milk_shop.sales_product1;


--table with rates of items
CREATE TABLE `rate` (
  `rateC` decimal(5,2) DEFAULT NULL,
  `rateB` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
SELECT * FROM milk_shop.rate;



--table with product sale details
CREATE TABLE `sell` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `date` date NOT NULL,
  `quantity` decimal(10,2) DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`tid`),
  KEY `cid_idx` (`cid`),
  CONSTRAINT `cid` FOREIGN KEY (`cid`) REFERENCES `customer` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

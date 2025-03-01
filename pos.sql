-- Inserting sport equipment into the cart
INSERT INTO `cart` (`cartid`, `INID`, `nom_prod`, `code_bar`, `qte`, `prix_u`, `prix_tot`) VALUES
(44, 1, 'Tennis Racket', '9876543210123', '5', '50', '250');
--
-- Host: 127.0.0.1
-- Generated on: Thursday, February 13, 2025
-- Server version: 10.4.28-MariaDB
-- PHP version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

SET NAMES utf8mb4;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Structure of the table `cart`
--

CREATE TABLE cart (
  `cartid` int(11) NOT NULL,
  `INID` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `barcode` varchar(15) NOT NULL,
  `quantity` varchar(20) NOT NULL,
  `unit_price` varchar(20) NOT NULL,
  `total_price` varchar(20) NOT NULL
);

--
-- Data unloading of the table `cart`
--

INSERT INTO cart (`cartid`, `INID`, `product_name`, `barcode`, `quantity`, `unit_price`, `total_price`) VALUES
(1, 1, 'Tennis Racket', '12345678', '2', '125', '250.0'),
(2, 1, 'Football', '12345678', '2', '125', '250.0'),
(3, 1, 'Basketball', '12345678', '2', '125', '250.0'),
(4, 1, 'baseballbat', '12345678', '2', '125', '250.0'),
(5, 1, 'Sticks', '12345678', '2', '125', '250.0'),
(6, 1, 'Skateboard', '12345678', '2', '125', '250.0'),
(7, 1, 'Helmet', '12345678', '2', '125', '250.0'),
(8, 1, 'Fitness tracker', '12345678', '2', '125', '250.0'),
);


-- --------------------------------------------------------

--
-- Structure of the table `clients`
--

CREATE TABLE clients (
  `Cid` int(11) NOT NULL,
  `Client_name` varchar(50) NOT NULL,
  `Phone_number` varchar(10) NOT NULL,
  `address` varchar(150) NOT NULL,
  `type` varchar(50) NOT NULL,
  `personal_contract` varchar(100) NOT NULL,
  `phone` varchar(30) NOT NULL
);

--
-- Data unloading of the table `clients`
--

INSERT INTO clients (`Cid`, `Client_name`, `Phone_number`, `address`, `type`, `personal_contract`, `phone`) VALUES
(3, 'JAyson', '234567', '', '', '', ''),
(6, 'Edouard', 'az-er-ty', '', '', '', '');


CREATE TABLE employees (
  `eid` int(11) NOT NULL,
  `employee_name` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL
);

--
-- Data unloading of the table `employees`
--

INSERT INTO employees (`eid`, `employee_name`, `phone_number`) VALUES
(2, 'Edourd', 'azerty1');

-- --------------------------------------------------------

--
-- Structure of the table `extra`
--

CREATE TABLE extra (
  `exid` int(11) NOT NULL,
  `value` int(11) NOT NULL
);

--
-- Data unloading of the table `extra`
--

INSERT INTO extra (`exid`, `value`) VALUES
(1, 3);

-- --------------------------------------------------------

--
-- Structure of the table `suppliers`
--

CREATE TABLE suppliers (
  `fid` int(11) NOT NULL,
  `supplier_name` varchar(50) NOT NULL,
  `phone_number` varchar(10) NOT NULL
);

--
-- Data unloading of the table `suppliers`
--

INSERT INTO suppliers (`fid`, `supplier_name`, `phone_number`) VALUES
(2, 'supplier test 1', '110012'),
(3, 'ernest', '01234567');

-- --------------------------------------------------------

--
-- Structure of the table `products`
--

CREATE TABLE products (
  `pid` int(11) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `barcode` varchar(20) NOT NULL,
  `price` varchar(10) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `supplier_id` int(11) NOT NULL
);

--
-- Data unloading of the table `products`
--

INSERT INTO `products` (`pid`, `product_name`, `barcode`, `price`, `quantity`, `supplier_id`) VALUES
(2, 'sky rock', '100101', '20', '10', 0),
(3, 'yo', '12345678', '125', '12', 2);

-- --------------------------------------------------------

--
-- Structure of the table `sales`
--

CREATE TABLE sales (
  `salesid` int(11) NOT NULL,
  `INID` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_name` varchar(50) NOT NULL,
  `total_quantity` varchar(10) NOT NULL,
  `total_bill` varchar(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  `balance` varchar(10) NOT NULL
) ;

--
-- Data unloading of the table `sales`
--

INSERT INTO sales (`salesid`, `INID`, `client_id`, `client_name`, `total_quantity`, `total_bill`, `status`, `balance`) VALUES
(1, 1, 0, 'Ernest', '3.0', '20.0', 'unpaid', '-60.0'),
(2, 1, 0, 'Ernest', '128.0', '640.0', 'paid', '0.0'),
(3, 1, 0, 'Ernest', '40.0', '200.0', 'unpaid', '-800.0'),
(4, 1, 0, 'Ernest', '6.0', '250.0', 'unpaid', '-750.0'),
(5, 2, 0, 'Ernest', '12.0', '375.0', 'unpaid', '-1500.0'),
(6, 4, 0, 'Ernest', '168.0', '21000.0', 'unpaid', '-21000.0'),
(7, 4, 0, 'Titan', '6.0', '120.0', 'paid', '10.0'),
(8, 4, 0, 'Ernest', '120.0', '15000.0', 'paid', '5000.0');

--
-- Index for the unloaded tables
--

--
-- Index for the table `cart`
--
ALTER TABLE cart
  ADD PRIMARY KEY (`cartid`);

--
-- Index for the table `clients`
--
ALTER TABLE clients
  ADD PRIMARY KEY (`Cid`);

--
-- Index for the table `employees`
--
ALTER TABLE employees
  ADD PRIMARY KEY (`eid`);

--
-- Index for the table `extra`
--
ALTER TABLE extra
  ADD PRIMARY KEY (`exid`);

--
-- Index for the table `suppliers`
--
ALTER TABLE suppliers
  ADD PRIMARY KEY (`fid`);

--
-- Index for the table `products`
--
ALTER TABLE products
  ADD PRIMARY KEY (`pid`);

--
-- Index for the table `sales`
--
ALTER TABLE sales
  ADD PRIMARY KEY (`salesid`);

--
-- AUTO_INCREMENT for the unloaded tables
--

--
-- AUTO_INCREMENT for the table `cart`
--
ALTER TABLE cart
  MODIFY cartid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for the table `clients`
--
ALTER TABLE clients
  MODIFY Cid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for the table `employees`
--
ALTER TABLE employees
  MODIFY eid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for the table `extra`
--
ALTER TABLE extra
  MODIFY exid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for the table `suppliers`
--
ALTER TABLE suppliers
  MODIFY fid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for the table `products`
--
ALTER TABLE products
  MODIFY 777pid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for the table `sales`
--
ALTER TABLE sales
  MODIFY salesid int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

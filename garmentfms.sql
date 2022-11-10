-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 01, 2022 at 12:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `garmentfms`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer_company`
--

CREATE TABLE `customer_company` (
  `Company_Name` varchar(50) NOT NULL,
  `Company_Id` int(15) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone_No` int(15) NOT NULL,
  `Manager_Id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_company`
--

INSERT INTO `customer_company` (`Company_Name`, `Company_Id`, `User_Name`, `Password`, `Address`, `Phone_No`, `Manager_Id`) VALUES
('Fabindia', 150001, 'Johnq', 'S!i$@K_@LoZu', '875/3, Kotte Road', 2147483647, 50004),
('JCT Limited', 150002, 'aswia', '6Fsr{e3!n,3P', '500, R A De Mel Mawatha', 2147483647, 50002),
('Bombay Dyeing', 150003, 'Jign', 'Mb;Riy45oD', 'P-16 Flower Road, Front Street', 2147483647, 50005),
('Textile Zone', 150004, 'eryu', 'GR.vMCu~!q7N', '58 Prince Street, 11', 2147483647, 50005),
('Top Yarn', 150005, 'kamt', 'Mb;Riy4eroD', '99 Street, Sebastian Street', 2147483647, 50001),
('Arvind Limited', 150006, 'thulth', 'kioRiy45_oD', '187/1 Panchikawatte Road, 10', 2147483647, 50001);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Name` varchar(50) NOT NULL,
  `Employee_Id` int(15) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone_No` int(15) NOT NULL,
  `Gardian_Details` varchar(50) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Manager_Id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Name`, `Employee_Id`, `User_Name`, `Password`, `Address`, `Phone_No`, `Gardian_Details`, `Date_Of_Birth`, `Manager_Id`) VALUES
('John', 60001, 'John', 'Mb;Riy4{5_oD', '99 Street, Sebastian Street', 2147483647, '4576781650', '1973-10-15', 50002),
('Adam Sheldon', 60002, 'Adam', 'A@50{L-4U&Tj', '135 Keyzer Street, 11', 2147483647, '5058563218', '1975-10-10', 50005),
('Alice', 60003, 'Alice', 'J[r%WjnAq^#p', '27 Manning Place, 06', 2147483647, '5114307531', '1970-05-15', 50004),
('Abbot', 60004, 'Abbot', 'O8jXOFvD[wv0', '271 273 Dam Street, 12', 2147483647, '3122125324', '1973-01-15', 50002),
('Bale Bharat', 60005, 'bale', 'eXqYQ,NsND@J', '180 B Central Road, 12', 2147483647, '5185344491', '1980-10-14', 50004),
('Bob', 60006, 'Bob', 'j_T69vNk5#u}', '71 8/7 Keyzer Street, 11', 2147483647, '9297922383', '1971-11-15', 50002),
('Goku', 60007, 'Goku', '57N5_r=1^Fxf', '27 Manning Place, 06', 2147483647, '1527407525', '1960-10-12', 50001),
('Ben', 60008, 'Ben', 'SWGd.L,@I7bd', '71 8/7 Keyzer Street, 11', 2147483647, '7089684502', '1982-02-23', 50003);

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE `equipment` (
  `Eq_Name` varchar(50) NOT NULL,
  `Equipment_Id` int(15) NOT NULL,
  `Pur_Date` date NOT NULL,
  `Employee_Id` int(15) NOT NULL,
  `Pur_Price` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`Eq_Name`, `Equipment_Id`, `Pur_Date`, `Employee_Id`, `Pur_Price`) VALUES
('Cutting machine', 70001, '2015-07-12', 60003, '75000'),
('Sewing machine', 70002, '2015-07-12', 60002, '100000'),
('Sewing machine', 70003, '2015-07-12', 60002, '100000'),
('Cutting machine', 70004, '2015-07-15', 60001, '75000'),
('Fusing machine', 70005, '2015-08-12', 60001, '150000'),
('Embroidery machine', 70006, '2015-08-12', 60005, '125000');

-- --------------------------------------------------------

--
-- Table structure for table `errors history`
--

CREATE TABLE `errors history` (
  `Er_Name` varchar(50) NOT NULL,
  `Equipment_Id` int(15) NOT NULL,
  `Er_Date` date NOT NULL,
  `Error_Id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `errors history`
--

INSERT INTO `errors history` (`Er_Name`, `Equipment_Id`, `Er_Date`, `Error_Id`) VALUES
('Power Leak', 70002, '2016-07-12', 80001),
('User Error', 70005, '2016-07-15', 80002),
('Over Work', 70002, '2016-08-18', 80003),
('Power Leak', 70003, '2016-09-15', 80004),
('Over Work', 70004, '2016-10-14', 80005);

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `Name` varchar(50) NOT NULL,
  `Manager_Id` int(15) NOT NULL,
  `User_Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Phone_No` int(15) NOT NULL,
  `Date_Of_Birth` date NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Gardian_Details` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`Name`, `Manager_Id`, `User_Name`, `Password`, `Address`, `Phone_No`, `Date_Of_Birth`, `Email`, `Gardian_Details`) VALUES
('Barney', 50001, 'Barney', 'Mb;Ry4{5_oD', '99 Street, Sebastian Street', 2147483647, '1983-10-15', 'legendary@gmail.com', '4575781650'),
('Rachel', 50002, 'Rachel', 'A@50L-4U&Tj', '135 Keyzer Street, 11', 2147483647, '1975-11-10', 'rachel@gmail.com', '5058560218'),
('MALHAR', 50003, 'MALHAR', 'J[r%WjAq^#p', '27 Manning Place, 06', 2147483647, '1979-05-15', 'malhar@gmail.com', '5114307531'),
('Sheldon', 50004, 'Sheldon', 'O8kXOvD[wv0', '271 273 Dam Street, 12', 2147483647, '1970-01-15', 'smartestpersoninroom@gmail.com', '3152125324'),
('Ram Prabhu', 50005, 'Ram', 'eXqYQNsND@J', '180 B Central Road, 12', 2147483647, '1981-10-14', 'ram@nitc.ac.in', '5189344491'),
('Chandler', 50006, 'Chandler', 'j_T69Nk5#u}', '71 8/7 Keyzer Street, 11', 2147483647, '1974-11-15', 'sarcasticlord@hotmail.com', '9397922383');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product_Name` varchar(50) NOT NULL,
  `Employee_Id` int(15) NOT NULL,
  `Price` decimal(10,0) NOT NULL,
  `Production_Date` date NOT NULL,
  `Color` varchar(50) NOT NULL,
  `Size` varchar(50) NOT NULL,
  `Product_Id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product_Name`, `Employee_Id`, `Price`, `Production_Date`, `Color`, `Size`, `Product_Id`) VALUES
('Shirt', 60001, '2000', '2015-07-12', 'Red', 'Small', 120001),
('Uniforms', 60002, '1500', '2015-07-12', 'Blue', 'Medium', 120002),
('Shirt', 60003, '2000', '2015-07-12', 'Green', 'Small', 120003),
('Saree', 60003, '4000', '2015-07-12', 'Yellow', 'Large', 120004),
('Shirt', 60001, '3000', '2015-07-12', 'Red', 'Large', 120005),
('Trouser', 60005, '2500', '2015-07-12', 'Blue', 'Small', 120006);

-- --------------------------------------------------------

--
-- Table structure for table `raw materials`
--

CREATE TABLE `raw materials` (
  `Name` varchar(50) NOT NULL,
  `Raw_ID` int(15) NOT NULL,
  `Pur_Price` decimal(10,0) NOT NULL,
  `Equipment_Id` int(15) NOT NULL,
  `Pur_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `raw materials`
--

INSERT INTO `raw materials` (`Name`, `Raw_ID`, `Pur_Price`, `Equipment_Id`, `Pur_Date`) VALUES
('Cotton', 90001, '50000', 70002, '2015-07-12'),
('Leather', 90002, '75000', 70001, '2015-07-12'),
('Cotton', 90003, '50000', 70001, '2015-07-12'),
('Cellulosic fibres', 90004, '100000', 70005, '2015-07-12'),
('Leather', 90005, '75000', 70002, '2015-07-12');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_Name` varchar(50) NOT NULL,
  `Room_Id` int(15) NOT NULL,
  `Manager_Id` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_Name`, `Room_Id`, `Manager_Id`) VALUES
('Design department', 130001, 50001),
('Merchandising Department', 130002, 50001),
('Sampling department', 130003, 50004),
('Design department', 130004, 50002),
('Sampling department', 130005, 50002),
('Fabric Storing department', 130006, 50003);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `Name` varchar(50) NOT NULL,
  `Transaction_Id` int(15) NOT NULL,
  `Manager_Id` int(15) NOT NULL,
  `Tr_Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`Name`, `Transaction_Id`, `Manager_Id`, `Tr_Date`) VALUES
('Raw Materials', 140001, 50005, '2015-07-12'),
('Equipment Repair', 140002, 50001, '2015-08-12'),
('Raw Materials', 140003, 50001, '2015-07-15'),
('For Employees', 140004, 50003, '2015-09-12'),
('Product Selling', 140005, 50004, '2015-07-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer_company`
--
ALTER TABLE `customer_company`
  ADD PRIMARY KEY (`Company_Id`),
  ADD KEY `Company_Id` (`Company_Id`),
  ADD KEY `Manager_Company` (`Manager_Id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Employee_Id`),
  ADD KEY `Employee_Id` (`Employee_Id`),
  ADD KEY `Manager_Id` (`Manager_Id`);

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`Equipment_Id`),
  ADD KEY `Equipment_Id` (`Equipment_Id`),
  ADD KEY `Employee_Id` (`Employee_Id`);

--
-- Indexes for table `errors history`
--
ALTER TABLE `errors history`
  ADD PRIMARY KEY (`Error_Id`),
  ADD KEY `Error_Id` (`Error_Id`),
  ADD KEY `Equipment_Id` (`Equipment_Id`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`Manager_Id`),
  ADD KEY `Manager_Id` (`Manager_Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product_Id`),
  ADD KEY `Product_Id` (`Product_Id`),
  ADD KEY `Employee_Id1` (`Employee_Id`);

--
-- Indexes for table `raw materials`
--
ALTER TABLE `raw materials`
  ADD PRIMARY KEY (`Raw_ID`),
  ADD KEY `Raw_ID` (`Raw_ID`),
  ADD KEY `Equipment_Id1` (`Equipment_Id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_Id`),
  ADD KEY `Room_Id` (`Room_Id`),
  ADD KEY `Manager_Id1` (`Manager_Id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`Transaction_Id`),
  ADD KEY `Transaction_Id` (`Transaction_Id`),
  ADD KEY `Employee_Id2` (`Manager_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_company`
--
ALTER TABLE `customer_company`
  ADD CONSTRAINT `Manager_Company` FOREIGN KEY (`Manager_Id`) REFERENCES `manager` (`Manager_Id`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `Manager_Id` FOREIGN KEY (`Manager_Id`) REFERENCES `manager` (`Manager_Id`);

--
-- Constraints for table `equipment`
--
ALTER TABLE `equipment`
  ADD CONSTRAINT `Employee_Id` FOREIGN KEY (`Employee_Id`) REFERENCES `employee` (`Employee_Id`);

--
-- Constraints for table `errors history`
--
ALTER TABLE `errors history`
  ADD CONSTRAINT `Equipment_Id` FOREIGN KEY (`Equipment_Id`) REFERENCES `equipment` (`Equipment_Id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `Employee_Id1` FOREIGN KEY (`Employee_Id`) REFERENCES `employee` (`Employee_Id`);

--
-- Constraints for table `raw materials`
--
ALTER TABLE `raw materials`
  ADD CONSTRAINT `Equipment_Id1` FOREIGN KEY (`Equipment_Id`) REFERENCES `equipment` (`Equipment_Id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `Manager_Id1` FOREIGN KEY (`Manager_Id`) REFERENCES `manager` (`Manager_Id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `Employee_Id2` FOREIGN KEY (`Manager_Id`) REFERENCES `manager` (`Manager_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

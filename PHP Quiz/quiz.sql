-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             10.1.0.5464
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for webtek19
CREATE DATABASE IF NOT EXISTS `webtek19` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `webtek19`;

-- Dumping structure for table webtek19.quiz1
CREATE TABLE IF NOT EXISTS `quiz1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(200) NOT NULL,
  `a` varchar(50) NOT NULL,
  `b` varchar(50) NOT NULL,
  `c` varchar(50) NOT NULL,
  `answer` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Dumping data for table webtek19.quiz1: 30 rows
/*!40000 ALTER TABLE `quiz1` DISABLE KEYS */;
INSERT INTO `quiz1` (`id`, `question`, `a`, `b`, `c`, `answer`) VALUES
	(1, '_____ is a collection of web resources and applications that provides access though internet.', 'HTTP', 'HTML', 'WWW', 'WWW'),
	(2, 'These are _____ type of web resources.', 'Web client and Web server', 'User agent and Web crawler', 'Static and Dynamic', 'Static and Dynamic'),
	(3, '____ is the hosts resources that can hanlde client request.', 'Server', 'Web Server', 'Client', 'Web Server'),
	(4, '____ is a formatting language for the web.', 'HTTP', 'HTML', 'URI', 'HTML'),
	(5, '____ this allows to retrieved of linked resources from the internet.', 'HTTP', 'URI', 'HTML', 'HTTP'),
	(6, '_____ defines a set of standards for transmitting web pages through the internet.', 'WWW', 'HTML', 'HTTP', 'HTTP'),
	(7, '____ is a unique address that could be used to identify each resource on the web.', 'URI', 'WWW', 'HTTP', 'URI'),
	(8, '_____ is a communication used for browsing the web.', 'Internet', 'HTTP', 'URL', 'HTTP'),
	(9, '_____ means all requests are separate from each other so every request must provide enough information to fulfill the request.', 'Web request', 'Response', 'Stateless', 'Stateless'),
	(10, '_____ is the most common concept of the web.', 'URL', 'HTTP', 'HTML', 'URL'),
	(11, '_____ is used to identify one or more IP addresses where the resource is located.', 'Domain name', 'Domain', 'URL', 'Domain'),
	(12, '_____ it specifies the resource location on the web server.', 'Path', 'File path', 'Document root', 'Path'),
	(13, 'It is a _____ that hold a message body from the HTTP response.', 'Message', 'Body', 'Message body', 'Message body'),
	(14, '_____ it is a method used to request data from specified resource where data is not modified and does not change its state of resource.', 'GET ', 'POST', 'PUT', 'GET'),
	(15, 'This _____ method used to describe the communications that are available for the target resource.', 'OPTIONS', 'PUT', 'GET', 'OPTIONS'),
	(16, '_____ method that sends a data to the server to create a resource.', 'HEAD', 'GET', 'POST', 'POST'),
	(17, 'This _____ method used to update existing resource on a server.', 'PUT', 'POST', 'OPTIONS', 'PUT'),
	(18, '_____ method does not contain a body in the response.', 'GET', 'POST', 'HEAD', 'HEAD'),
	(19, 'In _____, it provides a secure communication that is encypted using the TLS or SSL protocol.', 'HTTPS', 'HTTP', 'HTML', 'HTTPS'),
	(20, '_____ used for creating a web pages that could be understood by the user agent.', 'HTML', 'HTTP', 'WWW', 'HTML'),
	(21, '_____ means that the document contains links that allow the user to jump to other document.', 'Hyperlink', 'Hypertext', 'Hypermedia', 'Hypertext'),
	(22, '_____ are used to create an HTML element that usually enclosed in angled brackets.', 'Tags', 'Elements', 'Attributes', 'Tags'),
	(23, '_____ contains an additional piece of information that is placed inside.', 'Attributes', 'Tags', 'Elements', 'Attributes'),
	(24, '_____ it defines the presentation of a web page.', 'CSS', 'SHS', 'CHS', 'CSS'),
	(25, 'a _____ is used to identify web page elements to be used for styling a website.', 'Selector', 'Property', 'Declaration', 'Selector'),
	(26, 'a _____ is an aspect of an element to be used for styling.', 'Declaration', 'Property', 'Selector', 'Property'),
	(27, '_____ it is a combination of value and property.', 'Property', 'Selector', 'Declaration', 'Declaration'),
	(28, 'Use _____ when there are multiple elements in your single web page.', 'Class', 'ID', 'Name', 'Class'),
	(29, 'Use _____ when it only appear once for a web page.', 'Name', 'ID', 'Class', 'ID'),
	(30, '_____ is similar to rule sets but starts with the @ sign.', 'At-rules', 'At-set', 'At-choose', 'At-rules');
/*!40000 ALTER TABLE `quiz1` ENABLE KEYS */;

-- Dumping structure for table webtek19.quiz2
CREATE TABLE IF NOT EXISTS `quiz2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` varchar(300) NOT NULL DEFAULT '0',
  `a` varchar(10) DEFAULT NULL,
  `b` varchar(10) DEFAULT NULL,
  `answer` varchar(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

-- Dumping data for table webtek19.quiz2: 30 rows
/*!40000 ALTER TABLE `quiz2` DISABLE KEYS */;
INSERT INTO `quiz2` (`id`, `question`, `a`, `b`, `answer`) VALUES
	(1, 'WWW is a collection of web resources and applications that provides access though internet.', 'True', 'False', 'True'),
	(2, 'Web server is the hosts resources that can hanlde client request.', 'True', 'False', 'True'),
	(3, 'HTTP is the formatting language for the web.', 'True', 'False', 'False'),
	(4, 'HTTP allows you to send a linked resources from the internet.', 'True', 'False', 'False'),
	(5, 'URI is a unique address that could be used to identify each resources on the web.', 'True', 'False', 'True'),
	(6, 'During 1990\'s, Tim Berners-Lee developed a distributed information service known as "World Wide Web" at CERN.', 'True', 'False', 'False'),
	(7, 'Internet is the communication used for browsing the web.', 'True', 'False', 'False'),
	(8, 'HTML is the most concept of the web.', 'True', 'False', 'False'),
	(9, 'When a URL contains this (?) sign means it contains a query?', 'True', 'False', 'True'),
	(10, 'Message is the one who holds a message body from the HTTP response.', 'True', 'False', 'False'),
	(11, 'GET method is used to request data from specified resource where data is not modified.', 'True', 'False', 'True'),
	(12, 'POST method is used to send data to the server to create a resource.', 'True', 'False', 'True'),
	(13, 'PUT method is used to retrieve existing data resource on a server', 'True', 'False', 'False'),
	(14, 'HEAD method does not contain a body in the response.', 'True', 'False', 'True'),
	(15, 'HTTPS provides a secure communication that is encrypted using the TLS or SSL protocol.', 'True', 'False', 'True'),
	(16, 'HTML is used for creating a web pages structure that could be understood by the user agent.', 'True', 'False', 'True'),
	(17, 'Elements is the HTML components that create an HTML document or web page.', 'True', 'False', 'True'),
	(18, 'Hyperlink means that the document contains links that allow the user to jump to another document.', 'True', 'False', 'False'),
	(19, 'Tags are  used to create HTML element that usually enclosed in angled brackets.', 'True', 'False', 'True'),
	(20, 'CSS defines the presentaion of a web page', 'True', 'False', 'True'),
	(21, 'CSS means Cascading Styles Sheets.', 'True', 'False', 'False'),
	(22, 'HTML means Hypertext Markup Language', 'True', 'False', 'True'),
	(23, 'HTTP means Hypertext Transfer Protocol', 'True', 'False', 'True'),
	(24, 'Selector is used to identify web page elements to be used for styling a website.', 'True', 'False', 'True'),
	(25, 'Property is an aspect of an element to be used for styling.', 'True', 'False', 'True'),
	(26, 'Declaration is a combination of value and property.', 'True', 'False', 'True'),
	(27, 'WWW means Word Wide Web', 'True', 'False', 'False'),
	(28, 'External Stylesheets are documents that are link to one or more HTML documents.', 'True', 'False', 'True'),
	(29, 'Internal Stylesheets is a block of styles that is added to the HTML documents.', 'True', 'False', 'True'),
	(30, 'Outbound Stylesheets are applied only to specific HTML documents.', 'True', 'False', 'False');
/*!40000 ALTER TABLE `quiz2` ENABLE KEYS */;

-- Dumping structure for table webtek19.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) NOT NULL,
  `score` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Dumping data for table webtek19.users: 4 rows
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `score`) VALUES
	(16, 'Yo', NULL),
	(15, 'Tam', NULL),
	(14, 'Mat', NULL),
	(13, 'Pat', NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;

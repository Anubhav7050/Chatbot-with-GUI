-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2024 at 01:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `responses`
--

CREATE TABLE `responses` (
  `input` varchar(255) DEFAULT NULL,
  `response` varchar(255) DEFAULT NULL,
  `entity` varchar(255) DEFAULT NULL,
  `intent` varchar(255) DEFAULT NULL,
  `sentiment` varchar(20) DEFAULT NULL,
  `context` varchar(255) DEFAULT NULL,
  `follow_up_question` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `responses`
--

INSERT INTO `responses` (`input`, `response`, `entity`, `intent`, `sentiment`, `context`, `follow_up_question`) VALUES
('hello', 'Hello! How can I help you?', NULL, 'greeting', 'neutral', NULL, 'What brings you here today?'),
('hi', 'Hi! What\'s up?', NULL, 'greeting', 'neutral', NULL, 'How\'s your day going?'),
('how are you', 'I\'m doing well, thanks!', NULL, 'query', 'positive', NULL, 'What about you?'),
('what is your name', 'My name is Chatbot!', NULL, 'query', 'neutral', NULL, 'What\'s your name?'),
('What is the capital of France?', 'The capital of France is Paris.', 'France', 'get capital', 'neutral', 'France', 'What else would you like to know about France?'),
('What is the weather like today?', 'The weather is sunny today.', NULL, 'get weather', 'positive', NULL, 'Do you have any outdoor plans?'),
('I love this chatbot!', 'Thank you! I\'m glad you like me.', NULL, 'feedback', 'positive', NULL, 'What do you like about me?'),
('This chatbot is terrible.', 'Sorry to hear that. Can I help you with something?', NULL, 'feedback', 'negative', NULL, 'What can I do to improve?'),
('What is the capital of India?', 'The capital of India is New Delhi.', 'India', 'get capital', 'neutral', 'India', 'What else would you like to know about India?'),
('What is your favorite song?', 'I don\'t have personal preferences, but I can suggest some popular songs like \"Intensions\" by Justin Bieber  or \"Tera Yaar Hu Main\" by Arjit Singh.', NULL, 'query', 'neutral', NULL, 'Do you have a favorite artist?'),
('Who is the best motivational speaker?', 'Some popular motivational speakers include Sandeep Maheswari, Gaur Gopal Das, and Sangram Singh. Who inspires you?', NULL, 'query', 'neutral', NULL, 'What motivates you?'),
('Who is the best standup comedian?', 'Some popular standup comedians include Akash Gupta, Anubhav Singh Bassi, and Samay Rana. Who makes you laugh?', NULL, 'query', 'neutral', NULL, 'What kind of humor do you enjoy?'),
('What is the meaning of life?', 'That\'s a deep question! I think the meaning of life is to find happiness and fulfillment. What do you think?', NULL, 'query', 'neutral', NULL, 'What brings you happiness?'),
('Can you tell me a joke?', 'Here\'s one: Why couldn\'t the bicycle stand up by itself? Because it was two-tired! Do you want to hear another one?', NULL, 'query', 'positive', NULL, 'Do you have a favorite joke?'),
('What is the best way to learn a new language?', 'I think the best way to learn a new language is through immersion. Have you tried using language learning apps?', NULL, 'query', 'neutral', NULL, 'What language are you trying to learn?'),
('Can you write a poem for me?', 'Here\'s a short poem: The sun sets slow and paints the sky, A fiery hue that makes me sigh. Do you want me to write another one?', NULL, 'query', 'positive', NULL, 'What kind of poem would you like me to write?'),
('What is the best way to stay motivated?', 'I think the best way to stay motivated is to set goals and reward yourself when you achieve them. What motivates you?', NULL, 'query', 'neutral', NULL, 'What are your goals?');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

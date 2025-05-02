-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: zesty
-- ------------------------------------------------------
-- Server version	8.0.32

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `favorite`
--

DROP TABLE IF EXISTS `favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `favorite` (
  `favoriteId` int unsigned NOT NULL AUTO_INCREMENT,
  `userId` int unsigned DEFAULT NULL,
  `recipeId` int unsigned DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`favoriteId`),
  KEY `recipeId_idx` (`recipeId`),
  KEY `userId_idx` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `favorite`
--

LOCK TABLES `favorite` WRITE;
/*!40000 ALTER TABLE `favorite` DISABLE KEYS */;
INSERT INTO `favorite` VALUES (1,1,2,0,'2025-03-03 01:29:04','2025-03-03 01:29:18'),(2,3,3,1,'2025-03-03 01:46:44','2025-03-03 01:46:44'),(3,2,5,0,'2025-03-03 02:03:26','2025-03-03 02:07:11'),(4,2,4,0,'2025-03-03 02:09:03','2025-03-03 02:41:14'),(5,2,3,1,'2025-03-03 02:41:06','2025-03-03 02:41:06'),(6,4,4,0,'2025-03-03 02:55:29','2025-03-03 03:47:33'),(7,4,9,1,'2025-03-03 03:53:04','2025-03-03 03:53:04');
/*!40000 ALTER TABLE `favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follow`
--

DROP TABLE IF EXISTS `follow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `follow` (
  `followId` int unsigned NOT NULL AUTO_INCREMENT,
  `followeeId` int unsigned NOT NULL,
  `followerId` int unsigned NOT NULL,
  `status` int DEFAULT NULL,
  `modifyTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`followId`),
  KEY `followeeId_idx` (`followeeId`),
  KEY `followerId_idx` (`followerId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follow`
--

LOCK TABLES `follow` WRITE;
/*!40000 ALTER TABLE `follow` DISABLE KEYS */;
/*!40000 ALTER TABLE `follow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredient` (
  `ingredientId` int unsigned NOT NULL AUTO_INCREMENT,
  `ingredientName` varchar(255) NOT NULL,
  `category` int DEFAULT NULL,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `nutrition` json DEFAULT NULL,
  PRIMARY KEY (`ingredientId`),
  KEY `ingredientName_idx` (`ingredientName`)
) ENGINE=InnoDB AUTO_INCREMENT=139 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredient`
--

LOCK TABLES `ingredient` WRITE;
/*!40000 ALTER TABLE `ingredient` DISABLE KEYS */;
INSERT INTO `ingredient` VALUES (29,'Arugula',0,'2025-03-03 01:46:23','2025-03-03 01:46:23',NULL),(30,'Garlic',0,'2025-03-03 01:46:23','2025-03-03 01:46:23',NULL),(31,'Ground beef',0,'2025-03-03 01:46:23','2025-03-03 01:46:23',NULL),(32,'Mayonnaise',0,'2025-03-03 01:46:23','2025-03-03 01:46:23',NULL),(33,'Olive oil',0,'2025-03-03 01:46:23','2025-03-03 01:46:23',NULL),(34,'Pepper',0,'2025-03-03 01:46:23','2025-03-03 01:46:23',NULL),(35,'Potato',0,'2025-03-03 01:46:23','2025-03-03 01:46:23',NULL),(36,'Salt',0,'2025-03-03 01:46:23','2025-03-03 01:46:23',NULL),(37,'Sesame seed bun',0,'2025-03-03 01:46:23','2025-03-03 01:46:23',NULL),(38,'Tomato sauce/ketchup',0,'2025-03-03 01:46:23','2025-03-03 01:46:23',NULL),(39,'bacon',1,'2025-03-03 01:46:23','2025-03-03 01:46:23',NULL),(40,'tomato',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(41,'mushroom',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(42,'lemon',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(43,'apple',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(44,'mango',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(45,'star fruit',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(46,'plum',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(47,'physalis',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(48,'orange',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(49,'grapes',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(50,'green beans',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(51,'habanero pepper',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(52,'sugar snap peas',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(53,'ginger',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(54,'green chili pepper',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(55,'red chili pepper',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(56,'kiwi',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(57,'persimmon',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(58,'sweet potato',10000,'2025-03-03 01:47:55','2025-03-03 01:47:55',NULL),(59,'egg',10000,'2025-03-03 01:48:09','2025-03-03 01:48:09',NULL),(60,'Calasparra or Bomba rice',0,'2025-03-03 01:50:14','2025-03-03 01:50:14',NULL),(61,'Fish stock',0,'2025-03-03 01:50:14','2025-03-03 01:50:14',NULL),(62,'Fresh parsley',0,'2025-03-03 01:50:14','2025-03-03 01:50:14',NULL),(63,'Garlic cloves',0,'2025-03-03 01:50:14','2025-03-03 01:50:14',NULL),(64,'Mussels',0,'2025-03-03 01:50:14','2025-03-03 01:50:14',NULL),(65,'Olive oil',0,'2025-03-03 01:50:14','2025-03-03 01:50:14',NULL),(66,'Onion',0,'2025-03-03 01:50:14','2025-03-03 01:50:14',NULL),(67,'Saffron threads',0,'2025-03-03 01:50:14','2025-03-03 01:50:14',NULL),(68,'Shrimp',0,'2025-03-03 01:50:14','2025-03-03 01:50:14',NULL),(69,'Squid',0,'2025-03-03 01:50:14','2025-03-03 01:50:14',NULL),(70,'Chopped coriander leaves',0,'2025-03-03 01:50:43','2025-03-03 01:50:43',NULL),(71,'Green chutney',0,'2025-03-03 01:50:43','2025-03-03 01:50:43',NULL),(72,'Pomegranate seeds',0,'2025-03-03 01:50:43','2025-03-03 01:50:43',NULL),(73,'Red chili powder',0,'2025-03-03 01:50:43','2025-03-03 01:50:43',NULL),(74,'Roasted cumin powder',0,'2025-03-03 01:50:43','2025-03-03 01:50:43',NULL),(75,'Sev (crispy chickpea noodles)',0,'2025-03-03 01:50:43','2025-03-03 01:50:43',NULL),(76,'Tamarind chutney',0,'2025-03-03 01:50:43','2025-03-03 01:50:43',NULL),(77,'Urad dal (split black lentils)',0,'2025-03-03 01:50:43','2025-03-03 01:50:43',NULL),(78,'Water',0,'2025-03-03 01:50:43','2025-03-03 01:50:43',NULL),(79,'Yogurt',0,'2025-03-03 01:50:43','2025-03-03 01:50:43',NULL),(80,'Bell peppers (red, yellow, and/or orange)',0,'2025-03-03 01:51:27','2025-03-03 01:51:27',NULL),(81,'Black pepper',0,'2025-03-03 01:51:27','2025-03-03 01:51:27',NULL),(82,'Eggplant',0,'2025-03-03 01:51:27','2025-03-03 01:51:27',NULL),(83,'Herbes de Provence',0,'2025-03-03 01:51:27','2025-03-03 01:51:27',NULL),(84,'Olive oil',0,'2025-03-03 01:51:27','2025-03-03 01:51:27',NULL),(85,'Zucchini',0,'2025-03-03 01:51:27','2025-03-03 01:51:27',NULL),(86,'Cauliflower florets',0,'2025-03-03 01:58:05','2025-03-03 01:58:05',NULL),(87,'Fresh cilantro',0,'2025-03-03 01:58:05','2025-03-03 01:58:05',NULL),(88,'Honey or maple syrup',0,'2025-03-03 01:58:05','2025-03-03 01:58:05',NULL),(89,'Rice vinegar',0,'2025-03-03 01:58:05','2025-03-03 01:58:05',NULL),(90,'Scallions',0,'2025-03-03 01:58:05','2025-03-03 01:58:05',NULL),(91,'Sesame oil',0,'2025-03-03 01:58:05','2025-03-03 01:58:05',NULL),(92,'Sesame seeds',0,'2025-03-03 01:58:05','2025-03-03 01:58:05',NULL),(93,'Snow peas',0,'2025-03-03 01:58:05','2025-03-03 01:58:05',NULL),(94,'Soy sauce',0,'2025-03-03 01:58:05','2025-03-03 01:58:05',NULL),(95,'Yellow onion',0,'2025-03-03 01:58:05','2025-03-03 01:58:05',NULL),(96,'Coconut milk',0,'2025-03-03 02:01:17','2025-03-03 02:01:17',NULL),(97,'Coriander powder',0,'2025-03-03 02:01:17','2025-03-03 02:01:17',NULL),(98,'Curry leaves',0,'2025-03-03 02:01:17','2025-03-03 02:01:17',NULL),(99,'Fish fillets',0,'2025-03-03 02:01:17','2025-03-03 02:01:17',NULL),(100,'Garam masala',0,'2025-03-03 02:01:17','2025-03-03 02:01:17',NULL),(101,'Ginger-garlic paste',0,'2025-03-03 02:01:17','2025-03-03 02:01:17',NULL),(102,'Mustard seeds',0,'2025-03-03 02:01:17','2025-03-03 02:01:17',NULL),(103,'Turmeric powder',0,'2025-03-03 02:01:17','2025-03-03 02:01:17',NULL),(104,'beef',10000,'2025-03-03 02:02:27','2025-03-03 02:02:27',NULL),(105,'fish',10000,'2025-03-03 02:02:27','2025-03-03 02:02:27',NULL),(106,'Canned tuna in water, drained',0,'2025-03-03 02:09:57','2025-03-03 02:09:57',NULL),(107,'Chopped green onions, for garnish',0,'2025-03-03 02:09:57','2025-03-03 02:09:57',NULL),(108,'Cream of mushroom soup',0,'2025-03-03 02:09:57','2025-03-03 02:09:57',NULL),(109,'Egg noodles',0,'2025-03-03 02:09:57','2025-03-03 02:09:57',NULL),(110,'Frozen chopped spinach, thawed and squeezed dry',0,'2025-03-03 02:09:57','2025-03-03 02:09:57',NULL),(111,'Potato chips, crushed',0,'2025-03-03 02:09:57','2025-03-03 02:09:57',NULL),(112,'Shredded cheddar cheese',0,'2025-03-03 02:09:57','2025-03-03 02:09:57',NULL),(113,'Canned crushed tomatoes',0,'2025-03-03 02:38:48','2025-03-03 02:38:48',NULL),(114,'Cayenne pepper',0,'2025-03-03 02:38:48','2025-03-03 02:38:48',NULL),(115,'Feta cheese',0,'2025-03-03 02:38:48','2025-03-03 02:38:48',NULL),(116,'Olive oil',0,'2025-03-03 02:38:48','2025-03-03 02:38:48',NULL),(117,'Paprika',0,'2025-03-03 02:38:48','2025-03-03 02:38:48',NULL),(118,'Tomato paste',0,'2025-03-03 02:38:48','2025-03-03 02:38:48',NULL),(119,'eggs',10000,'2025-03-03 02:40:05','2025-03-03 02:40:05',NULL),(120,'avocado, diced',0,'2025-03-03 02:55:02','2025-03-03 02:55:02',NULL),(121,'bacon, cooked and crumbled',0,'2025-03-03 02:55:02','2025-03-03 02:55:02',NULL),(122,'cherry tomatoes, halved',0,'2025-03-03 02:55:02','2025-03-03 02:55:02',NULL),(123,'cooked chicken, shredded',0,'2025-03-03 02:55:02','2025-03-03 02:55:02',NULL),(124,'large lettuce leaves',0,'2025-03-03 02:55:02','2025-03-03 02:55:02',NULL),(125,'lime juice',0,'2025-03-03 02:55:02','2025-03-03 02:55:02',NULL),(126,'Cherry tomatoes',0,'2025-03-03 03:47:20','2025-03-03 03:47:20',NULL),(127,'Chicken drumsticks',0,'2025-03-03 03:47:20','2025-03-03 03:47:20',NULL),(128,'Olive oil',0,'2025-03-03 03:47:20','2025-03-03 03:47:20',NULL),(129,'Rosemary sprigs',0,'2025-03-03 03:47:20','2025-03-03 03:47:20',NULL),(130,'grape',10000,'2025-03-03 03:48:24','2025-03-03 03:48:24',NULL),(131,'avocado, diced',0,'2025-03-03 03:52:41','2025-03-03 03:52:41',NULL),(132,'bacon, cooked and crumbled',0,'2025-03-03 03:52:41','2025-03-03 03:52:41',NULL),(133,'cherry tomatoes, halved',0,'2025-03-03 03:52:41','2025-03-03 03:52:41',NULL),(134,'cooked chicken, shredded',0,'2025-03-03 03:52:41','2025-03-03 03:52:41',NULL),(135,'large lettuce leaves',0,'2025-03-03 03:52:41','2025-03-03 03:52:41',NULL),(136,'ranch dressing',0,'2025-03-03 03:52:42','2025-03-03 03:52:42',NULL),(137,'green chili',10000,'2025-03-03 03:53:59','2025-03-03 03:53:59',NULL),(138,'red chili',10000,'2025-03-03 03:54:00','2025-03-03 03:54:00',NULL);
/*!40000 ALTER TABLE `ingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mealplan`
--

DROP TABLE IF EXISTS `mealplan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mealplan` (
  `mealPlanId` int unsigned NOT NULL AUTO_INCREMENT,
  `userId` int unsigned DEFAULT NULL,
  `recipeId` int unsigned DEFAULT NULL,
  `startTime` datetime DEFAULT NULL,
  `endTime` datetime DEFAULT NULL,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`mealPlanId`),
  KEY `userId_idx` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mealplan`
--

LOCK TABLES `mealplan` WRITE;
/*!40000 ALTER TABLE `mealplan` DISABLE KEYS */;
/*!40000 ALTER TABLE `mealplan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipe`
--

DROP TABLE IF EXISTS `recipe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipe` (
  `recipeId` int unsigned NOT NULL AUTO_INCREMENT,
  `creatorId` int unsigned DEFAULT NULL,
  `recipeName` varchar(255) NOT NULL,
  `recipeType` int DEFAULT NULL,
  `category` int DEFAULT NULL,
  `difficulty` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `postTime` datetime DEFAULT (now()),
  `steps` json DEFAULT NULL,
  `cookingTime` varchar(255) DEFAULT NULL,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `recipePicture` varchar(2048) DEFAULT NULL,
  `description` text,
  `nutrition` json DEFAULT NULL,
  PRIMARY KEY (`recipeId`),
  KEY `creatorId_idx` (`creatorId`),
  KEY `recipeName_idx` (`recipeName`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipe`
--

LOCK TABLES `recipe` WRITE;
/*!40000 ALTER TABLE `recipe` DISABLE KEYS */;
INSERT INTO `recipe` VALUES (3,3,'Gourmet Burger with Crispy Potato and Bacon',1,3,5,1,NULL,'[{\"stepImg\": \"\", \"stepDesc\": \"Preheat oven to 400°F (200°C). Thinly slice the potato and toss with olive oil, salt, and pepper. Arrange in a single layer on a baking sheet and bake for 15-20 minutes, flipping halfway through, until golden brown and crispy.\"}, {\"stepImg\": \"\", \"stepDesc\": \"While the potato is baking, cook the bacon in a skillet over medium heat until crispy. Remove from skillet and set aside on a paper towel-lined plate to drain.\"}, {\"stepImg\": \"\", \"stepDesc\": \"In a small bowl, combine mayonnaise and minced garlic to make the garlic aioli. Set aside.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Season ground beef with salt and pepper. Form into a patty slightly larger than the bun. Cook the patty to your desired doneness in the same skillet used for the bacon. \"}, {\"stepImg\": \"\", \"stepDesc\": \"Lightly toast the sesame seed bun.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Spread the garlic aioli on both halves of the bun. Place the cooked patty on the bottom bun.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Top the patty with the crispy potato slices, bacon, a dollop of tomato sauce/ketchup, and a handful of arugula. Cover with the top bun and serve immediately.\"}]','30min','2025-03-02 17:46:18','2025-03-02 17:46:18','https://raw.githubusercontent.com/guxu11/ImageManagement/master/ijC2E1740966375dish-fine-burger-bistro.jpg','A delicious burger featuring a juicy beef patty, crispy potato, smoky bacon, and a creamy sauce, all served on a toasted sesame seed bun.',NULL),(4,3,'Seafood Paella',1,3,3,1,NULL,'[{\"stepImg\": \"\", \"stepDesc\": \"Heat the olive oil in a paella pan or large skillet over medium heat.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add the onion and cook until softened, about 5 minutes.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Stir in the garlic and cook for 1 minute more.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add the rice and saffron, and cook for 1 minute, stirring constantly.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Pour in the fish stock, bring to a boil, then reduce heat and simmer for 15 minutes.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add the squid and shrimp, and continue to simmer for 5 minutes.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Arrange the mussels over the rice, cover, and cook until they open, about 5 minutes more.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Stir in the peas and cook until heated through.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Garnish with fresh parsley and serve immediately.\"}]','30min','2025-03-02 17:50:14','2025-03-02 17:50:14','https://raw.githubusercontent.com/guxu11/ImageManagement/master/C79MJ1740966610essential-spanish-dish-paella-phaidon.jpg','A classic Spanish dish featuring saffron-infused rice with a variety of seafood.',NULL),(5,3,'Dahi Vada',1,3,3,1,NULL,'[{\"stepImg\": \"\", \"stepDesc\": \"Wash and soak urad dal in enough water for at least 4 hours or overnight.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Drain the water and grind the dal into a smooth batter, adding very little water if needed.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add salt, ginger, and green chilies to the batter and whisk well.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Heat oil in a deep frying pan over medium heat.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Drop spoonfuls of the batter into the hot oil and fry until golden brown and crispy.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Remove the vadas from the oil and soak them in warm water for 10-15 minutes to soften them.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Whisk the yogurt with sugar (if using) until smooth.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Gently squeeze the water out of the vadas and place them on a serving plate.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Pour the whisked yogurt over the vadas.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Sprinkle roasted cumin powder, red chili powder, salt, and chopped coriander leaves.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Drizzle tamarind chutney and green chutney over the vadas.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Garnish with sev, pomegranate seeds, and chopped coriander leaves.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Serve immediately or chill for a while before serving.\"}]','30min','2025-03-02 17:50:43','2025-03-02 17:50:43','https://raw.githubusercontent.com/guxu11/ImageManagement/master/CG9jv1740966640indian-food.jpg','Dahi Vada is a popular Indian street food made with lentil fritters soaked in yogurt and topped with various chutneys and spices.',NULL),(6,3,'Ratatouille',1,3,3,1,NULL,'[{\"stepImg\": \"\", \"stepDesc\": \"Preheat oven to 375°F (190°C).\"}, {\"stepImg\": \"\", \"stepDesc\": \"Dice the eggplant, zucchini, bell peppers, and onion into roughly 1-inch pieces.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Peel and chop the tomatoes. Mince the garlic.\"}, {\"stepImg\": \"\", \"stepDesc\": \"In a large oven-safe pot or Dutch oven, heat the olive oil over medium heat.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add the onion and cook until softened, about 5 minutes. Add the garlic and cook for another minute until fragrant.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add the eggplant, zucchini, and bell peppers to the pot. Cook for 5-7 minutes, stirring occasionally, until slightly softened.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Stir in the chopped tomatoes, herbes de Provence, salt, and pepper. Bring to a simmer.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Cover the pot and transfer to the preheated oven. Bake for 30-40 minutes, or until the vegetables are tender.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Remove from the oven and stir in the fresh parsley. Serve hot or cold.\"}]','30min','2025-03-02 17:51:27','2025-03-02 17:51:27','https://raw.githubusercontent.com/guxu11/ImageManagement/master/KA5Jm1740966684dishsample.jpg','A classic French Provençal stewed vegetable dish, originating in Nice.',NULL),(7,1,'Sesame Cauliflower Stir-Fry',1,3,1,1,NULL,'[{\"stepImg\": \"\", \"stepDesc\": \"Cut the cauliflower into bite-sized florets.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Trim the snow peas.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Thinly slice the onion and scallions.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Mince the garlic and grate the ginger.\"}, {\"stepImg\": \"\", \"stepDesc\": \"In a small bowl, whisk together soy sauce, sesame oil, rice vinegar, and honey/maple syrup.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Heat a large skillet or wok over medium-high heat. Add a small amount of oil, if needed.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add the onion and cook until softened, about 3 minutes.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add the cauliflower and snow peas and cook until crisp-tender, about 5-7 minutes.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add the garlic and ginger and cook for another minute until fragrant.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Pour the sauce over the vegetables and toss to coat.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Cook for another minute or two until the sauce is thickened and the vegetables are heated through.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Garnish with toasted sesame seeds and fresh cilantro.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Serve hot with rice or noodles.\"}]','30min','2025-03-02 17:58:05','2025-03-02 17:58:05','https://raw.githubusercontent.com/guxu11/ImageManagement/master/yS3FA1740967082cauliflower-stir-fry.jpg','A quick and easy stir-fry packed with flavor and healthy veggies.',NULL),(8,2,'Fish Curry',1,3,3,1,NULL,'[{\"stepImg\": \"\", \"stepDesc\": \"Heat oil in a pan and add mustard seeds. Once they splutter, add curry leaves and chopped onions.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Sauté the onions until they turn golden brown. Then add ginger-garlic paste and green chilies. Sauté for a minute.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add chopped tomatoes and cook until they soften. Then add turmeric powder, red chili powder, coriander powder, cumin powder, and salt. Mix well and cook for 2-3 minutes.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Pour in the coconut milk and bring the curry to a simmer. Add the fish fillets and cook for 5-7 minutes, or until the fish is cooked through.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Sprinkle garam masala and garnish with fresh coriander leaves. Serve hot with rice or roti.\"}]','30min','2025-03-02 18:01:17','2025-03-02 18:01:17','https://raw.githubusercontent.com/guxu11/ImageManagement/master/7B8Vc174096727415-famous-dishes-of-odisha-to-try-while-visiting-puri-1-about.jpg','A delicious and flavorful fish curry made with a blend of spices and coconut milk.',NULL),(9,2,'Tuna Noodle Casserole with Potato Chips',1,3,3,1,NULL,'[{\"stepImg\": \"\", \"stepDesc\": \"Preheat oven to 375 degrees F (190 degrees C).\"}, {\"stepImg\": \"\", \"stepDesc\": \"Cook egg noodles according to package directions. Drain and set aside.\"}, {\"stepImg\": \"\", \"stepDesc\": \"In a large bowl, combine cooked noodles, tuna, spinach, cream of mushroom soup, milk, and cheddar cheese. Mix well.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Pour mixture into a greased 9x13 inch baking dish.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Top with crushed potato chips.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Bake for 20-25 minutes, or until heated through and bubbly.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Garnish with chopped green onions before serving.\"}]','30min','2025-03-02 18:09:57','2025-03-02 18:09:57','https://raw.githubusercontent.com/guxu11/ImageManagement/master/Ok4ua1740967794sample_2.jpg','A comforting and flavorful tuna noodle casserole topped with crispy potato chips.',NULL),(10,3,'Shakshuka',1,3,5,1,NULL,'[{\"stepImg\": \"\", \"stepDesc\": \"Heat the olive oil in a large skillet over medium heat.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add the onion and bell pepper and cook until softened, about 5-7 minutes.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Stir in the garlic and cook for 1 minute more.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Add the crushed tomatoes, tomato paste, cumin, paprika, cayenne pepper, salt, and black pepper.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Bring to a simmer and cook for 10-15 minutes, or until the sauce has thickened slightly.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Using a spoon, create small wells in the sauce for the eggs.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Crack the eggs into the wells.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Cover the skillet and cook until the eggs are set to your liking, about 5-7 minutes for runny yolks or longer for firmer yolks.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Sprinkle with feta cheese and cilantro.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Serve immediately with crusty bread for dipping.\"}]','30min','2025-03-02 18:38:39','2025-03-02 18:38:39','https://raw.githubusercontent.com/guxu11/ImageManagement/master/ZgqCc1740969516sample_1.jpg','A flavorful and vibrant Middle Eastern and North African dish of eggs poached in a spicy tomato sauce. Perfect for breakfast, brunch, or a light dinner.',NULL),(13,4,'Chicken BLT Lettuce Wraps',1,3,3,1,NULL,'[{\"stepImg\": \"\", \"stepDesc\": \"In a medium bowl, combine the shredded chicken, bacon, avocado, and cherry tomatoes.\"}, {\"stepImg\": \"\", \"stepDesc\": \"In a small bowl, whisk together the mayonnaise, ranch dressing, lime juice, salt, and pepper.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Pour the dressing over the chicken mixture and stir to combine.\"}, {\"stepImg\": \"\", \"stepDesc\": \"Spoon the chicken salad into the lettuce leaves and serve immediately.\"}]','30min','2025-03-02 19:52:41','2025-03-02 19:52:41','https://raw.githubusercontent.com/guxu11/ImageManagement/master/ibuST1740973958square-blta-chicken-salad-lettuce-wrap-2.jpg','These healthy and delicious chicken BLT lettuce wraps are perfect for a quick and easy lunch or dinner. They are packed with flavor and protein, and they are low in carbs and calories. The creamy avocado ranch dressing adds a touch of richness, while the bacon and tomatoes provide a satisfying crunch.',NULL);
/*!40000 ALTER TABLE `recipe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipeingredient`
--

DROP TABLE IF EXISTS `recipeingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipeingredient` (
  `recipeIngredientId` int unsigned NOT NULL AUTO_INCREMENT,
  `ingredientId` int unsigned DEFAULT NULL,
  `recipeId` int unsigned DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`recipeIngredientId`),
  UNIQUE KEY `recipe_ingredient_idx` (`recipeId`,`ingredientId`),
  KEY `ingredientId_idx` (`ingredientId`),
  KEY `recipeId_idx` (`recipeId`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipeingredient`
--

LOCK TABLES `recipeingredient` WRITE;
/*!40000 ALTER TABLE `recipeingredient` DISABLE KEYS */;
INSERT INTO `recipeingredient` VALUES (1,1,1,'1','2025-03-03 00:03:10','2025-03-03 00:03:10'),(2,2,1,'2','2025-03-03 00:03:10','2025-03-03 00:03:10'),(3,3,2,'2, diced','2025-03-03 00:40:13','2025-03-03 00:40:13'),(4,4,2,'1/2 teaspoon','2025-03-03 00:40:13','2025-03-03 00:40:13'),(5,5,2,'1 medium, diced','2025-03-03 00:40:13','2025-03-03 00:40:13'),(6,6,2,'1/4 cup, chopped','2025-03-03 00:40:13','2025-03-03 00:40:13'),(7,7,2,'4 cloves, minced','2025-03-03 00:40:13','2025-03-03 00:40:13'),(8,8,2,'1 tablespoon','2025-03-03 00:40:13','2025-03-03 00:40:13'),(9,9,2,'1/4 cup','2025-03-03 00:40:13','2025-03-03 00:40:13'),(10,10,2,'1 large, diced','2025-03-03 00:40:13','2025-03-03 00:40:13'),(11,11,2,'1 teaspoon','2025-03-03 00:40:13','2025-03-03 00:40:13'),(12,2,2,'4 large, diced','2025-03-03 00:40:13','2025-03-03 00:40:13'),(13,12,2,'2 medium, diced','2025-03-03 00:40:13','2025-03-03 00:40:13'),(14,29,3,'1 cup','2025-03-03 01:46:23','2025-03-03 01:46:23'),(15,30,3,'1 clove, minced','2025-03-03 01:46:23','2025-03-03 01:46:23'),(16,31,3,'1 lb','2025-03-03 01:46:23','2025-03-03 01:46:23'),(17,32,3,'2 tbsp','2025-03-03 01:46:23','2025-03-03 01:46:23'),(18,33,3,'2 tbsp','2025-03-03 01:46:23','2025-03-03 01:46:23'),(19,34,3,'to taste','2025-03-03 01:46:23','2025-03-03 01:46:23'),(20,35,3,'1 medium','2025-03-03 01:46:23','2025-03-03 01:46:23'),(21,36,3,'a few','2025-03-03 01:46:23','2025-03-03 01:46:23'),(22,37,3,'1','2025-03-03 01:46:23','2025-03-03 01:46:23'),(23,38,3,'1 tbsp','2025-03-03 01:46:23','2025-03-03 01:46:23'),(24,39,3,'2 slides','2025-03-03 01:46:23','2025-03-03 01:46:23'),(25,60,4,'1.5 cups','2025-03-03 01:50:14','2025-03-03 01:50:14'),(26,61,4,'4 cups','2025-03-03 01:50:14','2025-03-03 01:50:14'),(27,62,4,'chopped, for garnish','2025-03-03 01:50:14','2025-03-03 01:50:14'),(28,63,4,'2 minced','2025-03-03 01:50:14','2025-03-03 01:50:14'),(29,64,4,'1 lb, scrubbed','2025-03-03 01:50:14','2025-03-03 01:50:14'),(30,65,4,'2 tbsp','2025-03-03 01:50:14','2025-03-03 01:50:14'),(31,66,4,'1 chopped','2025-03-03 01:50:14','2025-03-03 01:50:14'),(32,52,4,'1 cup','2025-03-03 01:50:14','2025-03-03 01:50:14'),(33,67,4,'a pinch','2025-03-03 01:50:14','2025-03-03 01:50:14'),(34,36,4,'to taste','2025-03-03 01:50:14','2025-03-03 01:50:14'),(35,68,4,'1 lb, peeled and deveined','2025-03-03 01:50:14','2025-03-03 01:50:14'),(36,69,4,'1 lb, cleaned and cut into rings','2025-03-03 01:50:14','2025-03-03 01:50:14'),(37,70,5,'for garnish','2025-03-03 01:50:43','2025-03-03 01:50:43'),(38,53,5,'1 inch piece, finely chopped','2025-03-03 01:50:43','2025-03-03 01:50:43'),(39,54,5,'2-3, finely chopped','2025-03-03 01:50:43','2025-03-03 01:50:43'),(40,71,5,'to taste','2025-03-03 01:50:43','2025-03-03 01:50:43'),(41,33,5,'for frying','2025-03-03 01:50:43','2025-03-03 01:50:43'),(42,72,5,'for garnish','2025-03-03 01:50:43','2025-03-03 01:50:43'),(43,73,5,'1/2 teaspoon','2025-03-03 01:50:43','2025-03-03 01:50:43'),(44,74,5,'1 teaspoon','2025-03-03 01:50:43','2025-03-03 01:50:43'),(45,36,5,'to taste','2025-03-03 01:50:43','2025-03-03 01:50:43'),(46,75,5,'for garnish','2025-03-03 01:50:43','2025-03-03 01:50:43'),(47,52,5,'1 teaspoon (optional)','2025-03-03 01:50:43','2025-03-03 01:50:43'),(48,76,5,'to taste','2025-03-03 01:50:43','2025-03-03 01:50:43'),(49,77,5,'1 cup','2025-03-03 01:50:43','2025-03-03 01:50:43'),(50,78,5,'as needed','2025-03-03 01:50:43','2025-03-03 01:50:43'),(51,79,5,'2 cups','2025-03-03 01:50:43','2025-03-03 01:50:43'),(52,80,6,'2','2025-03-03 01:51:27','2025-03-03 01:51:27'),(53,81,6,'1/2 teaspoon','2025-03-03 01:51:27','2025-03-03 01:51:27'),(54,82,6,'1 medium','2025-03-03 01:51:27','2025-03-03 01:51:27'),(55,62,6,'1/4 cup, chopped','2025-03-03 01:51:27','2025-03-03 01:51:27'),(56,30,6,'4 cloves','2025-03-03 01:51:27','2025-03-03 01:51:27'),(57,83,6,'1 tablespoon','2025-03-03 01:51:27','2025-03-03 01:51:27'),(58,84,6,'1/4 cup','2025-03-03 01:51:27','2025-03-03 01:51:27'),(59,66,6,'1 large','2025-03-03 01:51:27','2025-03-03 01:51:27'),(60,36,6,'1 teaspoon','2025-03-03 01:51:27','2025-03-03 01:51:27'),(61,38,6,'4 large, ripe','2025-03-03 01:51:27','2025-03-03 01:51:27'),(62,85,6,'2 medium','2025-03-03 01:51:27','2025-03-03 01:51:27'),(63,86,7,'1 large head','2025-03-03 01:58:05','2025-03-03 01:58:05'),(64,87,7,'1/4 cup, chopped','2025-03-03 01:58:05','2025-03-03 01:58:05'),(65,30,7,'2 cloves, minced','2025-03-03 01:58:05','2025-03-03 01:58:05'),(66,53,7,'1 inch piece, grated','2025-03-03 01:58:05','2025-03-03 01:58:05'),(67,88,7,'1 teaspoon','2025-03-03 01:58:05','2025-03-03 01:58:05'),(68,89,7,'1 tablespoon','2025-03-03 01:58:05','2025-03-03 01:58:05'),(69,90,7,'2, thinly sliced','2025-03-03 01:58:05','2025-03-03 01:58:05'),(70,91,7,'1 tablespoon','2025-03-03 01:58:05','2025-03-03 01:58:05'),(71,92,7,'1 tablespoon, toasted','2025-03-03 01:58:05','2025-03-03 01:58:05'),(72,93,7,'8 oz','2025-03-03 01:58:05','2025-03-03 01:58:05'),(73,94,7,'2 tablespoons','2025-03-03 01:58:05','2025-03-03 01:58:05'),(74,95,7,'1 medium, thinly sliced','2025-03-03 01:58:05','2025-03-03 01:58:05'),(75,96,8,'2 cup','2025-03-03 02:01:17','2025-03-03 02:01:17'),(76,97,8,'1 tablespoon','2025-03-03 02:01:17','2025-03-03 02:01:17'),(77,74,8,'1 teaspoon','2025-03-03 02:01:17','2025-03-03 02:01:17'),(78,98,8,'A few','2025-03-03 02:01:17','2025-03-03 02:01:17'),(79,99,8,'500g','2025-03-03 02:01:17','2025-03-03 02:01:17'),(80,100,8,'1/2 teaspoon','2025-03-03 02:01:17','2025-03-03 02:01:17'),(81,101,8,'1 tablespoon','2025-03-03 02:01:17','2025-03-03 02:01:17'),(82,54,8,'2-3, slit','2025-03-03 02:01:17','2025-03-03 02:01:17'),(83,102,8,'1/2 teaspoon','2025-03-03 02:01:17','2025-03-03 02:01:17'),(84,33,8,'2 tablespoons','2025-03-03 02:01:17','2025-03-03 02:01:17'),(85,66,8,'1 medium, chopped','2025-03-03 02:01:17','2025-03-03 02:01:17'),(86,73,8,'1 teaspoon','2025-03-03 02:01:17','2025-03-03 02:01:17'),(87,38,8,'2 medium, chopped','2025-03-03 02:01:17','2025-03-03 02:01:17'),(88,103,8,'1/2 teaspoon','2025-03-03 02:01:17','2025-03-03 02:01:17'),(89,106,9,'2 (5 ounce) cans','2025-03-03 02:09:57','2025-03-03 02:09:57'),(90,107,9,'2 tablespoons','2025-03-03 02:09:57','2025-03-03 02:09:57'),(91,108,9,'1 (10.75 ounce) can','2025-03-03 02:09:57','2025-03-03 02:09:57'),(92,109,9,'2 pound','2025-03-03 02:09:57','2025-03-03 02:09:57'),(93,110,9,'10 ounces','2025-03-03 02:09:57','2025-03-03 02:09:57'),(94,96,9,'1 cup','2025-03-03 02:09:57','2025-03-03 02:09:57'),(95,111,9,'1 (6 ounce) bag','2025-03-03 02:09:57','2025-03-03 02:09:57'),(96,112,9,'1 cup','2025-03-03 02:09:57','2025-03-03 02:09:57'),(97,80,10,'1, chopped','2025-03-03 02:38:48','2025-03-03 02:38:48'),(98,81,10,'1/2 teaspoon','2025-03-03 02:38:48','2025-03-03 02:38:48'),(99,113,10,'28 ounces','2025-03-03 02:38:48','2025-03-03 02:38:48'),(100,114,10,'1/2 teaspoon (or more, to taste)','2025-03-03 02:38:48','2025-03-03 02:38:48'),(101,74,10,'1 teaspoon','2025-03-03 02:38:48','2025-03-03 02:38:48'),(102,59,10,'6 large','2025-03-03 02:38:48','2025-03-03 02:38:48'),(103,115,10,'1/2 cup, crumbled','2025-03-03 02:38:48','2025-03-03 02:38:48'),(104,87,10,'1/4 cup, chopped','2025-03-03 02:38:48','2025-03-03 02:38:48'),(105,30,10,'2 cloves, minced','2025-03-03 02:38:48','2025-03-03 02:38:48'),(106,116,10,'2 tablespoons','2025-03-03 02:38:48','2025-03-03 02:38:48'),(107,66,10,'1 medium, chopped','2025-03-03 02:38:48','2025-03-03 02:38:48'),(108,117,10,'1 teaspoon','2025-03-03 02:38:48','2025-03-03 02:38:48'),(109,36,10,'1 teaspoon','2025-03-03 02:38:48','2025-03-03 02:38:48'),(110,118,10,'2 tablespoons','2025-03-03 02:38:48','2025-03-03 02:38:48'),(111,120,11,'2','2025-03-03 02:55:02','2025-03-03 02:55:02'),(112,121,11,'1/2 cup','2025-03-03 02:55:02','2025-03-03 02:55:02'),(113,122,11,'1/2 cup','2025-03-03 02:55:02','2025-03-03 02:55:02'),(114,123,11,'2 cups','2025-03-03 02:55:02','2025-03-03 02:55:02'),(115,124,11,'8-10','2025-03-03 02:55:02','2025-03-03 02:55:02'),(116,125,11,'2 tablespoon','2025-03-03 02:55:02','2025-03-03 02:55:02'),(117,32,11,'1/4 cup','2025-03-03 02:55:02','2025-03-03 02:55:02'),(118,34,11,'1/4 teaspoon','2025-03-03 02:55:02','2025-03-03 02:55:02'),(119,36,11,'1/4 teaspoon','2025-03-03 02:55:02','2025-03-03 02:55:02'),(120,81,12,'1/2 teaspoon','2025-03-03 03:47:20','2025-03-03 03:47:20'),(121,126,12,'1 cup','2025-03-03 03:47:20','2025-03-03 03:47:20'),(122,127,12,'4','2025-03-03 03:47:20','2025-03-03 03:47:20'),(123,41,12,'1 cup, sliced','2025-03-03 03:47:20','2025-03-03 03:47:20'),(124,128,12,'2 tablespoons','2025-03-03 03:47:20','2025-03-03 03:47:20'),(125,66,12,'1, sliced','2025-03-03 03:47:20','2025-03-03 03:47:20'),(126,129,12,'2','2025-03-03 03:47:20','2025-03-03 03:47:20'),(127,36,12,'1 teaspoon','2025-03-03 03:47:20','2025-03-03 03:47:20'),(128,131,13,'1','2025-03-03 03:52:42','2025-03-03 03:52:42'),(129,132,13,'4 slices','2025-03-03 03:52:42','2025-03-03 03:52:42'),(130,81,13,'1/2 teaspoon','2025-03-03 03:52:42','2025-03-03 03:52:42'),(131,133,13,'1 cup','2025-03-03 03:52:42','2025-03-03 03:52:42'),(132,134,13,'2 cups','2025-03-03 03:52:42','2025-03-03 03:52:42'),(133,135,13,'10','2025-03-03 03:52:42','2025-03-03 03:52:42'),(134,125,13,'1 tablespoon','2025-03-03 03:52:42','2025-03-03 03:52:42'),(135,32,13,'1/4 cup','2025-03-03 03:52:42','2025-03-03 03:52:42'),(136,136,13,'2 tablespoons','2025-03-03 03:52:42','2025-03-03 03:52:42'),(137,36,13,'1/4 teaspoon','2025-03-03 03:52:42','2025-03-03 03:52:42');
/*!40000 ALTER TABLE `recipeingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reciperating`
--

DROP TABLE IF EXISTS `reciperating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reciperating` (
  `ratingId` int unsigned NOT NULL AUTO_INCREMENT,
  `userId` int unsigned DEFAULT NULL,
  `recipeId` int unsigned DEFAULT NULL,
  `score` tinyint unsigned NOT NULL,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ratingId`),
  KEY `recipeId_idx` (`recipeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reciperating`
--

LOCK TABLES `reciperating` WRITE;
/*!40000 ALTER TABLE `reciperating` DISABLE KEYS */;
/*!40000 ALTER TABLE `reciperating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `reviewId` int unsigned NOT NULL AUTO_INCREMENT,
  `userId` int unsigned DEFAULT NULL,
  `recipeId` int unsigned DEFAULT NULL,
  `comment` text,
  `rating` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`reviewId`),
  KEY `recipe__index` (`recipeId`),
  KEY `user_id_index` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,1,1,'This is good',3,1,'2025-03-03 01:07:52','2025-03-03 01:07:52'),(2,3,3,'I love this recipe!',5,1,'2025-03-03 01:46:45','2025-03-03 01:46:45'),(3,2,3,'This is really good!',5,1,'2025-03-03 02:00:13','2025-03-03 02:40:55'),(4,2,4,'I would like to try this one!',4,1,'2025-03-03 02:08:59','2025-03-03 02:08:59'),(5,2,9,'I like it!',4,1,'2025-03-03 02:10:23','2025-03-03 02:10:23'),(6,3,5,'This is great!',4,1,'2025-03-03 02:37:37','2025-03-03 02:37:37'),(7,4,7,'This is really good!',4,1,'2025-03-03 02:54:03','2025-03-03 02:54:03'),(8,4,4,'30 minutes are not enough',3,1,'2025-03-03 02:55:45','2025-03-03 02:55:45'),(9,4,3,'The time is not accurate. ',2,1,'2025-03-03 03:46:17','2025-03-03 03:51:35');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `userId` int unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `userType` int DEFAULT NULL,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `userName_idx` (`userName`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'user1','user1@gmail.com','scrypt:32768:8:1$hxmEcN9CIJC9qWXx$578fab16b504900dfa48a4c0eb7cf035f3f9ab4122da506f801fcfcd09b1bebea59f0309b33b023ddd89e81994933ddb30d20845c45627fc678de7facbedfd02',3,'2025-03-02 15:47:53','2025-03-02 15:47:53'),(2,'user2','user2@gmail.com','scrypt:32768:8:1$4GiUrRJJS1BaaBHb$c2c5f8cd6a195bf65c9541bee03adfccbedd3414666cf9e536f07700cb5643068e56a82e1048834b005b20d2c5e59292af2924379b892b623af7d5a4f0c0dd4e',3,'2025-03-02 17:43:22','2025-03-02 17:43:22'),(3,'user3','user3@gmail.com','scrypt:32768:8:1$uPiCMhMhaIIRITuI$9f849d4320181a929b1ac262a6c5243bc8dd3beabac62a5bb93b0260e5c314e87bbfc585f71e481ca4bffb36be2abc32a730151dab7f89618692bb75a4b8258b',3,'2025-03-02 17:44:40','2025-03-02 17:44:40'),(4,'user4','user4@gmail.com','scrypt:32768:8:1$WKmHpEHI3ClO0csF$89a6afc7c89198736efee3eb5b09470e06a85d4e3aaf09935f979906b7d1783e1dab7ac2e6797ad40ff9eb7bb73065e405439c0658ea41cde3469fc2cf2f1120',3,'2025-03-02 18:47:53','2025-03-02 18:47:53');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useringredient`
--

DROP TABLE IF EXISTS `useringredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `useringredient` (
  `userIngredientId` int unsigned NOT NULL AUTO_INCREMENT,
  `ingredientId` int unsigned DEFAULT NULL,
  `userId` int unsigned DEFAULT NULL,
  `createTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modifyTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`userIngredientId`),
  UNIQUE KEY `user_ingredient_idx` (`userId`,`ingredientId`),
  KEY `ingredientId_idx` (`ingredientId`),
  KEY `userId_idx` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=158 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useringredient`
--

LOCK TABLES `useringredient` WRITE;
/*!40000 ALTER TABLE `useringredient` DISABLE KEYS */;
INSERT INTO `useringredient` VALUES (1,2,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(2,13,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(3,14,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(4,15,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(5,16,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(6,17,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(7,18,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(8,19,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(9,20,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(10,21,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(11,22,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(12,23,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(13,24,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(14,25,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(15,26,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(16,27,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(17,28,1,'2025-03-03 00:42:34','2025-03-03 00:42:34'),(18,40,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(19,41,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(20,42,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(21,43,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(22,44,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(23,45,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(24,46,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(25,47,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(26,48,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(27,49,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(28,50,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(29,51,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(30,52,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(31,53,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(32,54,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(33,55,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(34,56,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(35,57,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(36,58,3,'2025-03-03 01:47:55','2025-03-03 01:47:55'),(37,59,3,'2025-03-03 01:48:09','2025-03-03 01:48:09'),(38,39,3,'2025-03-03 01:48:46','2025-03-03 01:48:46'),(136,40,4,'2025-03-03 03:53:59','2025-03-03 03:53:59'),(137,41,4,'2025-03-03 03:53:59','2025-03-03 03:53:59'),(138,42,4,'2025-03-03 03:53:59','2025-03-03 03:53:59'),(146,50,4,'2025-03-03 03:53:59','2025-03-03 03:53:59'),(148,53,4,'2025-03-03 03:53:59','2025-03-03 03:53:59'),(149,137,4,'2025-03-03 03:53:59','2025-03-03 03:53:59'),(152,57,4,'2025-03-03 03:54:00','2025-03-03 03:54:00'),(153,58,4,'2025-03-03 03:54:00','2025-03-03 03:54:00'),(154,119,4,'2025-03-03 03:54:26','2025-03-03 03:54:26'),(155,104,4,'2025-03-03 03:54:26','2025-03-03 03:54:26'),(156,105,4,'2025-03-03 03:54:26','2025-03-03 03:54:26'),(157,93,4,'2025-03-03 03:54:52','2025-03-03 03:54:52');
/*!40000 ALTER TABLE `useringredient` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-28 21:08:27

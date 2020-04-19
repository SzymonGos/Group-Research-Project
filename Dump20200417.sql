CREATE DATABASE  IF NOT EXISTS `project_beer` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `project_beer`;
-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: project_beer
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `breweries`
--

DROP TABLE IF EXISTS `breweries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `breweries` (
  `BreweryID` int NOT NULL,
  `BreweryName` varchar(250) NOT NULL,
  `BreweryCity` varchar(50) NOT NULL,
  `BreweryCountry` varchar(50) NOT NULL,
  `BreweryNotes` text NOT NULL,
  `BreweryLogo` varchar(100) NOT NULL,
  PRIMARY KEY (`BreweryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `breweries`
--

LOCK TABLES `breweries` WRITE;
/*!40000 ALTER TABLE `breweries` DISABLE KEYS */;
INSERT INTO `breweries` VALUES (1,'BrewDog','Ellon','Scotland','In 2007 James and Martin started BrewDog with a mission to make other people as passionate about great craft beer as they were. In April 2007, in a godforsaken industrial estate in north east Scotland, BrewDog came howling into the world.',''),(2,'Beavertown','London','United Kingdom','We are driven by our passion for innovation and quality. We are dedicated to brewing beers that create an experience and crave big flavours and character in every brew. Our core range exemplifies our commitment to consistency and excellence whilst our Alpha, Seasonal and Tempus Project show our creative and innovative approach.',''),(3,'Siren Craft Brew','Wokingham','United Kingdom','Siren Craft Brew was born in 2013 with a simple idea in mind: to introduce exciting, full-ﬂavoured and forward-thinking beers to as many people as possible. There are now six Sirens of Siren Craft Brew. These Sirens characterise our flagship beers. They\'re adventurous but drinkable, designed to be accessible to those lured into craft beer, yet flavourful enough for those seasoned beer fans to return to time and time again.',''),(4,'Naparbier','Pamplona','Spain','Naparbier started in 2009 in Pamplona, Navarra, Spain — a place probably best known for bullfights and Hemingway, and now great beer. The name is a combination of the Basque word for Navarra (Napar) and the German name for beer (bier, of course).',''),(5,'Magic Rock Brewing','Huddersfield','United Kingdom','Inspired by local brewing traditions and the vibrant US craft beer scene, Magic Rock Brewing is the culmination of a lifelong passion for beer. Richard Burhouse (aided by head brewer Stuart Ross) started the brewery in 2011 in an old out-building of the family business (an importer of crystals and natural gifts) in Huddersfield, West Yorkshire.',''),(6,'Peroni','Rome','Italy','In 1963, the Peroni family had a vision to create a beer that would embody Italian values of quality and craftsmanship. Brewed with the same flair and attention to detail through three generations of master brewers, Peroni Nastro Azzurro uses only the finest ingredients, including our exclusive Nostrano dell’Isola maize.',''),(7,'Heineken','Zoeterwoude','The Netherlands','HEINEKEN we are brewers first and foremost. Our diverse range of beers and ciders are perfected in 167 breweries around the world and enjoyed by consumers in more than 190 countries.',''),(8,'Kronenbourg','Obernai','France','Kronenbourg, started in 1664 has the same great taste today as it’s always done, a little something down to the high quality Strisselspalt hops used in its creation.',''),(9,'Brooklyn Brewery','New York (Brooklyn)','United States of America','The Brooklyn Brewery started with a dream to return brewing to Brooklyn, once a powerhouse of American beer production. Today our beers travel to more than half the United States and over thirty countries. Our James Beard Award-winning Brewmaster Garrett Oliver and his team brew everything from classic styles to bold experiments and collaborate with brewers, innovators and artists from around the globe.',''),(10,'Sol','Monterrey','Mexico','Born under the Mexican sun in 1899, Sol is a brand with a strong heritage and a close association with sunshine. Drinking a Sol beer feels like a ray of sunshine, light and easy. Perfect for sharing with friends on a sunny day.',''),(11,'Wiper and True','Bristol','United Kingdom','From humble beginnings on a kitchen stove, Wiper and True grew out of a love of experimentation. They tinkered and tweaked craft beer recipes, roasting their own malts, adding wild ingredients and even ageing their brews on different kinds of wood to produce unique flavours and aromas.',''),(12,'O Brother','Kilcoole','Ireland','O Brother Brewing is a family owned brewery from Kilcoole, County Wicklow. Back in 2011, three Brothers got put their minds together to create this independent brewery. Exciting beer with the best quality ingredients, packed with flavour: Beer we love drinking ourselves, always bold, always interesting.',''),(13,'Cloudwater','Manchester','United Kingdom','Our work at Cloudwater starts with the intention of helping you relax and unwind with the finest quality modern beers we can make. We employ all the passion, skills, dreams, and experience of our team, and harness up-to-the-minute brewing science and techniques, out of respect for the ingredients our suppliers work hard to grow and process, and out of our gratitude for your support and trust.',''),(14,'Barrier','Oceanside, New York','United States of America','Barrier Brewing Co. is located along the south shore of Long Island in beautiful Oceanside, NY. Our first batches started rolling out to the public in June of 2010. The first year of production yielded more than 700bbls of beer using our 1-barrel system. In 2012, the brewery was relocated to a larger space and upgraded to a 5-barrel brewhouse, with 1500bbl of initial capacity',''),(15,'Pressure Drop','London','United Kingdom','Ben, Sam & Graham started Pressure Drop in 2013, making 50L batches in Graham\'s garden shed.  After upgrading to a 5BBL kit and spending a few years in a railway arch in Hackney (yep, we are the stereotype), we\'ve found our home in Tottenham.',''),(16,'Windsor & Eton','Windsor','United Kingdom','Windsor and Eton are already famous for many things. The castle, college, river, racecourse and of course the Royal connections. In 2010 the four of us wanted to add beer to the list. In fact we had a wild idea to make beer the top attraction. So we brought brewing back to the heart of Windsor.',''),(17,'Rebellion Brewing Co.','Marlow','United Kingdom','The story of the Rebellion Brewery starts with two friends, Tim Coombes and Mark Gloyens. Attending school together in Marlow at a time when the old Wethered Brewery was in full production, the sweet aromas of malt were a constant reminder that Marlow was an active brewing town. Years later, Tim and Mark discussed the possibility of a joint business venture, and with the closure of the Wethered Brewery in 1987, the idea of starting a new brewery and reviving Marlow\'s brewing tradition was born. After a couple of years researching, planning, and several admirable attempts to reinstate a brewery on the original Wethered site, the Rebellion Brewery was eventually established on the Rose Industrial Estate in Marlow Bottom in April 1993. In 1999 the brewery moved to its current location on Bencombe Farm, occupying the old grainstore and other redundant farm buildings.',''),(18,'Budweiser Budvar','Ceske Budejovice','Czech Republic','We are the national brewery. We are a good manager of beer-making skills and knowledge. We are spreading fame and joy of high-quality Czech beer.',''),(19,'Finback','Queens, NY','United States of America','Founded in 2011, Finback Brewery is born from a passion for brewing and experimentation. After a long search combing through back streets, along canals, under bridges and industrial no-mans lands, braving collapsing roofs and cardboard box jungles the brewery found a space in Queens in 2013. Armed with a 20 barrel brewhouse, Finback released its first beers brewed in Queens in January 2014. The brewery is proud to call Queens home and become a part of the diverse and rich culture of the borough. We’re excited to be one of NYC’s newest breweries and to make NYC culture even better.',''),(20,'The Bruery','Placentia, CA','United States of America','The Bruery is a boutique craft brewery located in Orange County, CA specializing in barrel aged and experimental ales. Founded as a small, friend & family run business in 2008, The Bruery takes its unique moniker from founder Patrick Rue’s family surname.',''),(21,'Signature Brew','London','United Kingdom','We\'re on a mission to revolutionise the quality of beer at live music events by bringing our exciting core range of music-inspired craft beers (Roadie, Studio Lager, Backstage IPA and Nightliner) to the best bars, venues and festivals in the UK and beyond.','');
/*!40000 ALTER TABLE `breweries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetails`
--

DROP TABLE IF EXISTS `orderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetails` (
  `DetailsID` int NOT NULL,
  `Quantity` int NOT NULL,
  `ProductID` int NOT NULL,
  `OrderID` int NOT NULL,
  PRIMARY KEY (`DetailsID`),
  KEY `ProductID` (`ProductID`),
  KEY `OrderID` (`OrderID`),
  CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`ProductID`) REFERENCES `products` (`ProductID`),
  CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetails`
--

LOCK TABLES `orderdetails` WRITE;
/*!40000 ALTER TABLE `orderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL,
  `OrderDate` timestamp NOT NULL,
  `OrderAmount` float NOT NULL,
  `UserID` int NOT NULL,
  `PaymentID` int NOT NULL,
  PRIMARY KEY (`OrderID`),
  KEY `UserID` (`UserID`),
  KEY `PaymentID` (`PaymentID`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`UserID`) REFERENCES `users` (`UserId`),
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`PaymentID`) REFERENCES `payment` (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentID` int NOT NULL,
  `PaymenyAmount` float NOT NULL,
  `PaymentDate` timestamp NOT NULL,
  `CardNumber` int NOT NULL,
  `CardName` varchar(100) NOT NULL,
  `CardExpDate` int NOT NULL,
  `CardCVV` int NOT NULL,
  PRIMARY KEY (`PaymentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `ProductID` int NOT NULL,
  `ProductName` varchar(45) NOT NULL,
  `ProdcutsPrice` float NOT NULL,
  `ProductVolume` float NOT NULL,
  `ProductABV` float NOT NULL,
  `ProductShortDesc` varchar(1000) NOT NULL,
  `ProductLongDesc` text NOT NULL,
  `ProductThumb` varchar(100) NOT NULL,
  `ProductImage` varchar(100) NOT NULL,
  `Product3DModel` varchar(100) NOT NULL,
  `ProductStockLevel` int NOT NULL,
  `ProductTypesID` int NOT NULL,
  `ProductBreweryID` int DEFAULT NULL,
  PRIMARY KEY (`ProductID`),
  KEY `ProductTypesID` (`ProductTypesID`),
  KEY `products_ibfk_2` (`ProductBreweryID`),
  CONSTRAINT `products_ibfk_1` FOREIGN KEY (`ProductTypesID`) REFERENCES `producttype` (`ProductTypesID`),
  CONSTRAINT `products_ibfk_2` FOREIGN KEY (`ProductBreweryID`) REFERENCES `breweries` (`BreweryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Punk IPA',2.5,330,5.6,'Citrusy, fruity IPA by Brewdog sure to set all those punk hearts aflame.','BrewDog’s flagship IPA. Layered with new world hops to create an explosion of tropical fruit and an all-out riot of grapefruit, pineapple and lychee before a spiky bitter finish, this is transatlantic fusion running at the fences of lost empires. Nothing will ever be the same again.','thumbnail_here','image_here','midle_here',150,1,1),(2,'Neck Oil Session IPA',3,330,4.3,'Citrusy & fruity IPA that’s light and crisp on the palette another success from Beavertown.','Picture sucking a few of these down in front of the barbecue in a park on a sun-shiny day – that’s this beer’s raison d’etre. Light, crisp and refreshing with punchy notes of citrus peel and light pine, Neck Oil is nicely balanced with slightly sweet biscuity malt throughout, finishing with a medium grapefruit bitterness. And at 4.3%, this is surely one you can sit on all day.','thumbnail_here','image_here','midle_here',120,1,2),(3,'Soundwave IPA',3.5,330,5.6,'Dangerously drinkable IPA, tropical fruit sweetness that is perfectly balanced with a bitter element.','The driest of Sirens regulars, Soundwave smacks you about with intense grapefruit, peach and mango hop flavours before leading into a lengthy, dry and resinous finish. The kind of beer you’d wanna suck down while chowing on a tasty salt beef sandwich or a citrusy stir-fry.','thumbnail_here','image_here','midle_here',120,1,3),(4,'Hope Shine New England IPA',5.5,440,6.8,'A good floral/herbal IPA made with love and very tasty.','A good Hazy IPA from Spain, best had when out and enjoying the sunshine with floral notes and a herbal undertone. One to watch right here!','thumbnail_here','image_here','midle_here',80,1,4),(5,'Saucery Session IPA',3.5,330,3.9,'Proper tasty session beer. The taste of pine lingers afterwards.','From the brewery: A supernatural gluten-free session IPA made for drinking all day long. Lightly sweet and malty Golden Promise™ malt, a balanced bitterness and layers of tropical fruit filled Citra and Ekuanot hops in whirlpool and dry hop. Fermented with London Fog Ale yeast to add fruitier body and enhanced malt and hop profile.','thumbnail_here','image_here','midle_here',100,1,5),(6,'Nastro Azzurro',4,620,5.1,'Crisp and refreshing lager with unmistakable character.','Only ever made and bottled in Italy at our breweries in Rome, Bari and Padova, Peroni Nastro Azzurro is brewed using the creativity and flair of Italians. Blending the finest hops with two-row spring planted barley and a quarter of Italian maize results in a beer with a uniquely crisp and refreshing taste. Brewed in Italy since 1963, a delicate balance of bitterness and citrus aromatic notes with a crisp, dry finish.','thumbnail_here','image_here','midle_here',500,2,6),(7,'Heineken Lager',4,620,5,'That classic Heineken taste you know and love.','You know it, you love it, it’s that classic green bottle of Heineken perfection. A great beer to be enjoyed at any time of year. Grab one today and add another green bottle to your collection.','thumbnail_here','image_here','midle_here',650,2,7),(8,'1664 Lager',4.5,660,5,'Light clean grapefruit and hint of candy fruit.','Kronenbourg 1664\'s pleasure is in its light lemon and herbal flavours from the Alsace hops, and clean bittersweet finish. Kronenbourg 1664 is a Premium Lager at 5.0%. It is brewed with the aromatic Strisselspalt hop from Alsace, which gives it a unique aroma and satisfying taste. All of which makes it the superior tasting premium lager. Kronenbourg 1664 is a full bodied, golden, bittersweet lager with a distinct citrus hop flavour. A Taste Supreme.','thumbnail_here','image_here','midle_here',500,2,8),(9,'Brooklyn Lager',4,660,5.2,' Unites traditional flavors of toffee, toast, caramel and a dry-hopped aroma full of grapefruit, flowers and pine','Brooklyn Lager is amber-gold in colour and displays a firm malt centre supported by a refreshing bitterness and floral hop aroma, with caramel malts in the finish. The aromatic qualities of the beer are enhanced by “dry-hopping”, the centuries-old practice of steeping the beer with fresh hops as it undergoes a long, cold maturation. In the late 1800\'s Brooklyn was one of the largest brewing centres in the country, home to more than 45 breweries.','thumbnail_here','image_here','midle_here',700,2,9),(10,'Sol. Lager Beer',3.5,650,4.2,'A classic Mexican light beer that’s good for parties and food.','Sol is the authentic Mexican beer, born in 1899 in Orizba, near the highest point in Mexico. The original brewer discovered a refreshing and light recipe that is still used to this day. Rays of sunlight peeped through the breweries roof onto the transparent bottle inspiring the name Sol, in honour of the sun. Sol uses special light resistant hops that preserve the refreshing taste even on the sunniest of days.','thumbnail_here','image_here','midle_here',550,2,10),(11,'Milk Shake Stout',2.5,330,5.6,'A rich & creamy stout with great flavour.','Copious chocolate malts laced with vanilla to create a luxurious, milkshake-rich dark beer.','thumbnail_here','image_here','midle_here',200,3,11),(12,'The Nightcrawler Milk Stout',3.5,330,4.8,'Straight and simple good milk stout. Give it a go!','As with their session IPA it is solid as hell and gives you everything you want from the style but with an absolute drink ability. You could quite easily drink four or five of these in a row. This Stout is lovingly brewed by the fantastic O Brother.','thumbnail_here','image_here','midle_here',180,3,12),(13,'Step Up English Stout',4,330,5,'A new take on Stout for a good cause.','Hold on a second! It’s 2020 and we’re not here to talk diversity, we’re here to make a difference. Step Up is a delicious beer that is gonna help change who the beer industry represents, and what it needs to be. With 5% of the proceeds donated to charities and causes that help those facing society’s biggest hurdles, and the remaining proceeds split 50/50 between between Rock Leopard and Cloudwater, every can and every glass helps us make a difference.','thumbnail_here','image_here','midle_here',120,3,13),(14,'Sins Forbidden Apple Stout',3,330,6.66,'Cider meets beer in a stout? Strange but devilishly enjoyable.','This 7th Anniversary Celebration takes inspiration from the seven deadly sins. Using some artistic license and 1000l of Apple Juice, ‘Sins’ is a beer/cider hybrid, a style sometimes referred to as a Graf. Even more unusually, we’ve taken this concept into a robust stout recipe!','thumbnail_here','image_here','midle_here',666,3,3),(15,'Morticia Oak Aged Imperial Stout',9,473,10.1,'A beautiful smooth dark stout with lovely balance.','Morticia is generally aged in oak. Morticia is the end. Once experienced, other beer is bland and insipid. Black as a moonless night, her aroma tempting, her strength deceptively powerful. She is unrestrained at youth and learns mercy only with time. Morticia overpowers the senses, then warms the soul. Nursing each sip, you will be transformed. And as you reach the height of her enchantment, the pinnacle of ecstasy; she will break your neck and eat you.','thumbnail_here','image_here','midle_here',90,3,14),(16,'Gamma Ray Pale Ale',3,330,5.4,'Crisp and clean, classic American pale ale.','The concept was to create a juicy tropical beer. A brew you can sit on and drink all day, rammed with juicy malts and huge tropical aromas of mango and grapefruit. Massive additions of whole leaf American hops are added in ever increasing numbers at the end of the boil giving huge hop flavour. The beer is then dry hopped for days, driving the punchy aromas so you can smell it from miles away!','thumbnail_here','image_here','midle_here',160,4,2),(17,'Pale Fire Pale Ale',2.5,330,4.8,'Nice fruity session pale. Great for a summer BBQ.','Pressure Drop like to mix up the aroma hops in their Pale fire and you’ll find that Pale Fire can come in different versions. It’s been hopped with Mosaic and Amarillo, Amarillo and Citra, Nelson Sauvin and others including the legendary Hop X, an English trial-hop being developed by Dr Peter Darby at Wye Hops.','thumbnail_here','image_here','midle_here',250,4,15),(18,'Guardsman Bitter',2.5,500,4.2,'The Windsor & Eton Classic that everyone knows and loves.','The first beer brewed in Windsor for more than 80 years was launched on St George’s Day 2010 – it remains one of our best sellers to this day. A lovely copper coloured session strength ale with a tangy taste, yet a really smooth fresh hop finish, ensuring that it is very ‘quaffable’.','thumbnail_here','image_here','midle_here',300,4,16),(19,'Rebellion Red Ale',4,500,4.5,'A deep Red Ale that pairs perfectly with a good steak.','One of the five seasonal ales delivered by the award-winning Rebellion Beer Company, the Red Ale is a perfect complement to autumnal evenings. Its deep, crimson hue is enriched with a blend of crystal and roasted malts giving the beer its rich flavour, while the Goldings, Fuggles and Cascade hops balance it with a dose of citrus and fruit aftertaste.','thumbnail_here','image_here','midle_here',260,4,17),(20,'Inhaler Hoppy Pale Ale',2,330,4.5,'Well balanced between “hoppy-ness” and malt flavours. Put’s us in a Hoppy Place.','Things move quickly in the beer world and Magic Rock’s latest pale ale/IPA hybrid is designed to showcase some of the newer hop varieties which work so well in modern hop forward beers. Pale malt, a little wheat, a little crystal malt, low bitterness and then six different hops! Super fruity, super ripe, super juicy and super drinkable. Breathe it in!','thumbnail_here','image_here','midle_here',80,4,5),(21,'Original Czech Pilsner',2.5,330,5,'This Lager is lovingly brewed by the fantastic Budvar. ','Budweiser Budvar is the original and is brewed in the Czech Republic in the town of Budweis. It is owned by the people of the Czech Republic. And what a lovely Pilsner they’ve created for us!','thumbnail_here','image_here','midle_here',500,5,18),(22,'Dancing Bier Bavarian Pils',2.5,330,4.5,'Clean, refreshing, pleasantly crisp, malty sweet, average carbonation, thin body.','Magic Rock’s first take on this beer style. Lager, Munich and Cara malts create the pale colour and classic backbone, while a concoction of Germany’s finest Strisselspalt, Herrsbrucker and Hallertau hops deliver bitterness and herbal hit. A lightness of body and spritzy carbonation makes the beer dance on your palate while a big whack of aromatic dry hopping gives this Bavarian bear its claws…. PROST!','thumbnail_here','image_here','midle_here',410,5,5),(23,'Crispy Days Pilsner',8,473,4.9,'For the Pilsner lovers this smashes it! Light, crisp, clean, slightly hoppy & the right sweetness!','This Pilsner is lovingly brewed by the fantastic Finback. Crispy Pilsner dry hopped with Tettnanger, EKG, Herkules and Saaz. This is our staple Pilsner in the summertime! Sure to make a great splash at your next event. ','thumbnail_here','image_here','midle_here',120,5,19),(24,'Birdie Birdie Saison Yeast BA Pilsner',11,473,7.6,'Great Pilsner with a big hit and great pedigree.','The second part of a collaboration series with our good friends and neighbours from Green Cheek Beer co. Birdie Birdie was aged in French Oak puncheons, fermented with Trois yeast, and then lagered for six weeks prior to dry hopping. The result was worth the wait. An easy drinking, mixed culture Saison-Style Pilsner – slightly hopped, a tad salty, with a refreshing citrus edge.','thumbnail_here','image_here','midle_here',550,5,20),(25,'Studio Pilsner',2.5,330,4,'Somewhat crisp and slightly tart with pale malt, subtle saison yeast, slight funkiness, hint of spritz wine, almost flat carbonation. Too weird for a pilsner but it works better than expected.','Based on one of the most traditional styles of beer in the world, Studio Pilsner is an homage to time and refinement. The highest quality European ingredients combined with impeccable patience result in the perfect, light lager. Noble hop Saaz and a touch of rye work in tandem to provide enticing subtle flavours and a well-rounded body, the aroma holds floral hints followed by a pleasing bitterness.','thumbnail_here','image_here','midle_here',200,5,21),(26,'Nanny State',1.5,330,0.5,'Boldly hoppy, with some nice tropical notes and a lovely ruby colour.','BrewDog is widely known for their strongest beers, and Nanny State was brewed in response to (silly) complaints in the media that their high ABV beers encouraged irresponsible drinking. Low alcohol beers are improving in both quality and variety, from pilsner to wheat beer, but this 0.5% ABV offering will appeal to lovers of BrewDog\'s characteristic style, using Cascade, Columbus, Centennial, Simcoe and Amarillo hops. With a light, bitter body and flavours of citrus and pine, Nanny State is a refreshing low alcohol option.','thumbnail_here','image_here','midle_here',150,6,1),(27,'Blonde',2,330,0,'Its aroma of honey and taste of summer elevates it above other alcohol-free beers.','This is Leffe Blonde without the alcohol. Period. The smell and taste is close to being identical. It’s a mite sweeter than the alcoholic version and there’s a strong biscuit maltiness to finish but otherwise, this is the same Leffe Blonde you all remember, minus the alcohol.','thumbnail_here','image_here','midle_here',200,6,15),(28,'Wit Blanche',1.75,330,0,'Very refreshing, and has the citrus notes of real Hoegaarden, really nice light refreshing wheat beer.','At long last Hoegaarden have made an Alcohol-Free version of their classic Belgian Wit beer, it\'s all very exciting . You get the same cloudy pour with the distinct orange peel and coriander flavour, although it is a tad sweeter than the original Hoegaarden have done a mighty fine job of taking the alcohol out of their world famous beer, enjoy yours cold with the optional addition of an orange slice.','thumbnail_here','image_here','midle_here',225,6,15),(29,'Raspberry Blitz',2,330,0.5,'If you like a fruit beer that is not at all sweet, but tart and refreshing, this is the one for you.','Raspberry Blitz – BrewDog – Alcohol Free/Sour – 0.5% Prepare for the Raspberry Blitz! Coming at you like a flash out of the blue, Brewdog’s alcohol-free, Lacto-sour fruit beer. On the nose there’s raspberry, lacto-sourness and a little funk. To taste there’s a raspberry front and centre with yogurt lacto-sourness behind it followed by a light, fizzy and funky finish. Looking to expand your alcohol-free repertoire? Look no further!','thumbnail_here','image_here','midle_here',175,6,1),(30,'Blue Alcohol-Free Beer',2,275,0.05,'Beck\'s Blue is a light, crisp and refreshing non-alcoholic alternative to beer, with no compromise on taste.','Golden in colour, Beck\'s Blue is a classic German-style pilsner lager with over 140 years of heritage. Originally brewed in Germany according to the Reinheitsgebot, the German purity law of 1516, with only 4 natural ingredients: barley, hops, yeast and water. Beck\'s Blue goes through the same brewing process as traditional Beck\'s and contains the same four natural ingredients - barley, hops, yeast and water. The only difference being that Beck\'s Blue undergoes de-alcoholisation, so it\'s alcohol free.','thumbnail_here','image_here','midle_here',350,6,15);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producttype`
--

DROP TABLE IF EXISTS `producttype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `producttype` (
  `ProductTypesID` int NOT NULL,
  `ProductTypesName` varchar(25) NOT NULL,
  PRIMARY KEY (`ProductTypesID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producttype`
--

LOCK TABLES `producttype` WRITE;
/*!40000 ALTER TABLE `producttype` DISABLE KEYS */;
INSERT INTO `producttype` VALUES (1,'IPA'),(2,'LAGER'),(3,'STOUT'),(4,'ALE'),(5,'PILSNER'),(6,'Non/Low Alcohol');
/*!40000 ALTER TABLE `producttype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `UserId` int NOT NULL,
  `UserEmail` varchar(100) NOT NULL,
  `UserPassword` varchar(256) NOT NULL,
  `UserFirstName` varchar(50) NOT NULL,
  `UserLastName` varchar(50) NOT NULL,
  `UserAddress1` varchar(50) NOT NULL,
  `UserAddress2` varchar(50) NOT NULL,
  `UserCity` varchar(50) NOT NULL,
  `UserPostCode` varchar(8) NOT NULL,
  `UserPhone` varchar(20) NOT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'project_beer'
--

--
-- Dumping routines for database 'project_beer'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-17 15:25:36

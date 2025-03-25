-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: hrdb2019
-- ------------------------------------------------------
-- Server version	8.4.3

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
-- Temporary view structure for view `view_emp_mgr`
--

DROP TABLE IF EXISTS `view_emp_mgr`;
/*!50001 DROP VIEW IF EXISTS `view_emp_mgr`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_emp_mgr` AS SELECT 
 1 AS `MGR_ID`,
 1 AS `MGR_NAME`,
 1 AS `EMP_ID`,
 1 AS `EMP_NAME`,
 1 AS `DEPT_ID`,
 1 AS `DEPT_NAME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_emp_vacation`
--

DROP TABLE IF EXISTS `view_emp_vacation`;
/*!50001 DROP VIEW IF EXISTS `view_emp_vacation`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_emp_vacation` AS SELECT 
 1 AS `NO`,
 1 AS `EMP_ID`,
 1 AS `EMP_NAME`,
 1 AS `HIRE_DATE`,
 1 AS `SALARY`,
 1 AS `COUNT`,
 1 AS `VCOUNT`,
 1 AS `DEPT_ID`,
 1 AS `DEPT_NAME`,
 1 AS `UNIT_NAME`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_order_list`
--

DROP TABLE IF EXISTS `view_order_list`;
/*!50001 DROP VIEW IF EXISTS `view_order_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_order_list` AS SELECT 
 1 AS `cid`,
 1 AS `size`,
 1 AS `qty`,
 1 AS `id`,
 1 AS `name`,
 1 AS `phone`,
 1 AS `email`,
 1 AS `zipcode`,
 1 AS `address`,
 1 AS `pid`,
 1 AS `pname`,
 1 AS `price`,
 1 AS `info`,
 1 AS `image`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_cart_list`
--

DROP TABLE IF EXISTS `view_cart_list`;
/*!50001 DROP VIEW IF EXISTS `view_cart_list`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_cart_list` AS SELECT 
 1 AS `cid`,
 1 AS `size`,
 1 AS `qty`,
 1 AS `id`,
 1 AS `zipcode`,
 1 AS `address`,
 1 AS `pid`,
 1 AS `pname`,
 1 AS `price`,
 1 AS `sprice`,
 1 AS `info`,
 1 AS `image`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_sum_salary`
--

DROP TABLE IF EXISTS `view_sum_salary`;
/*!50001 DROP VIEW IF EXISTS `view_sum_salary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_sum_salary` AS SELECT 
 1 AS `NO`,
 1 AS `YEAR`,
 1 AS `DEPT_ID`,
 1 AS `SALARY`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `view_emp_mgr`
--

/*!50001 DROP VIEW IF EXISTS `view_emp_mgr`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_emp_mgr` AS select `e`.`emp_id` AS `MGR_ID`,`e`.`emp_name` AS `MGR_NAME`,`m`.`emp_id` AS `EMP_ID`,`m`.`emp_name` AS `EMP_NAME`,`d`.`dept_id` AS `DEPT_ID`,`d`.`dept_name` AS `DEPT_NAME` from ((`emp` `e` join `emp` `m`) join `department` `d`) where ((`e`.`emp_id` = `m`.`MGR`) and (`m`.`dept_id` = `d`.`dept_id`)) order by `e`.`emp_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_emp_vacation`
--

/*!50001 DROP VIEW IF EXISTS `view_emp_vacation`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_emp_vacation` AS select row_number() OVER (ORDER BY `e`.`emp_id` )  AS `NO`,`e`.`emp_id` AS `EMP_ID`,`e`.`emp_name` AS `EMP_NAME`,`e`.`hire_date` AS `HIRE_DATE`,`e`.`salary` AS `SALARY`,ifnull(`v`.`COUNT`,0) AS `COUNT`,ifnull(`v`.`VCOUNT`,0) AS `VCOUNT`,`d`.`dept_id` AS `DEPT_ID`,`d`.`dept_name` AS `DEPT_NAME`,`u`.`unit_name` AS `UNIT_NAME` from (((`employee` `e` left join (select `vacation`.`emp_id` AS `EMP_ID`,count(`vacation`.`emp_id`) AS `COUNT`,sum(`vacation`.`duration`) AS `VCOUNT` from `vacation` group by `vacation`.`emp_id`) `v` on((`e`.`emp_id` = `v`.`EMP_ID`))) join `department` `d` on((`e`.`dept_id` = `d`.`dept_id`))) left join `unit` `u` on((`d`.`unit_id` = `u`.`unit_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_order_list`
--

/*!50001 DROP VIEW IF EXISTS `view_order_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_order_list` AS select `sc`.`CID` AS `cid`,`sc`.`SIZE` AS `size`,`sc`.`QTY` AS `qty`,`sm`.`ID` AS `id`,`sm`.`NAME` AS `name`,`sm`.`PHONE` AS `phone`,concat(`sm`.`EMAILNAME`,'@',`sm`.`EMAILDOMAIN`) AS `email`,`sm`.`ZIPCODE` AS `zipcode`,`sm`.`ADDRESS` AS `address`,`sp`.`PID` AS `pid`,`sp`.`PNAME` AS `pname`,`sp`.`PRICE` AS `price`,`sp`.`DESCRIPTION` AS `info`,concat('http://3.35.233.94:9000/',json_unquote(json_extract(`sp`.`UPLOAD_FILE`,'$[0]'))) AS `image` from ((`shoppy_cart` `sc` join `shoppy_member` `sm`) join `shoppy_product` `sp`) where ((`sc`.`ID` = `sm`.`ID`) and (`sc`.`PID` = `sp`.`PID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_cart_list`
--

/*!50001 DROP VIEW IF EXISTS `view_cart_list`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cart_list` AS select `sc`.`CID` AS `cid`,`sc`.`SIZE` AS `size`,`sc`.`QTY` AS `qty`,`sm`.`ID` AS `id`,`sm`.`ZIPCODE` AS `zipcode`,`sm`.`ADDRESS` AS `address`,`sp`.`PID` AS `pid`,`sp`.`PNAME` AS `pname`,`sp`.`PRICE` AS `price`,format(`sp`.`PRICE`,0) AS `sprice`,`sp`.`DESCRIPTION` AS `info`,concat('http://3.35.233.94:9000/',json_unquote(json_extract(`sp`.`UPLOAD_FILE`,'$[0]'))) AS `image` from ((`shoppy_cart` `sc` join `shoppy_member` `sm`) join `shoppy_product` `sp`) where ((`sc`.`ID` = `sm`.`ID`) and (`sc`.`PID` = `sp`.`PID`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_sum_salary`
--

/*!50001 DROP VIEW IF EXISTS `view_sum_salary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_sum_salary` AS select row_number() OVER (ORDER BY `e`.`YEAR` )  AS `NO`,`e`.`YEAR` AS `YEAR`,`e`.`DEPT_ID` AS `DEPT_ID`,`e`.`SALARY` AS `SALARY` from (select `t1`.`NO` AS `NO`,`t1`.`YEAR` AS `YEAR`,`t1`.`DEPT_ID` AS `DEPT_ID`,`t1`.`SALARY` AS `SALARY` from (select row_number() OVER (ORDER BY sum(`employee`.`salary`) desc )  AS `NO`,left(`employee`.`hire_date`,4) AS `YEAR`,`employee`.`dept_id` AS `DEPT_ID`,sum(`employee`.`salary`) AS `SALARY` from `employee` where (left(`employee`.`hire_date`,4) = '2013') group by `YEAR`,`employee`.`dept_id`) `t1` where (`t1`.`NO` = 1) union select `t1`.`NO` AS `NO`,`t1`.`YEAR` AS `YEAR`,`t1`.`DEPT_ID` AS `DEPT_ID`,`t1`.`SALARY` AS `SALARY` from (select row_number() OVER (ORDER BY sum(`employee`.`salary`) desc )  AS `NO`,left(`employee`.`hire_date`,4) AS `YEAR`,`employee`.`dept_id` AS `DEPT_ID`,sum(`employee`.`salary`) AS `SALARY` from `employee` where (left(`employee`.`hire_date`,4) = '2014') group by `YEAR`,`employee`.`dept_id`) `t1` where (`t1`.`NO` = 1) union select `t1`.`NO` AS `NO`,`t1`.`YEAR` AS `YEAR`,`t1`.`DEPT_ID` AS `DEPT_ID`,`t1`.`SALARY` AS `SALARY` from (select row_number() OVER (ORDER BY sum(`employee`.`salary`) desc )  AS `NO`,left(`employee`.`hire_date`,4) AS `YEAR`,`employee`.`dept_id` AS `DEPT_ID`,sum(`employee`.`salary`) AS `SALARY` from `employee` where (left(`employee`.`hire_date`,4) = '2015') group by `YEAR`,`employee`.`dept_id`) `t1` where (`t1`.`NO` = 1)) `e` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-17 10:46:43

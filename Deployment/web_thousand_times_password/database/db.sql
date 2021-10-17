-- --------------------------------------------------------
--                                                       --
--             Commands to recreate database             --
--                                                       --
-- --------------------------------------------------------

CREATE DATABASE DetentionBarracks;
USE DetentionBarracks;
CREATE USER 'devAccount'@'localhost' IDENTIFIED BY 'logmeinnnn';
CREATE USER 'devAccount'@'%' IDENTIFIED BY 'logmeinnnn';
GRANT SELECT ON DetentionBarracks.* to 'devAccount'@'%';
GRANT SELECT ON DetentionBarracks.* to 'devAccount'@'localhost';
FLUSH PRIVILEGES;
-- --------------------------------------------------------
--                                                       --   
--             Database: `DetentionBarracks`             --
--                                                       --
-- --------------------------------------------------------

--
-- Table structure for table `user`
--
 
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_password` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Indexes for table `user`

ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

-- AUTO_INCREMENT for table `user`

ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

-- INSERT login credentials for CTF

INSERT INTO user(user_id,user_name,user_password) VALUES (1,'devAccount','logmeinnnn');

--
-- Database: `wemall`
--

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_access`
--

CREATE TABLE IF NOT EXISTS `dbprefix_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_admin`
--

CREATE TABLE IF NOT EXISTS `dbprefix_admin` (
`id` int(10) unsigned NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_alipay`
--

CREATE TABLE IF NOT EXISTS `dbprefix_alipay` (
`id` int(11) NOT NULL,
  `alipayname` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '支付宝名称',
  `partner` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '合作身份者id',
  `key` varchar(100) CHARACTER SET utf8 DEFAULT NULL COMMENT '安全检验码'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_good`
--

CREATE TABLE IF NOT EXISTS `dbprefix_good` (
`id` int(10) unsigned NOT NULL,
  `menu_id` int(11) NOT NULL,
  `sort` int(11) NOT NULL,
  `name` text NOT NULL,
  `price` text NOT NULL,
  `old_price` text NOT NULL,
  `image` text NOT NULL,
  `detail` text NOT NULL,
  `status` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_info`
--

CREATE TABLE IF NOT EXISTS `dbprefix_info` (
`id` int(10) unsigned NOT NULL,
  `name` text NOT NULL,
  `notification` text NOT NULL,
  `theme` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dbprefix_info`
--

INSERT INTO `dbprefix_info` (`id`, `name`, `notification`, `theme`) VALUES
(1, 'wemall', '欢迎来到wemall世界！！！', 'default');

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_mail`
--

CREATE TABLE IF NOT EXISTS `dbprefix_mail` (
`id` int(10) unsigned NOT NULL,
  `smtp` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `on` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_menu`
--

CREATE TABLE IF NOT EXISTS `dbprefix_menu` (
`id` int(10) unsigned NOT NULL,
  `name` text NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_node`
--

CREATE TABLE IF NOT EXISTS `dbprefix_node` (
`id` smallint(6) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_order`
--

CREATE TABLE IF NOT EXISTS `dbprefix_order` (
`id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `orderid` text NOT NULL,
  `totalprice` text NOT NULL,
  `pay_style` text NOT NULL,
  `pay_status` text NOT NULL,
  `note` text NOT NULL,
  `order_status` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `cartdata` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_role`
--

CREATE TABLE IF NOT EXISTS `dbprefix_role` (
`id` smallint(6) unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_role_user`
--

CREATE TABLE IF NOT EXISTS `dbprefix_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `admin_id` char(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_user`
--

CREATE TABLE IF NOT EXISTS `dbprefix_user` (
`id` int(10) unsigned NOT NULL,
  `uid` text NOT NULL,
  `username` text NOT NULL,
  `phone` text NOT NULL,
  `password` text NOT NULL,
  `address` text NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_wxconfig`
--

CREATE TABLE IF NOT EXISTS `dbprefix_wxconfig` (
`id` int(5) NOT NULL,
  `num` text NOT NULL,
  `ini_num` text NOT NULL,
  `token` text NOT NULL,
  `appid` text NOT NULL,
  `appsecret` text NOT NULL,
  `encodingaeskey` text NOT NULL,
  `partnerid` text NOT NULL,
  `partnerkey` text NOT NULL,
  `paysignkey` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dbprefix_wxconfig`
--

INSERT INTO `dbprefix_wxconfig` (`id`, `num`, `ini_num`, `token`, `appid`, `appsecret`, `encodingaeskey`, `partnerid`, `partnerkey`, `paysignkey`) VALUES
(1, 'wemall', 'wemall', 'wemall', '', '', '', '', '', '');
-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_wxmenu`
--

CREATE TABLE IF NOT EXISTS `dbprefix_wxmenu` (
`menu_id` int(5) NOT NULL,
  `menu_type` varchar(10) DEFAULT NULL,
  `menu_name` varchar(10) NOT NULL,
  `event_key` varchar(200) NOT NULL,
  `view_url` varchar(300) NOT NULL,
  `pid` int(5) NOT NULL DEFAULT '0',
  `listorder` varchar(5) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dbprefix_wxmenu`
--

INSERT INTO `dbprefix_wxmenu` (`menu_id`, `menu_type`, `menu_name`, `event_key`, `view_url`, `pid`, `listorder`, `status`) VALUES
(1, 'click', '进入商城', 'BUY', '', 0, '1', 1),
(2, 'view', '关于我们', '', 'http://m.baidu.com', 0, '3', 1);

-- --------------------------------------------------------

--
-- 表的结构 `dbprefix_wxmessage`
--

CREATE TABLE IF NOT EXISTS `dbprefix_wxmessage` (
`id` int(10) unsigned NOT NULL,
  `type` text NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `picurl` text NOT NULL,
  `url` text NOT NULL,
  `key` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `dbprefix_wxmessage`
--

INSERT INTO `dbprefix_wxmessage` (`id`, `type`, `title`, `description`, `picurl`, `url`, `key`) VALUES
(1, '0', 'wemall', '欢迎来到wemall', '538d80973f66e.jpg', 'http://www.xxx.com/index.php?g=App&m=Index&a=index', 'BUY');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dbprefix_access`
--
ALTER TABLE `dbprefix_access`
 ADD KEY `groupId` (`role_id`), ADD KEY `nodeId` (`node_id`);

--
-- Indexes for table `dbprefix_admin`
--
ALTER TABLE `dbprefix_admin`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbprefix_alipay`
--
ALTER TABLE `dbprefix_alipay`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbprefix_good`
--
ALTER TABLE `dbprefix_good`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbprefix_info`
--
ALTER TABLE `dbprefix_info`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbprefix_mail`
--
ALTER TABLE `dbprefix_mail`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbprefix_menu`
--
ALTER TABLE `dbprefix_menu`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbprefix_node`
--
ALTER TABLE `dbprefix_node`
 ADD PRIMARY KEY (`id`), ADD KEY `level` (`level`), ADD KEY `pid` (`pid`), ADD KEY `status` (`status`), ADD KEY `name` (`name`);

--
-- Indexes for table `dbprefix_order`
--
ALTER TABLE `dbprefix_order`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbprefix_role`
--
ALTER TABLE `dbprefix_role`
 ADD PRIMARY KEY (`id`), ADD KEY `pid` (`pid`), ADD KEY `status` (`status`);

--
-- Indexes for table `dbprefix_role_user`
--
ALTER TABLE `dbprefix_role_user`
 ADD KEY `group_id` (`role_id`), ADD KEY `user_id` (`admin_id`);

--
-- Indexes for table `dbprefix_user`
--
ALTER TABLE `dbprefix_user`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbprefix_wxconfig`
--
ALTER TABLE `dbprefix_wxconfig`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dbprefix_wxmenu`
--
ALTER TABLE `dbprefix_wxmenu`
 ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `dbprefix_wxmessage`
--
ALTER TABLE `dbprefix_wxmessage`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dbprefix_admin`
--
ALTER TABLE `dbprefix_admin`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbprefix_alipay`
--
ALTER TABLE `dbprefix_alipay`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbprefix_good`
--
ALTER TABLE `dbprefix_good`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbprefix_info`
--
ALTER TABLE `dbprefix_info`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dbprefix_mail`
--
ALTER TABLE `dbprefix_mail`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbprefix_menu`
--
ALTER TABLE `dbprefix_menu`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbprefix_node`
--
ALTER TABLE `dbprefix_node`
MODIFY `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbprefix_order`
--
ALTER TABLE `dbprefix_order`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbprefix_role`
--
ALTER TABLE `dbprefix_role`
MODIFY `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbprefix_user`
--
ALTER TABLE `dbprefix_user`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dbprefix_wxconfig`
--
ALTER TABLE `dbprefix_wxconfig`
MODIFY `id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dbprefix_wxmenu`
--
ALTER TABLE `dbprefix_wxmenu`
MODIFY `menu_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `dbprefix_wxmessage`
--
ALTER TABLE `dbprefix_wxmessage`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
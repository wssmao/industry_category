-- ----------------------------
-- Table structure for industry_category
-- ----------------------------
DROP TABLE IF EXISTS `industry_category`;
CREATE TABLE `industry_category`  (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT COMMENT '自增主键',
  `industry_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '行业ID',
  `name` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '' COMMENT '行业名称',
  `parent_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '父节点行业ID',
  `level_type` int(11) NOT NULL DEFAULT 0 COMMENT '行业等级类型',
  `description` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '行业描述',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `uk_industry_id`(`industry_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1972 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '行业分类维度表' ROW_FORMAT = Dynamic;


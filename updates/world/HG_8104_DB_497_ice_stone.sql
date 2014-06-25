-- Fix Ice Stones
UPDATE `gameobject_template` SET `ScriptName` = 'go_ice_stone', `size` = 1
WHERE `entry` IN (188049, 188137, 188138, 188148, 188149, 188150, 188151, 188152);

-- Set EventAI scripts for NPCs
REPLACE INTO `creature_ai_scripts` VALUES
(2611601, 26116, 0, 0, 100, 1, 5000, 10000, 10000, 15000, 11, 122, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frostwave Lieutenant - Cast Frost Nova'),
(2617801, 26178, 0, 0, 100, 1, 5000, 10000, 15000, 20000, 11, 5276, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hailstone Lieutenant - Cast Freeze'),
(2617802, 26178, 0, 0, 100, 1, 15000, 20000, 20000, 30000, 11, 5164, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hailstone Lieutenant - Cast Knockdown'),
(2620401, 26204, 0, 0, 100, 1, 5000, 10000, 10000, 15000, 11, 23115, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chillwind Lieutenant - Cast Frost Shock'),
(2620402, 26204, 0, 0, 100, 1, 15000, 20000, 20000, 30000, 11, 6982, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Chillwind Lieutenant - Cast Gust of Wind'),
(2621401, 26214, 0, 0, 100, 1, 5000, 10000, 10000, 15000, 11, 3131, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Frigid Lieutenant - Cast Frost Breath'),
(2621501, 26215, 0, 0, 100, 1, 5000, 10000, 10000, 15000, 11, 15089, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glacial Lieutenant - Cast Frost Shock'),
(2621502, 26215, 0, 0, 100, 1, 15000, 20000, 20000, 30000, 11, 14907, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glacial Lieutenant - Cast Frost Nova'),
(2621601, 26216, 0, 0, 100, 1, 5000, 10000, 5000, 10000, 11, 15089, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glacial Templar - Cast Frost Shock'),
(2621602, 26216, 0, 0, 100, 1, 10000, 15000, 30000, 35000, 11, 14907, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glacial Templar - Cast Frost Nova'),
(2621603, 26216, 0, 0, 100, 1, 30000, 30000, 30000, 30000, 11, 5164, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Glacial Templar - Cast Knockdown');

-- Set proper data in NPC templates
REPLACE INTO `creature_template` VALUES
(26116, 0, NULL, 5564, 0, 5564, 0, 'Frostwave Lieutenant', '', '', 22, 22, 1300, 1500, 1000, 1000, 500, 1, 91, 91, 0, 1, 1, 0, 50, 50, 0, 125, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 'EventAI', 0, 1, 0, 1, 0, 0, 0, ''),
(26178, 0, NULL, 20433, 0, 20433, 0, 'Hailstone Lieutenant', '', '', 32, 32, 2000, 2200, 1000, 1000, 1000, 1, 91, 91, 0, 1, 1, 0, 100, 100, 0, 250, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 'EventAI', 0, 1, 0, 1, 0, 0, 0, ''),
(26204, 0, NULL, 23684, 0, 23684, 0, 'Chillwind Lieutenant', '', '', 43, 43, 2800, 3000, 1000, 1000, 1500, 1, 91, 91, 0, 1, 1, 0, 150, 150, 0, 500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 'EventAI', 0, 1, 0, 1, 0, 0, 0, ''),
(26214, 0, NULL, 6674, 0, 6674, 0, 'Frigid Lieutenant', '', '', 51, 51, 3500, 3700, 1000, 1000, 2000, 1, 91, 91, 0, 1, 1, 0, 200, 200, 0, 1000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 'EventAI', 0, 1, 0, 1, 0, 0, 0, ''),
(26215, 0, NULL, 12815, 0, 12815, 0, 'Glacial Lieutenant', '', '', 60, 60, 4000, 4200, 1000, 1000, 2500, 1, 91, 91, 0, 1, 1, 0, 250, 250, 0, 1500, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 'EventAI', 0, 1, 0, 1, 0, 0, 0, ''),
(26216, 0, NULL, 23693, 0, 23693, 0, 'Glacial Templar', '', '', 67, 67, 4600, 4800, 1000, 1000, 3000, 1, 91, 91, 0, 1, 1, 0, 300, 300, 0, 2000, 2000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, NULL, 0, 0, 0, 'EventAI', 0, 1, 0, 1, 0, 0, 0, '');

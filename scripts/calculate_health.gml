///calculate_health(level, health)
var level = argument0;
var hth = argument1;

// Calculate the health
// 10 + (3 - 1)*5 = 20
return round(hth+((level-1)*5));

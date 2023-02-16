///create_shop(x, y, owner)
var xx = argument0;
var yy = argument1;
var owner = argument2;
var shop = instance_create(xx, yy, o_shop_ui);

shop.shop_owner = owner;

return shop;


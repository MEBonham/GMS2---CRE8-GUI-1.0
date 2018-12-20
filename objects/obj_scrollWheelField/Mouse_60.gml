/// @description Scroll up

var qty = (parentLink.yBottom - parentLink.yTop) / divisor;
parentLink.a.y -= qty;
parentLink.a.y = clamp(parentLink.a.y, parentLink.yTop, parentLink.yBottom);

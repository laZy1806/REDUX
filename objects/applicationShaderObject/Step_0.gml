/// @description Insert description here
// You can write your code in this editor

app_w = global.isFullscreen ? 1440 : 640
fullscreenOffset = global.isFullscreen ? 240 : 0
app_h = global.windHeight - global.windOffset //negates offset to solve stretch issue

texel_w	= 1/ app_w
texel_h	= 1/ app_h

bloomAdjuster = lerp(bloomAdjuster, 0, bloomSpeed)
bloomAdjuster = clamp(bloomAdjuster, 0, 1)
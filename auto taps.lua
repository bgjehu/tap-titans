CREATETIME="2014-12-22 20:23:14";
SCREEN_RESOLUTION="375x667";
AUTHOR="Jieyi Hu";

--IMG="/var/mobile/Library/AutoTouch/Library/img/";
--log(IMG);


function autoTaps ()
for i=0,5000,1 do
local j=i%5
tap(127.5+30*j,113.0);
usleep(5000);
tap(103, 418);
usleep(5000);
tap(320, 467);
usleep(5000);
end
end

function popupHandling ()
--auto watch ADs
findImageTap {imagePath=IMG .. "watchVideo.png", count=1, fuzzy=0.9};
usleep(32000000);--wati for 30 sec AD
--auto close ADs
findImageTap {imagePath=IMG .. "closeAD1.png", count=1, fuzzy=0.9};
usleep(500000);
findImageTap {imagePath=IMG .. "closeAD2.png", count=1, fuzzy=0.9};
usleep(2000000);

--auto collect gift
findImageTap {imagePath=IMG .. "collect.png", count=1, fuzzy=0.9};
end



function main ()
index=0;
while index<1 do
autoTaps();
usleep(500000);
--popupHandling();
end
end

main();
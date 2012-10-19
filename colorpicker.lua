--
-- colorpicker.lua
-- OS X system color picker inside GrafX2!
--
-- uses https://github.com/jnordberg/color-pick
--
-- 2012 @attilam
-- 
--

-- set the path to your colorpick binary here
colorpicker = "~/bin/colorpick"

foreindex = getforecolor();

-- current foreground color (HEX) to be used as startColor
r,g,b = getcolor(foreindex);
colorhex = string.format("%02x%02x%02x", r, g, b)

statusmessage("Pick foreground color")
wait(0.01) -- give statusmessage a chance to show up

-- invoke colorpick and store results in a temporary file
tempfile = os.tmpname();
statuscode = os.execute(colorpicker.." -startColor "..colorhex.." > "..tempfile);

if (statuscode ~= 0) then
	messagebox("colorpicker", "Error "..statuscode)
	return
end

-- read temporary file
file = io.open(tempfile, "r");
colorhex = file:read("*all");
file:close();

if (colorhex:len() < 6) then return end

-- convert colorpick HEX output to DEC values
r = tonumber( string.sub(colorhex, 1, 2), 16 );
g = tonumber( string.sub(colorhex, 3, 4), 16 );
b = tonumber( string.sub(colorhex, 5, 6), 16 );

-- set foreground color to picked color
setcolor(foreindex, r, g, b);

os.remove(tempfile);

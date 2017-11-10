#!/usr/local/bin/ruby
## pong.rb for Pong in /home/flupine/Documents/Pong
##
## Made by Faurest Lupine
## Login   <faurest.lupine@epitech.eu>
##
## Started on  jeu. nov. 09 15:13:39 2017 Faurest Lupine
## Last update ven. nov. 10 18:01:22 2017 Faurest Lupine
##

input = ARGV;
x0 = input[0].to_f;
y0 = input[1].to_f;
z0 = input[2].to_f;
x1 = input[3].to_f;
y1 = input[4].to_f;
z1 = input[5].to_f;
n  = input[6].to_f;
x2 = x1+n*(x1-x0)
y2 = y1+n*(y1-y0)
z2 = z1+n*(z1-z0);

v1 = (x1 - x0).round(2);
v2 = (y1 - y0).round(2);
v3 = (z1 - z0).round(2);

if input.size != 7 || n.to_i < 0
	abort("ruby pong.rb x0 y0 z0 x1 y1 z1 n");
end

puts "The speed vector coordinates are :";
puts "(#{v1.to_s};#{v2.to_s};#{v3.to_s})";
puts "At time t+4, ball coordinates will be :";
puts "(#{x2.to_s};#{y2.to_s};#{z2.to_s})";

if ((z1-z0 == 0) & (z1 != 0))
	abort("The ball won't reach the bat.");
end
if (-z1/(z1-z0) < 0)
	abort("The ball won't reach the bat.");
end

angle = 90-(Math.acos(v3.abs/Math.sqrt((v1 ** 2) + (v2 ** 2) + (v3 **2))))*180/Math::PI;

if angle == 0
	abort("The ball won't reach the bat.");
end
puts "The incidence angle is :";
puts "#{angle.round(2)} degrees";

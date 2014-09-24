function [ mission_text ] = take_off_hover_yaw( id_num, sleep_time, z_init, yaw_init)
%TAKE_OFF_HOVER_YAW Summary of this function goes here
%   Detailed explanation goes here

mission_text = 	...
	['\t<submission description="01 - Take-off, hover">\n', ... 
		'\t\t<config>\n', ... 
			'\t\t\t<id>',num2str(id_num),'</id>\n', ... 
		'\t\t</config>\n', ... 
		'\t\t<task description=".1 - Take-off">\n', ... 
			'\t\t\t<config>\n', ... 
				'\t\t\t\t<id>01</id>\n', ... 
			'\t\t\t</config>\n', ... 
			'\t\t\t<command>takeOff</command>\n', ... 
		'\t\t</task>\n', ... 
		'\t\t<task description=".3 - zMove">\n', ... 
			'\t\t\t<config>\n', ... 
				'\t\t\t\t<id>03</id>\n', ... 
			'\t\t\t</config>\n', ... 
			'\t\t\t<command>move</command>\n', ... 
			'\t\t\t<point>\n', ... 
				'\t\t\t\t<z>',num2str(z_init),'</z>\n', ... 
			'\t\t\t</point>\n', ... 
            	'\t\t\t\t<yaw>',num2str(yaw_init),'</yaw>\n', ... 
		'\t\t</task>\n', ... 
		'\t\t<task description=".4 - sleep">\n', ... 
			'\t\t\t<config>\n', ... 
				'\t\t\t\t<id>04</id>\n', ... 
				'\t\t\t\t<time>',num2str(sleep_time),'</time>\n', ... 
			'\t\t\t</config>\n', ... 
			'\t\t\t<command>sleep</command>\n', ... 
		'\t\t</task>\n', ... 
	'\t</submission>\n'];

end


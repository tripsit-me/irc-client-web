FROM thelounge/thelounge:latest

RUN thelounge install thelounge-theme-discordapp && \
	thelougne install thelougne-theme-mininapse && \
	thelougne install thelougne-theme-solarized


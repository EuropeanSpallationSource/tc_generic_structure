# remove LineIds
/<LineId/d
/<\/LineId/d
# enforce empty last line
/.\]\]>/s/]]>/\r\n]]>/g
# convert tab to space
/\t/s/\t/    /g
# remove trailing space
s/[[:blank:]]*$//
s/[[:blank:]]*\r$/\r/

bash position rainbow bash plugin
=================================

This plugin lets you write easyly on the terminal. For example if you want
to set the current time at the end of your terminal line in the bash prompt you
would use this.

Default state:
-------------
** Activated **

Dependencies
-----------

* `tput`

Functions
---------

* rbw_position_write_end_of_line(string)

Writes the string agument at the end of the bash line.


Variables
---------

* rbw_position_row: Current row here the cursor is
* rbw_position_col: Current column here the cursor is

Example
-------

Write the clock at end of the line (right) in the prompt. You could make the
[simple](/themes/simple) theme to show the clock like this:

    RBW_MY_CUSTOM_THEME="\
     \[$RBW_BR_RED\]\357\204\270  \
    \[$RBW_BR_CYAN\]\W:\
    \[$RBW_BR_GREEN\]\$(write_end_of_line \t)
     \[$RBW_BR_RED\]\357\204\270  \
    \[$RBW_RESET_ALL\] "
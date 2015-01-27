Git rainbow bash plugin
=================================

This plugin lets you get information about a git repository.

Default state:
-------------
** Activated **

Dependencies
-----------

* `git`

Functions
---------

* rbw_git_unpushed_commits

returns the number of commits that haven't been pushed


Variables
---------

* rbw_git_is_repo: 1 if is a repository, 0 instead
* rbw_git_branch: Branch of the repository
* rbw_git_dirty: 1 if there are uncommited changes, 0 instead

Example
-------

[Check Simple theme](/themes/simple/init.sh)
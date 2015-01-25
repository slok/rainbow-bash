Git rainbow bash plugin
=================================

This plugin lets you get information about a git repository.

Dependencies
-----------

* `git`

Functions
---------

* rbw_git_check_repo

Sets the variable rbw_git_is_repo with a 1 if the current directory is a git
repository

* rbw_git_unpushed_commits

returns the number of commits that haven't been pushed

* rbw_git_set_branch

Sets `rbw_git_branch` with the current branch name, `DETACHED` if the HEAD
is detached

* rbw_git_set_dirty

Sets `rbw_git_dirty` to 1 if the current repo has uncommited changes, 0 otherwise

Variables
---------

* rbw_git_is_repo: 1 if is a repository, 0 instead
* rbw_git_branch: Branch of the repository
* rbw_git_dirty: 1 if there are uncommited changes, 0 instead

Example
-------

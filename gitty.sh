#!/bin/bash


################################################################################
#  ____ ____ ____ ____ ____ 
# ||G |||i |||t |||t |||y ||
# ||__|||__|||__|||__|||__||
# |/__\|/__\|/__\|/__\|/__\|
#                                        
# Gitty -- A GitHub client in Bash
#
# Copyright (c) 2014-20 Roberto Reale
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
# 
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
#
################################################################################

GITTY_LIB_BASE=.

source $GITTY_LIB_BASE/lib/api
source $GITTY_LIB_BASE/lib/commit
source $GITTY_LIB_BASE/lib/commit_comment
source $GITTY_LIB_BASE/lib/conduct
source $GITTY_LIB_BASE/lib/defs
source $GITTY_LIB_BASE/lib/emails
source $GITTY_LIB_BASE/lib/emoji
source $GITTY_LIB_BASE/lib/events
source $GITTY_LIB_BASE/lib/gist
source $GITTY_LIB_BASE/lib/gist_comment
source $GITTY_LIB_BASE/lib/github
source $GITTY_LIB_BASE/lib/gitignore
source $GITTY_LIB_BASE/lib/json
source $GITTY_LIB_BASE/lib/license
source $GITTY_LIB_BASE/lib/markdown
source $GITTY_LIB_BASE/lib/my
source $GITTY_LIB_BASE/lib/org
source $GITTY_LIB_BASE/lib/path
source $GITTY_LIB_BASE/lib/project
source $GITTY_LIB_BASE/lib/rate_limit
source $GITTY_LIB_BASE/lib/repo
source $GITTY_LIB_BASE/lib/user

# Local variables:
# mode: shell-script
# sh-basic-offset: 4
# sh-indent-comment: t
# indent-tabs-mode: nil
# End:
# ex: ts=4 sw=4 et filetype=sh

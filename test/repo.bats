#!/usr/bin/env bats

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

load 'lib/bats-support/load'
load 'lib/bats-assert/load'

source ./gittybox
source gitty.sh

[[ -n $GITTY_API_USERNAME ]] || fail "GITTY_API_USERNAME undefined"

function __repo_name()
{
    # @cf https://gist.github.com/earthgecko/3089509
    echo "$(cat /dev/urandom | tr -dc 'a-zA-Z0-9' | fold -w 32 | head -n 1)"
}

@test "gitty::repo::create: create a repository" {
    local REPO_NAME="$(__repo_name)"
    gitty::repo::create "$REPO_NAME"
    assert_success
}

@test "gitty::repo::delete: delete a repository" {
    local REPO_NAME="$(__repo_name)"

    gitty::repo::create "$REPO_NAME" > /dev/null
    gitty::repo::delete "$GITTY_API_USERNAME" "$REPO_NAME"
    echo "$GITTY_API_USERNAME" "$REPO_NAME"

    assert_success
}

# Local variables:
# mode: shell-script
# sh-basic-offset: 4
# sh-indent-comment: t
# indent-tabs-mode: nil
# End:
# ex: ts=4 sw=4 et filetype=sh

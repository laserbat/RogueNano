#!/usr/bin/perl
#    474 - minimalistic roguelike.
#    Copyright (c) init
#
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Folowing code is a complete and working roguelike game, in 474 characters:
use Curses;$q=80*24;@m=(-1,0,80,-80,1);sub r{rand$_[0]}sub a{my@l;for(0..99){for$v(0..$q){if(($v%80-$n%80)**2+(($v-$n)/80)**2<25){$l[$v]=1;$p=$v,$l[$v]=4if(r 99)<1}}$n=$p+r 4}1until$l[$v=r$q]&$l[$p=r$q];while($l[$v]=2){addch($_/80,$_%80,$_^$p?("#",".",">",0,B)[$l[$_]]:"@")for 0..$q;$p=$l[$z=$p+$m[ord(getch)-104]]&3?$z:$p;$l[$z]=1if$l[$z]&4;a()if$l[$p]&2;for$v(0..$q){if($l[$v]&4){$l[$v]=1;$n=$v+$m[r 5];$l[$l[$n]&1&&$n^$p&&$l[$n]<3?$n:$v]=9}}$_=$_>3?4:$_ for@l}}a initscr

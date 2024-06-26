@echo off

REM    uniCenta oPOS Touch Friendly Point of Sales designed for Touch Screen
REM    Copyright © 2009-2020 uniCenta
REM    https://unicenta.com
REM
REM    This file is part of uniCenta oPOS
REM
REM    uniCenta oPOS is free software: you can redistribute it and/or modify
REM    it under the terms of the GNU General Public License as published by
REM    the Free Software Foundation, either version 3 of the License, or
REM    (at your option) any later version.
REM
REM    uniCenta oPOS is distributed in the hope that it will be useful,
REM    but WITHOUT ANY WARRANTY; without even the implied warranty of
REM    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
REM    GNU General Public License for more details.
REM
REM    You should have received a copy of the GNU General Public License
REM    along with uniCenta oPOS.  If not, see http://www.gnu.org/licenses/>
REM



start /B javaw -Dlogging.level=INFO -Xms256m -Xmx1024m -cp %CP% -splash:cafePOS_splash_dark.png com.openbravo.pos.forms.StartPOS %1
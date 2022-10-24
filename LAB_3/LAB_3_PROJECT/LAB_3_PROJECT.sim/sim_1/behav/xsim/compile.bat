@echo off
REM ****************************************************************************
REM Vivado (TM) v2021.2.1 (64-bit)
REM
REM Filename    : compile.bat
REM Simulator   : Xilinx Vivado Simulator
REM Description : Script for compiling the simulation design source files
REM
REM Generated by Vivado on Sun Oct 09 13:53:37 -0700 2022
REM SW Build 3414424 on Sun Dec 19 10:57:22 MST 2021
REM
REM IP Build 3405791 on Sun Dec 19 15:54:35 MST 2021
REM
REM usage: compile.bat
REM
REM ****************************************************************************
REM compile Verilog/System Verilog design sources
echo "xvlog --incr --relax -L uvm -prj tb_vlog.prj"
call xvlog  --incr --relax -L uvm -prj tb_vlog.prj -log xvlog.log
call type xvlog.log > compile.log
REM compile VHDL design sources
echo "xvhdl --incr --relax -prj tb_vhdl.prj"
call xvhdl  --incr --relax -prj tb_vhdl.prj -log xvhdl.log
call type xvhdl.log >> compile.log
if "%errorlevel%"=="1" goto END
if "%errorlevel%"=="0" goto SUCCESS
:END
exit 1
:SUCCESS
exit 0

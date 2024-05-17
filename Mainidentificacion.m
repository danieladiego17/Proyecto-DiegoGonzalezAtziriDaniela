clear all
clc
%Cambiar el COM segun el numero
% detectado en su computadora
arduinoObj = serialport("COM3",115200)
configureTerminator(arduinoObj,"CR/LF");
flush(arduinoObj);
arduinoObj.UserData = struct("DataS",[],"Count",1);
configureCallback(arduinoObj,"terminator",@ReadEncoder);
grid on
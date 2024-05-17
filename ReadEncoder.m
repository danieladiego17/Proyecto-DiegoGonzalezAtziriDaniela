function ReadEncoder(src, ~)
% Read the ASCII data from the serialport object.
dataS = readline(src);
% Convert the string data to numeric type and save it in the UserData
src.UserData.DataS(end+1) = str2double(dataS)*360/440;
% Update the Count value of the serialport object.
src.UserData.Count = src.UserData.Count + 1;
% If 16000 data points have been collected from the Arduino, switch off the
% callbacks and plot the data.
plot(src.UserData.DataS(2:end));
if src.UserData.Count > 16000
    configureCallback(src, "off");
end
end
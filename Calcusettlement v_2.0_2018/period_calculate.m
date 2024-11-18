function varargout = period_calculate(varargin)
% PERIOD_CALCULATE M-file for period_calculate.fig
%      PERIOD_CALCULATE, by itself, creates a new PERIOD_CALCULATE or raises the existing
%      singleton*.
%
%      H = PERIOD_CALCULATE returns the handle to a new PERIOD_CALCULATE or the handle to
%      the existing singleton*.
%
%      PERIOD_CALCULATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PERIOD_CALCULATE.M with the given input arguments.
%
%      PERIOD_CALCULATE('Property','Value',...) creates a new PERIOD_CALCULATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before period_calculate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to period_calculate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help period_calculate

% Last Modified by GUIDE v2.5 18-Aug-2017 09:31:55

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @period_calculate_OpeningFcn, ...
                   'gui_OutputFcn',  @period_calculate_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before period_calculate is made visible.
function period_calculate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to period_calculate (see VARARGIN)

% Choose default command line output for period_calculate
handles.output = hObject;
clear global kkkk;
clear global kkkr;
global jjj;
jjj=1;
imshow('axes3 (26).jpg')
global kongzhi3
kongzhi3=1;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes period_calculate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = period_calculate_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit7_Callback(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit7 as text
%        str2double(get(hObject,'String')) returns contents of edit7 as a double


% --- Executes during object creation, after setting all properties.
function edit7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit8_Callback(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit8 as text
%        str2double(get(hObject,'String')) returns contents of edit8 as a double


% --- Executes during object creation, after setting all properties.
function edit8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit9_Callback(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit9 as text
%        str2double(get(hObject,'String')) returns contents of edit9 as a double


% --- Executes during object creation, after setting all properties.
function edit9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit10_Callback(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit10 as text
%        str2double(get(hObject,'String')) returns contents of edit10 as a double


% --- Executes during object creation, after setting all properties.
function edit10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit10 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit11_Callback(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit11 as text
%        str2double(get(hObject,'String')) returns contents of edit11 as a double


% --- Executes during object creation, after setting all properties.
function edit11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit11 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit12_Callback(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit12 as text
%        str2double(get(hObject,'String')) returns contents of edit12 as a double


% --- Executes during object creation, after setting all properties.
function edit12_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit12 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit13_Callback(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit13 as text
%        str2double(get(hObject,'String')) returns contents of edit13 as a double


% --- Executes during object creation, after setting all properties.
function edit13_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit13 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit14_Callback(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit14 as text
%        str2double(get(hObject,'String')) returns contents of edit14 as a double


% --- Executes during object creation, after setting all properties.
function edit14_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit14 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit15_Callback(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit15 as text
%        str2double(get(hObject,'String')) returns contents of edit15 as a double


% --- Executes during object creation, after setting all properties.
function edit15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit16_Callback(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit16 as text
%        str2double(get(hObject,'String')) returns contents of edit16 as a double


% --- Executes during object creation, after setting all properties.
function edit16_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit16 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit17_Callback(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit17 as text
%        str2double(get(hObject,'String')) returns contents of edit17 as a double


% --- Executes during object creation, after setting all properties.
function edit17_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit17 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit18_Callback(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit18 as text
%        str2double(get(hObject,'String')) returns contents of edit18 as a double


% --- Executes during object creation, after setting all properties.
function edit18_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit18 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit19_Callback(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit19 as text
%        str2double(get(hObject,'String')) returns contents of edit19 as a double


% --- Executes during object creation, after setting all properties.
function edit19_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit19 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit20_Callback(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit20 as text
%        str2double(get(hObject,'String')) returns contents of edit20 as a double


% --- Executes during object creation, after setting all properties.
function edit20_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit20 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit21_Callback(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit21 as text
%        str2double(get(hObject,'String')) returns contents of edit21 as a double


% --- Executes during object creation, after setting all properties.
function edit21_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit21 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global kongzhi3
if kongzhi3==10
else
   period_attribute
    return
end
global huitan3 yasuo3 chushi3 rubian3 tude3 yufu3 pingjun3 tuhou3 i53;

a=huitan3;
b=yasuo3;
c=tude3;
d=yufu3;
e=rubian3;
f=chushi3;
g=pingjun3;
i=tuhou3;
k=str2double(get(handles.edit24,'String'));
t_000=str2double(get(handles.edit29,'String'));
n00=str2double(get(handles.edit30,'String'));
ampli=str2double(get(handles.edit32,'String'));
max_p=str2double(get(handles.edit31,'String'));
t_c00=(n00+0.5)*t_000;
gamma_water=9.81;
epsilong_z0=0;
ff=i/0.45;
bb=1;
jindutiao=waitbar(0,'开始绘图');
if i<=0.5
Z=i/2;
stre_z0=(c-gamma_water)*Z;
stre_zp=d+stre_z0;
stre_zf=stre_z0+max_p;
if stre_zf>stre_zp
S_f=(b*log10(stre_zf/stre_zp)/(1+f)+epsilong_z0+a*log10(stre_zp/stre_z0)/(1+f))*i;
else
S_f=(a*log10(stre_zf/stre_z0)/(1+f)+epsilong_z0)*i;
end
else
jj=floor(i/0.5)-1;kk=1;
for pp=0:1:jj
Z=0.25+pp*0.5;
stre_z02(kk)=(c-gamma_water)*Z;
stre_zp2(kk)=d+stre_z02(kk);
stre_zf2(kk)=stre_z02(kk)+max_p;
kk=kk+1;
end
Z=mod(i,0.5)/2+floor(i/0.5)*0.5;
stre_z02(kk)=(c-gamma_water)*Z;
stre_zp2(kk)=d+stre_z02(kk);
stre_zf2(kk)=stre_z02(kk)+max_p;
S_f=0;
if max_p>d
    for oo=1:1:kk-1
        S_f=S_f+(b*log10(stre_zf2(oo)/stre_zp2(oo))/(1+f)+epsilong_z0+a*log10(stre_zp2(oo)/stre_z02(oo))/(1+f))*0.5;
    end
    S_f=S_f+(b*log10(stre_zf2(kk)/stre_zp2(kk))/(1+f)+epsilong_z0+a*log10(stre_zp2(kk)/stre_z02(kk))/(1+f))*mod(i,0.5);
else
    for oo=1:1:kk-1
    S_f=S_f+(a*log10(stre_zf2(oo)/stre_z02(oo))/(1+f)+epsilong_z0)*0.5;
    end
    S_f=S_f+(a*log10(stre_zf2(kk)/stre_z02(kk))/(1+f)+epsilong_z0)*mod(i,0.5);

end
end
m_v=S_f/i/max_p;
c_v=g/gamma_water/m_v;
if get(handles.radiobutton1,'value')
for tr=t_c00:0.004*ff^2:10000*ff^2%t〉=t_c时
jr=0;
for ir=0:1:3%用for循环求和
M=(2*ir+1)*pi/2;
jr=jr+2/M^2*exp(-M^2*c_v*tr/i53^2)*(ampli*pi/t_000/(M^4*c_v^2*t_000^2+i53^4*pi^2)*(M^2*c_v*t_000^2*i53^2*cos(pi*t_c00/t_000)*exp(M^2*c_v*t_c00/i53^2)+i53^4*pi*t_000*sin(pi*t_c00/t_000)*exp(M^2*c_v*t_c00/i53^2)-i53^2*t_000^2*M^2*c_v)+(max_p-ampli));
end
U_av=1-jr/max_p;
if U_av>0.98
break;
end
end
t_EOP=tr;
elseif get(handles.radiobutton2,'value')
    t_0001=t_000/2;
for tr=t_c00:0.004*ff^2:10000*ff^2%t〉=t_c时
jr=0;
    ll=ceil(t_c00/t_0001); 
 if ll<3
if ll==1
    for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;
    yyu=exp(M^2*c_v*t_c00/i53^2)-1;
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*tr/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*tr/i53^2);
    end
U_av=1-jr/max_p;%
else
    for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;
yyu=exp(M^2*c_v*t_0001/i53^2)-exp(M^2*c_v*t_c00/i53^2)+exp(M^2*c_v*t_0001/i53^2)-1;
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*tr/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*tr/i53^2);
    end
U_av=1-jr/max_p;%
end
else
if mod(ll,2)==1
for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;yyu=0;
for ag=1:2:ll-2
    yyu=yyu+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag-1)*t_0001/i53^2)+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag+1)*t_0001/i53^2);
end
yyu=yyu+exp(M^2*c_v*t_c00/i53^2)-exp(M^2*c_v*(ll-1)*t_0001/i53^2);
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*tr/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*tr/i53^2);
end
U_av=1-jr/max_p;%
else
for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;yyu=0;
for ag=1:2:ll-2
    yyu=yyu+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag-1)*t_0001/i53^2)+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag+1)*t_0001/i53^2);
end
yyu=yyu+exp(M^2*c_v*(ll-1)*t_0001/i53^2)-exp(M^2*c_v*t_c00/i53^2)+exp(M^2*c_v*(ll-1)*t_0001/i53^2)-exp(M^2*c_v*(ll-2)*t_0001/i53^2);
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*tr/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*tr/i53^2);
end
U_av=1-jr/max_p;%
end
 end
 if U_av>0.98
break;
end
end
t_EOP=tr;
end
waitbar(0.2,jindutiao,'已完成20%')
for t=0.001*ff^2:0.01*ff^2:k%day
if get(handles.radiobutton1,'value')
if t<t_c00
jr=0;
for ir=0:1:3%用for循环求和
M=(2*ir+1)*pi/2;
jr=jr+2/M^2*exp(-M^2*c_v*t/i53^2)*(ampli*pi/t_000/(M^4*c_v^2*t_000^2+i53^4*pi^2)*(M^2*c_v*t_000^2*i53^2*cos(pi*t/t_000)*exp(M^2*c_v*t/i53^2)+i53^4*pi*t_000*sin(pi*t/t_000)*exp(M^2*c_v*t/i53^2)-i53^2*t_000^2*M^2*c_v)+(max_p-ampli));
end
U_v=((max_p-ampli)+ampli*sin(pi*t/t_000)-jr)/max_p;
else
jr=0;
for ir=0:1:3%用for循环求和
M=(2*ir+1)*pi/2;
jr=jr+2/M^2*exp(-M^2*c_v*t/i53^2)*(ampli*pi/t_000/(M^4*c_v^2*t_000^2+i53^4*pi^2)*(M^2*c_v*t_000^2*i53^2*cos(pi*t_c00/t_000)*exp(M^2*c_v*t_c00/i53^2)+i53^4*pi*t_000*sin(pi*t_c00/t_000)*exp(M^2*c_v*t_c00/i53^2)-i53^2*t_000^2*M^2*c_v)+(max_p-ampli));
end
U_v=1-jr/max_p;
end
elseif get(handles.radiobutton2,'value')
jr=0; t_0001=t_000/2;
if t<t_c00
    ll=ceil(t/t_0001); 
if ll<3
if ll==1
    for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;
    yyu=exp(M^2*c_v*t/i53^2)-1;
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i53^2);
    end
U_v=(t*2*ampli/t_0001+(max_p-2*ampli)-jr)/max_p;%
else
    for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;
yyu=exp(M^2*c_v*t_0001/i53^2)-exp(M^2*c_v*t/i53^2)+exp(M^2*c_v*t_0001/i53^2)-1;
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i53^2);
    end
U_v=(max_p+2*ampli-t*2*ampli/t_0001-jr)/max_p;%
end
else
if mod(ll,2)==1
for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;yyu=0;
for ag=1:2:ll-2
    yyu=yyu+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag-1)*t_0001/i53^2)+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag+1)*t_0001/i53^2);
end
yyu=yyu+exp(M^2*c_v*t/i53^2)-exp(M^2*c_v*(ll-1)*t_0001/i53^2);
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i53^2);
end
U_v=(t*2*ampli/t_0001-ll*2*ampli+max_p-jr)/max_p;%
else
for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;yyu=0;
for ag=1:2:ll-2
    yyu=yyu+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag-1)*t_0001/i53^2)+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag+1)*t_0001/i53^2);
end
yyu=yyu+exp(M^2*c_v*(ll-1)*t_0001/i53^2)-exp(M^2*c_v*t/i53^2)+exp(M^2*c_v*(ll-1)*t_0001/i53^2)-exp(M^2*c_v*(ll-2)*t_0001/i53^2);
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i53^2);
end
U_v=((ll-t/t_0001)*2*ampli+max_p-2*ampli-jr)/max_p;%
end
end
else
    ll=ceil(t_c00/t_0001); 
 if ll<3
if ll==1
    for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;
    yyu=exp(M^2*c_v*t_c00/i53^2)-1;
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i53^2);
    end
U_v=1-jr/max_p;%
else
    for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;
yyu=exp(M^2*c_v*t_0001/i53^2)-exp(M^2*c_v*t_c00/i53^2)+exp(M^2*c_v*t_0001/i53^2)-1;
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i53^2);
    end
U_v=1-jr/max_p;%
end
else
if mod(ll,2)==1
for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;yyu=0;
for ag=1:2:ll-2
    yyu=yyu+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag-1)*t_0001/i53^2)+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag+1)*t_0001/i53^2);
end
yyu=yyu+exp(M^2*c_v*t_c00/i53^2)-exp(M^2*c_v*(ll-1)*t_0001/i53^2);
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i53^2);
end
U_v=1-jr/max_p;%
else
for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;yyu=0;
for ag=1:2:ll-2
    yyu=yyu+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag-1)*t_0001/i53^2)+exp(M^2*c_v*ag*t_0001/i53^2)-exp(M^2*c_v*(ag+1)*t_0001/i53^2);
end
yyu=yyu+exp(M^2*c_v*(ll-1)*t_0001/i53^2)-exp(M^2*c_v*t_c00/i53^2)+exp(M^2*c_v*(ll-1)*t_0001/i53^2)-exp(M^2*c_v*(ll-2)*t_0001/i53^2);
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i53^2)*yyu/M^2/c_v*i53^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i53^2);
end
U_v=1-jr/max_p;%
end
 end
end
end
if t>t_EOP
epsilong_secon=e*log10(t/t_EOP)/(1+f);
else
epsilong_secon=0;
end 
S_totalA =U_v*S_f+epsilong_secon*i;

aaa6(bb)=S_totalA;
bb=bb+1;
if t/k>0.38&&t/k<0.40
    waitbar(t/k,jindutiao,'已完成40%')
    elseif t/k>0.58&&t/k<0.60
    waitbar(t/k,jindutiao,'已完成60%')
    elseif t/k>0.78&&t/k<0.80
    waitbar(t/k,jindutiao,'已完成80%')
end
end
delete(jindutiao);
%axes(handles.axes15);
figure('Name','沉降时间关系');
%axes('position',[.48,.245,0.49,0.5]);
%axis off;
t_1=0.001*ff^2:0.01*ff^2:k;
semilogx(t_1,aaa6);
set(gca,'ydir','reverse');
set(gca,'xaxislocation','top');
xlabel('Time(day)');
ylabel('Settlement(m)');
grid on;
global t_16 aaa9;
t_16=t_1; aaa9=aaa6;
 clear aaa6 t_1;


function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit26_Callback(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit26 as text
%        str2double(get(hObject,'String')) returns contents of edit26 as a double


% --- Executes during object creation, after setting all properties.
function edit26_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit26 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit27_Callback(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit27 as text
%        str2double(get(hObject,'String')) returns contents of edit27 as a double


% --- Executes during object creation, after setting all properties.
function edit27_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit27 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit28 as text
%        str2double(get(hObject,'String')) returns contents of edit28 as a double


% --- Executes during object creation, after setting all properties.
function edit28_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit28 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox1.
function checkbox1_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox1


% --- Executes on button press in checkbox2.
function checkbox2_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox2


% --- Executes on button press in checkbox3.
function checkbox3_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox3


% --- Executes on button press in checkbox4.
function checkbox4_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox4



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit29 as text
%        str2double(get(hObject,'String')) returns contents of edit29 as a double


% --- Executes during object creation, after setting all properties.
function edit29_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit29 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit32_Callback(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit32 as text
%        str2double(get(hObject,'String')) returns contents of edit32 as a double


% --- Executes during object creation, after setting all properties.
function edit32_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit32 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
period_attribute


% --- Executes when selected object is changed in uipanel6.
function uipanel6_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel6 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
%kkk1=0;kkk2=0;
global kkkk kkkr ;
kkkr=3;kkkk=3;
global jjj;
  if get(handles.radiobutton1,'value')
      kkkr=2;
      if kkkk==1||jjj==10;
      else
        if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (1).jpg')
      pause(0.1)
        end
      end
      if kkkk==1||jjj==10;
      else
      if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (2).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
      if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (3).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
      if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (4).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
      if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (5).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (6).jpg')
      pause(0.1)
       end
      end
      if kkkk==1||jjj==10;
      else
        if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (7).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (8).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (9).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
     if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (10).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (11).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (12).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (13).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (14).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (15).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (16).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (17).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (18).jpg')
      pause(0.1)
      end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (19).jpg')
      pause(0.1)
       end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (20).jpg')
      pause(0.1)
       end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (21).jpg')
      pause(0.1)
       end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (22).jpg')
      pause(0.1)
       end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (23).jpg')
      pause(0.1)
       end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (24).jpg')
      pause(0.1)
       end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (25).jpg')
      pause(0.1)
       end
      end
      if kkkk==1||jjj==10;
      else
       if get(handles.radiobutton1,'value')
            axes(handles.axes10)
      imshow('axes3 (26).jpg')
      pause(0.1)
       end
      end
      kkkk=1;
  elseif get(handles.radiobutton2,'value')
            axes(handles.axes10)
     kkkk=2;
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (1).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (2).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (3).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (4).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (5).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (6).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (7).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (8).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (9).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (10).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (11).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (12).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (13).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (14).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (15).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (16).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (17).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (18).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (19).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (20).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (21).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (22).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (23).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (24).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (25).jpg')
      pause(0.1)
      end
      end
      if kkkr==1||jjj==10;
      else
      if get(handles.radiobutton2,'value')
            axes(handles.axes10)
      imshow('axes3_ (26).jpg')
      pause(0.1)
      end
      end
      % kkkk=2;
 kkkr=1;
  end
   %  A=0;map=0;
%[A,map]=imread('singif.gif','frames','all');
%for i=1:size(A,4)-1
  %if get(handles.radiobutton2,'value')
   % kkk1=1;
   % break;
    
%end
%global jjj;
%if jjj==10||kkk1==1
%break;
%end

%imagesc(A(:,:,:,i));
%colormap(map);
%axis off
%pause(0.1);
%end


  
   %   A=0;map=0;
%[A,map]=imread('anggif.gif','frames','all');
%for i=1:size(A,4)-1
  %  if get(handles.radiobutton1,'value')
   %  kkk2=2;
    % break;
   
   % end
%global jjj;

%if jjj==10||kkk2==2
%break;
%end


%imagesc(A(:,:,:,i));
%colormap(map);
%set(gca,'position',[0 0 1 1])
%axis off
%pause(0.1);
  
%end

  %end


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);
global jjj;
jjj=10;

% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called



% --- Executes on mouse motion over figure - except title and menu.
function figure1_WindowButtonMotionFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonUpFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes when figure1 is resized.
function figure1_ResizeFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key release with focus on figure1 and none of its controls.
function figure1_KeyReleaseFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	Key: name of the key that was released, in lower case
%	Character: character interpretation of the key(s) that was released
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) released
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on figure1 and none of its controls.
function figure1_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)



% --- Executes on key press with focus on figure1 or any of its controls.
function figure1_WindowKeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on scroll wheel click while the figure is in focus.
function figure1_WindowScrollWheelFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see FIGURE)
%	VerticalScrollCount: signed integer indicating direction and number of clicks
%	VerticalScrollAmount: number of lines scrolled for each click
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global  t_16 aaa9;
    
tttt=t_16';
aaaa=aaa9';
asas=[tttt aaaa];
ss={'t(day)','Settlement_period(m)'};

[fname,pname]=uiputfile({'*.xls'},'Pick an data-file');%;

if isequal(fname,0)||isequal(pname,0) 
    msgbox('请为新文件命名！','导出失败！');
    return  
end
str=strcat(pname,fname);
xlswrite(str,ss);
xlswrite(str,asas,1,'A2');% 'C:\Users\HP\Documents\MATLAB\data_matlab0'
msgbox(['数据已存入',str],'数据导出成功！')

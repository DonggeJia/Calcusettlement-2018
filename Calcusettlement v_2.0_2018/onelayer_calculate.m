function varargout = onelayer_calculate(varargin)
% ONELAYER_CALCULATE M-file for onelayer_calculate.fig
%      ONELAYER_CALCULATE, by itself, creates a new ONELAYER_CALCULATE or raises the existing
%      singleton*.
%
%      H = ONELAYER_CALCULATE returns the handle to a new ONELAYER_CALCULATE or the handle to
%      the existing singleton*.
%
%      ONELAYER_CALCULATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ONELAYER_CALCULATE.M with the given input arguments.
%
%      ONELAYER_CALCULATE('Property','Value',...) creates a new ONELAYER_CALCULATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before onelayer_calculate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to onelayer_calculate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help onelayer_calculate

% Last Modified by GUIDE v2.5 18-Aug-2017 15:57:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @onelayer_calculate_OpeningFcn, ...
                   'gui_OutputFcn',  @onelayer_calculate_OutputFcn, ...
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


% --- Executes just before onelayer_calculate is made visible.
function onelayer_calculate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to onelayer_calculate (see VARARGIN)

% Choose default command line output for onelayer_calculate
handles.output = hObject;
% Update handles structure
global kongzhi2
kongzhi2=1;
guidata(hObject, handles);

% UIWAIT makes onelayer_calculate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = onelayer_calculate_OutputFcn(hObject, eventdata, handles) 
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
global kongzhi2
if kongzhi2==10
else
   onelayer_attribute
    return
end
global huitan1 yasuo1 chushi1 rubian1 tude1 yufu1 pingjun1 tuhou1 tiling1 i51;
a=huitan1;
b=yasuo1;
c=tude1;
d=yufu1;
e=rubian1;
f=chushi1;
g=pingjun1;
h=str2double(get(handles.edit21,'String'));
i=tuhou1;
t_0=tiling1;
t=str2double(get(handles.edit17,'String'));
gamma_water=9.81;
epsilong_z0=0;
delta=2;
ff=i/0.45;
if i<=0.5
Z=i/2;
stre_z0=(c-gamma_water)*Z;
stre_zp=d+stre_z0;
stre_zf=stre_z0+h;
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
stre_zf2(kk)=stre_z02(kk)+h;
kk=kk+1;
end
Z=mod(i,0.5)/2+floor(i/0.5)*0.5;
stre_z02(kk)=(c-gamma_water)*Z;
stre_zp2(kk)=d+stre_z02(kk);
stre_zf2(kk)=stre_z02(kk)+h;
S_f=0;
if h>d
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
m_v=S_f/i/h;
c_v=g/gamma_water/m_v;
for ooo=0.0001*ff^2:0.0005*ff^2:50*ff^2%day
T_v=c_v*ooo/i51^2;
U_v2=sqrt(4*T_v/pi);
if U_v2>0.6
U_v2=1-10^(-(T_v+0.085)/0.933);
%以固结度超过98%时的最小时间为主固结完成时间。
if U_v2>=0.98
break
end
end
t_EOP=ooo;
end
T_alpha=c_v*t/(delta*i51)^2;
alpha=sqrt(4*T_alpha/pi);
if alpha>0.6
alpha=1-10^(-(T_alpha+0.085)/0.933);
end
T_alpha2=c_v*t/i51^2;
U_v=sqrt(4*T_alpha2/pi);
if U_v>0.6
U_v=1-10^(-(T_alpha2+0.085)/0.933);
end

if i<=0.5
if stre_zf>stre_zp
if t>t_0
t_e=t-t_0;
else
t_e=0;
end
epsilong_creepf=e*log10((t_0+t_e)/t_0)/(1+f);
if t>t_EOP
epsilong_secon=e*log10(t/t_EOP)/(1+f);
else
epsilong_secon=0;
end
else
t_er=t_0*(stre_zf/stre_zp)^((a-b)/e)-t_0;
t_e=t_er+t-t_0;
if t_e<0
t_e=0;
end
epsilong_creepf=e*log10((t_0+t_e)/(t_0+t_er))/(1+f);
if t>t_EOP
epsilong_secon=e*log10((t+t_er)/(t_EOP+t_er))/(1+f);
else
epsilong_secon=0;
end  
end
S_totalA =U_v*S_f+epsilong_secon*i;
S_totalB_old1 =U_v*S_f+epsilong_creepf*i;
S_totalB_old2 =U_v*S_f+(0.8*epsilong_creepf+(1-0.8)*epsilong_secon)*i;
S_totalB =U_v*S_f+(alpha*epsilong_creepf+(1-alpha)*epsilong_secon)*i;
else
if h>d
if t>t_0
t_e=t-t_0;
else
t_e=0;
end
epsilong_creepf=e*log10((t_0+t_e)/t_0)/(1+f);
if t>t_EOP
epsilong_secon=e*log10(t/t_EOP)/(1+f);
else
epsilong_secon=0;
end
S_totalA =U_v*S_f+epsilong_secon*i;
S_totalB_old1 =U_v*S_f+epsilong_creepf*i;
S_totalB_old2 =U_v*S_f+(0.8*epsilong_creepf+(1-0.8)*epsilong_secon)*i;
S_totalB =U_v*S_f+(alpha*epsilong_creepf+(1-alpha)*epsilong_secon)*i;
else
    for oo=1:1:kk
t_er(oo)=t_0*(stre_zf2(oo)/stre_zp2(oo))^((a-b)/e)-t_0;
t_e(oo)=t_er(oo)+t-t_0;
if t_e(oo)<0
t_e(oo)=0;
end
epsilong_creepf(oo)=e*log10((t_0+t_e(oo))/(t_0+t_er(oo)))/(1+f);
if t>t_EOP
epsilong_secon(oo)=e*log10((t+t_er(oo))/(t_EOP+t_er(oo)))/(1+f);
else
epsilong_secon(oo)=0;
end 
    end
S_creepf=0;S_secon=0;
for oo=1:1:kk-1
S_creepf=S_creepf+epsilong_creepf(oo)*0.5;
S_secon=S_secon+epsilong_secon(oo)*0.5;
end
S_creepf=S_creepf+epsilong_creepf(kk)*mod(i,0.5);
S_secon=S_secon+epsilong_secon(kk)*mod(i,0.5);
S_totalA =U_v*S_f+S_secon;
S_totalB_old1 =U_v*S_f+S_creepf;
S_totalB_old2 =U_v*S_f+0.8*S_creepf+(1-0.8)*S_secon;
S_totalB =U_v*S_f+alpha*S_creepf+(1-alpha)*S_secon;
end
end
set(handles.edit18,'String',S_totalA);
set(handles.edit26,'String',S_totalB_old1);
set(handles.edit27,'String',S_totalB_old2);
set(handles.edit28,'String',S_totalB);


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
global kongzhi2
if kongzhi2==10
else
   onelayer_attribute
    return
end
global huitan1 yasuo1 chushi1 rubian1 tude1 yufu1 pingjun1 tuhou1 tiling1 i51;
a=huitan1;
b=yasuo1;
c=tude1;
d=yufu1;
e=rubian1;
f=chushi1;
g=pingjun1;
h=str2double(get(handles.edit21,'String'));
i=tuhou1;
k=str2double(get(handles.edit24,'String'));
t_0=tiling1;
gamma_water=9.81;
epsilong_z0=0;
delta=2;
ff=i/0.45;
bb=1;
if i<=0.5
Z=i/2;
stre_z0=(c-gamma_water)*Z;
stre_zp=d+stre_z0;
stre_zf=stre_z0+h;
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
stre_zf2(kk)=stre_z02(kk)+h;
kk=kk+1;
end
Z=mod(i,0.5)/2+floor(i/0.5)*0.5;
stre_z02(kk)=(c-gamma_water)*Z;
stre_zp2(kk)=d+stre_z02(kk);
stre_zf2(kk)=stre_z02(kk)+h;
S_f=0;
if h>d
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
m_v=S_f/i/h;
c_v=g/gamma_water/m_v;
for ooo=0.0001*ff^2:0.004*ff^2:10000*ff^2%day
T_v=c_v*ooo/i51^2;
U_v2=sqrt(4*T_v/pi);
if U_v2>0.6
U_v2=1-10^(-(T_v+0.085)/0.933);
end
%以固结度超过98%时的最小时间为主固结完成时间。
if U_v2>=0.98
break
end
end
t_EOP=ooo;
jindutiao=waitbar(0,'开始绘图');
for t=0.001*ff^2:0.01*ff^2:k%day
T_alpha=c_v*t/(delta*i51)^2;
alpha=sqrt(4*T_alpha/pi);
if alpha>0.6
alpha=1-10^(-(T_alpha+0.085)/0.933);
end
T_alpha2=c_v*t/i51^2;
U_v=sqrt(4*T_alpha2/pi);
if U_v>0.6
U_v=1-10^(-(T_alpha2+0.085)/0.933);
end

if i<=0.5
if stre_zf>stre_zp
if t>t_0
t_e=t-t_0;
else
t_e=0;
end
epsilong_creepf=e*log10((t_0+t_e)/t_0)/(1+f);
if t>t_EOP
epsilong_secon=e*log10(t/t_EOP)/(1+f);
else
epsilong_secon=0;
end
else
t_er=t_0*(stre_zf/stre_zp)^((a-b)/e)-t_0;
t_e=t_er+t-t_0;
if t_e<0
t_e=0;
end
epsilong_creepf=e*log10((t_0+t_e)/(t_0+t_er))/(1+f);
if t>t_EOP
epsilong_secon=e*log10((t+t_er)/(t_EOP+t_er))/(1+f);
else
epsilong_secon=0;
end  
end
S_totalA =U_v*S_f+epsilong_secon*i;
S_totalB_old1 =U_v*S_f+epsilong_creepf*i;
S_totalB_old2 =U_v*S_f+(0.8*epsilong_creepf+(1-0.8)*epsilong_secon)*i;
S_totalB =U_v*S_f+(alpha*epsilong_creepf+(1-alpha)*epsilong_secon)*i;
else
if h>d
if t>t_0
t_e=t-t_0;
else
t_e=0;
end
epsilong_creepf=e*log10((t_0+t_e)/t_0)/(1+f);
if t>t_EOP
epsilong_secon=e*log10(t/t_EOP)/(1+f);
else
epsilong_secon=0;
end
S_totalA =U_v*S_f+epsilong_secon*i;
S_totalB_old1 =U_v*S_f+epsilong_creepf*i;
S_totalB_old2 =U_v*S_f+(0.8*epsilong_creepf+(1-0.8)*epsilong_secon)*i;
S_totalB =U_v*S_f+(alpha*epsilong_creepf+(1-alpha)*epsilong_secon)*i;
else
    for oo=1:1:kk
t_er(oo)=t_0*(stre_zf2(oo)/stre_zp2(oo))^((a-b)/e)-t_0;
t_e(oo)=t_er(oo)+t-t_0;
if t_e(oo)<0
t_e(oo)=0;
end
epsilong_creepf(oo)=e*log10((t_0+t_e(oo))/(t_0+t_er(oo)))/(1+f);
if t>t_EOP
epsilong_secon(oo)=e*log10((t+t_er(oo))/(t_EOP+t_er(oo)))/(1+f);
else
epsilong_secon(oo)=0;
end
    end
S_creepf=0;S_secon=0;
for oo=1:1:kk-1
S_creepf=S_creepf+epsilong_creepf(oo)*0.5;
S_secon=S_secon+epsilong_secon(oo)*0.5;
end
S_creepf=S_creepf+epsilong_creepf(kk)*mod(i,0.5);
S_secon=S_secon+epsilong_secon(kk)*mod(i,0.5);
S_totalA =U_v*S_f+S_secon;
S_totalB_old1 =U_v*S_f+S_creepf;
S_totalB_old2 =U_v*S_f+0.8*S_creepf+(1-0.8)*S_secon;
S_totalB =U_v*S_f+alpha*S_creepf+(1-alpha)*S_secon;
end
end

aaa(bb)=S_totalA;
bbb(bb)=S_totalB_old1;
ccc(bb)=S_totalB_old2;
ddd(bb)=S_totalB;
bb=bb+1;
if t/k>0.18&&t/k<0.20
waitbar(t/k,jindutiao,'已完成20%')
elseif t/k>0.38&&t/k<0.40
    waitbar(t/k,jindutiao,'已完成40%')
    elseif t/k>0.58&&t/k<0.60
    waitbar(t/k,jindutiao,'已完成60%')
    elseif t/k>0.78&&t/k<0.80
    waitbar(t/k,jindutiao,'已完成80%')
end
end
delete(jindutiao);
%axes(handles.axes15);
%axes('position',[.48,.245,0.49,0.5]);
%axis off;
figure('Name','沉降时间关系');
%set(hObject,'Toolbar','none')
hh1=0;hh2=0;hh3=0;hh4=0;
t_1=0.001*ff^2:0.01*ff^2:k;
if get(handles.checkbox1,'value')
semilogx(t_1,aaa,':');hold on;
hh1=1;
end
if get(handles.checkbox2,'value')
semilogx(t_1,bbb,'-.');hold on;
hh2=1;
end
if get(handles.checkbox3,'value')
semilogx(t_1,ccc,'--');hold on;
hh3=1;
end
if get(handles.checkbox4,'value')
semilogx(t_1,ddd);hold on;
hh4=1;
end
set(gca,'ydir','reverse');
set(gca,'xaxislocation','top');
xlabel('Time(day)');
ylabel('Settlement(m)');
grid on;
if (hh1&&hh2)&&(hh3&&hh4)
leg=legend('不考虑主固结蠕变','考虑主固结蠕变','alpha=0.8','alpha随时间而变化',3);
set(leg,'FontSize',8);%78,4,60,7
elseif (~hh1&&hh2)&&(hh3&&hh4)
leg=legend('考虑主固结蠕变','alpha=0.8','alpha随时间而变化',3);
set(leg,'FontSize',8);%78,4,60,7
elseif (hh1&&~hh2)&&(hh3&&hh4)
leg=legend('不考虑主固结蠕变','alpha=0.8','alpha随时间而变化',3);
set(leg,'FontSize',8);%78,4,60,7
elseif (hh1&&hh2)&&(~hh3&&hh4)
leg=legend('不考虑主固结蠕变','考虑主固结蠕变','alpha随时间而变化',3);
set(leg,'FontSize',8);%78,4,60,7
elseif (hh1&&hh2)&&(hh3&&~hh4)
   leg=legend('不考虑主固结蠕变','考虑主固结蠕变','alpha=0.8',3);
set(leg,'FontSize',8);%78,4,60,7
 elseif (~hh1&&~hh2)&&(hh3&&hh4)  
   leg=legend('alpha=0.8','alpha随时间而变化',3);
set(leg,'FontSize',8);%78,4,60,7
 elseif (~hh1&&hh2)&&(~hh3&&hh4)  
   leg=legend('考虑主固结蠕变','alpha随时间而变化',3);
set(leg,'FontSize',8);%78,4,60,7
 elseif (~hh1&&hh2)&&(hh3&&~hh4)  
   leg=legend('考虑主固结蠕变','alpha=0.8',3);
set(leg,'FontSize',8);%78,4,60,7
 elseif (hh1&&~hh2)&&(~hh3&&hh4) 
   leg=legend('不考虑主固结蠕变','alpha随时间而变化',3);
set(leg,'FontSize',8);%78,4,60,7
 elseif (hh1&&~hh2)&&(hh3&&~hh4)
   leg=legend('不考虑主固结蠕变','alpha=0.8',3);
set(leg,'FontSize',8);%78,4,60,7
 elseif (hh1&&hh2)&&(~hh3&&~hh4)
   leg=legend('不考虑主固结蠕变','考虑主固结蠕变',3);
set(leg,'FontSize',8);%78,4,60,7
 elseif (~hh1&&~hh2)&&(~hh3&&hh4) 
   leg=legend('alpha随时间而变化',3);
set(leg,'FontSize',8);%78,4,60,7
 elseif (~hh1&&~hh2)&&(hh3&&~hh4) 
   leg=legend('alpha=0.8',3);
set(leg,'FontSize',8);%78,4,60,7
 elseif (hh1&&~hh2)&&(~hh3&&~hh4)
  leg=legend('不考虑主固结蠕变',3);
set(leg,'FontSize',8);%78,4,60,7
  elseif (~hh1&&hh2)&&(~hh3&&~hh4)
leg=legend('考虑主固结蠕变',3);
set(leg,'FontSize',8);%78,4,60,7
else 
end
global t_11 az bz cz dz;
t_11=t_1; az=aaa; bz=bbb; cz=ccc; dz=ddd;
 clear aaa bbb ccc ddd t_1;


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


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
onelayer_attribute


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t_11 az bz cz dz;
tttt=t_11';
aaaa=az';
bbbb=bz';
cccc=cz';
dddd=dz';
asas=[tttt aaaa bbbb cccc dddd];
ss={'t(day)','Settlement_A(m)','Settlement_B1(m)','Settlement_B2(m)','Settlement_B3(m)'};
   

[fname,pname]=uiputfile({'*.xls'},'Pick an data-file');%;

if isequal(fname,0)||isequal(pname,0) 
    msgbox('请为新文件命名！','导出失败！');
    return  
end
str=strcat(pname,fname);
xlswrite(str,ss);
xlswrite(str,asas,1,'A2');% 'C:\Users\HP\Documents\MATLAB\data_matlab0'
msgbox(['数据已存入',str],'数据导出成功！')


% --- Executes when user attempts to close figure1.
function figure1_CloseRequestFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: delete(hObject) closes the figure
delete(hObject);

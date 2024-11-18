function varargout = doublelayers_calculate(varargin)
% DOUBLELAYERS_CALCULATE M-file for doublelayers_calculate.fig
%      DOUBLELAYERS_CALCULATE, by itself, creates a new DOUBLELAYERS_CALCULATE or raises the existing
%      singleton*.
%
%      H = DOUBLELAYERS_CALCULATE returns the handle to a new DOUBLELAYERS_CALCULATE or the handle to
%      the existing singleton*.
%
%      DOUBLELAYERS_CALCULATE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DOUBLELAYERS_CALCULATE.M with the given input arguments.
%
%      DOUBLELAYERS_CALCULATE('Property','Value',...) creates a new DOUBLELAYERS_CALCULATE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before doublelayers_calculate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to doublelayers_calculate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help doublelayers_calculate

% Last Modified by GUIDE v2.5 18-Aug-2017 16:02:15

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @doublelayers_calculate_OpeningFcn, ...
                   'gui_OutputFcn',  @doublelayers_calculate_OutputFcn, ...
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


% --- Executes just before doublelayers_calculate is made visible.
function doublelayers_calculate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to doublelayers_calculate (see VARARGIN)

% Choose default command line output for doublelayers_calculate
handles.output = hObject;
global kongzhi
kongzhi=1;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes doublelayers_calculate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = doublelayers_calculate_OutputFcn(hObject, eventdata, handles) 
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
global kongzhi
if kongzhi==10
else
    doublelayers_attribute
    return
end
global huitan21 yasuo21 chushi21 rubian21 tude21 yufu21 pingjun21 tuceng21  huitan22 yasuo22 chushi22 rubian22 tude22 yufu22 pingjun22 tuceng22 tiling2 paishuiqk;

a=huitan21;

b=yasuo21;
c=tude21;
d=yufu21;
e=rubian21;
f=chushi21;
g=pingjun21;
h=str2double(get(handles.edit21,'String'));
i=tuceng21;
a2=huitan22;
b2=yasuo22;
c2=tude22;
d2=yufu22;
e2=rubian22;
f2=chushi22;
g2=pingjun22;
i2=tuceng22;
t_0=tiling2;
t=str2double(get(handles.edit17,'String'));

gamma_water=9.81;
epsilong_z0=0;
delta=2;
ff=(i+i2)/0.45;
if i<=0.5
Z=i/2;
stre_z0=(c-gamma_water)*Z;
stre_zp=d+stre_z0;
stre_zf=stre_z0+h;
if stre_zf>stre_zp
S_f1=(b*log10(stre_zf/stre_zp)/(1+f)+epsilong_z0+a*log10(stre_zp/stre_z0)/(1+f))*i;
else
S_f1=(a*log10(stre_zf/stre_z0)/(1+f)+epsilong_z0)*i;
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
S_f1=0;
if h>d
    for oo=1:1:kk-1
        S_f1=S_f1+(b*log10(stre_zf2(oo)/stre_zp2(oo))/(1+f)+epsilong_z0+a*log10(stre_zp2(oo)/stre_z02(oo))/(1+f))*0.5;
    end
    S_f1=S_f1+(b*log10(stre_zf2(kk)/stre_zp2(kk))/(1+f)+epsilong_z0+a*log10(stre_zp2(kk)/stre_z02(kk))/(1+f))*mod(i,0.5);
else
    for oo=1:1:kk-1
    S_f1=S_f1+(a*log10(stre_zf2(oo)/stre_z02(oo))/(1+f)+epsilong_z0)*0.5;
    end
    S_f1=S_f1+(a*log10(stre_zf2(kk)/stre_z02(kk))/(1+f)+epsilong_z0)*mod(i,0.5);

end
end
if i2<=0.5
Z=i2/2;
stre_z01=(c2-gamma_water)*Z;
stre_zp1=d2+stre_z01;
stre_zf1=stre_z01+h;
if h>d2
S_f2=(b2*log10(stre_zf1/stre_zp1)/(1+f2)+epsilong_z0+a2*log10(stre_zp1/stre_z01)/(1+f2))*i2;
else
S_f2=(a2*log10(stre_zf1/stre_z01)/(1+f2)+epsilong_z0)*i2;
end
else
jj=floor(i2/0.5)-1;kk=1;
for pp=0:1:jj
Z=0.25+pp*0.5;
stre_z021(kk)=(c2-gamma_water)*Z;
stre_zp21(kk)=d2+stre_z021(kk);
stre_zf21(kk)=stre_z021(kk)+h;
kk=kk+1;
end
Z=mod(i2,0.5)/2+floor(i2/0.5)*0.5;
stre_z021(kk)=(c2-gamma_water)*Z;
stre_zp21(kk)=d2+stre_z021(kk);
stre_zf21(kk)=stre_z021(kk)+h;
S_f2=0;
if h>d2
    for oo=1:1:kk-1
        S_f2=S_f2+(b2*log10(stre_zf21(oo)/stre_zp21(oo))/(1+f2)+epsilong_z0+a2*log10(stre_zp21(oo)/stre_z021(oo))/(1+f2))*0.5;
    end
    S_f2=S_f2+(b2*log10(stre_zf21(kk)/stre_zp21(kk))/(1+f2)+epsilong_z0+a2*log10(stre_zp21(kk)/stre_z021(kk))/(1+f2))*mod(i2,0.5);
else
    for oo=1:1:kk-1
    S_f2=S_f2+(a2*log10(stre_zf21(oo)/stre_z021(oo))/(1+f2)+epsilong_z0)*0.5;
    end
    S_f2=S_f2+(a2*log10(stre_zf21(kk)/stre_z021(kk))/(1+f2)+epsilong_z0)*mod(i2,0.5);

end
end
m_v1=S_f1/i/h;
c_v1=g/gamma_water/m_v1;
m_v2=S_f2/i2/h;
c_v2=g2/gamma_water/m_v2;
i20=i2*(c_v1/c_v2)^0.5;
if paishuiqk==2
option=2;
else 
    option=1;
end

for j=0.001*ff^2:0.002*ff^2:1000*ff^2%day
T_v=c_v1*j/((i+i20)/option)^2;
U_v_N1=sqrt(4*T_v/pi);
if U_v_N1>0.6
U_v_N1=1-10^(-(T_v+0.085)/0.933);
end
if U_v_N1>0.98
break;
end
end
t_EOP=j;
if option==2
    clear gamm cq eq1;
p=(sqrt(g2*m_v2)-sqrt(g*m_v1))/(sqrt(g2*m_v2)+sqrt(g*m_v1));%p is an independent parameter.
q=(i*sqrt(c_v2)-i2*sqrt(c_v1))/(i*sqrt(c_v2)+i2*sqrt(c_v1));
if q>-0.03&&q<0
    q=-0.03;
elseif q<0.03&&q>=0
q=0.03;
end
%q is an independent parameter.
ommiga=(1+q)/2;
xi=(1-q)/2;
T_c=0.000000001;%construction time factor.
%time factor.
%——————计算cos(thet)-p*cos(q*thet)=0的解gamma，由于有无穷解，故只取其中6个绝对值最小的解，
%其他的解对固结度的计算结果影响不大。——————
xx=0;
for thet=pi/30:0.0001:5*pi

if abs(sin(thet)+p*sin(q*thet))<0.003;
if (xx>0)&&(abs(thet-gamm(xx))<(pi/30))
continue;
end
    xx=xx+1;
gamm(xx)=thet;
end
end
num=numel(gamm);%求得gamma值的个数。
for ii=1:num%通过循环计算出各个c值。
    cq(ii)=2*((1+q)*(1-p)/(1-q)/(1+p)*xi*sin(gamm(ii)*xi)+ommiga*sin(gamm(ii)*ommiga))^2/ommiga^2/xi^2/((1+q)*(1-p)/(1-q)/(1+p)+1)/((1+q)*(1-p)/(1-q)/(1+p)*(sin(gamm(ii)*xi))^2+(sin(gamm(ii)*ommiga))^2);
end
else
clear gamm cq eq1;
p=(sqrt(g2*m_v2)-sqrt(g*m_v1))/(sqrt(g2*m_v2)+sqrt(g*m_v1));%p is an independent parameter.
q=(i*sqrt(c_v2)-i2*sqrt(c_v1))/(i*sqrt(c_v2)+i2*sqrt(c_v1));%q is an independent parameter.
if q>-0.23&&q<-0.2
    q=-0.23;
elseif q<-0.17&&q>=-0.2
q=-0.17;
elseif q<0.6&&q>0.57
q=0.57;
elseif q>=0.6&&q<0.63
q=0.63;
end
ommiga=(1+q)/2;
xi=(1-q)/2;
T_c=0.0000000001;
xx=0;
for thet=0:0.0001:5*pi
if abs(cos(thet)-p*cos(q*thet))<0.003;
if (xx>0)&&(abs(thet-gamm(xx))<(pi/30))
continue;
end
    xx=xx+1;
gamm(xx)=thet;
end

end
%————以上解cos(thet)-p*cos(q*thet)=0的方法已经试验，能得到适用于计算固结度的6个解（gamma）。
num=numel(gamm);%求得gamma值的个数。
for ii=1:num%通过循环计算出各个c值。
    cq(ii)=2*((1+q)*(1-p)/(1-q)/(1+p)*xi*cos(gamm(ii)*xi))^2/ommiga^2/xi^2/((1+q)*(1-p)/(1-q)/(1+p)+1)/((1+q)*(1-p)/(1-q)/(1+p)*(cos(gamm(ii)*xi))^2+(sin(gamm(ii)*ommiga))^2);
end
end
for j=0.001*ff^2:0.004*ff^2:1000*ff^2%day
T=c_v1*c_v2*j/(i*sqrt(c_v2)+i2*sqrt(c_v1))^2;
%q is an independent parameter.
%construction time factor.
%time factor.
%——————计算cos(thet)-p*cos(q*thet)=0的解gamma，由于有无穷解，故只取其中6个绝对值最小的解，
%其他的解对固结度的计算结果影响不大。——————
for ii=1:num
   eq1(ii)=cq(ii)/(gamm(ii))^4/T_c*(1-exp(-(gamm(ii))^2*T_c))*exp(-(gamm(ii))^2*(T-T_c));%
end
    U_a1=1-sum(eq1);

if U_a1>0.98
break;
end
end
t_EOP2=j;
T_alpha=c_v1*t/(delta*(i20+i)/option)^2;
alpha_N=sqrt(4*T_alpha/pi);
if alpha_N>0.6
alpha_N=1-10^(-(T_alpha+0.085)/0.933);
end
T_v=c_v1*t/((i+i20)/option)^2;
U_v_N=sqrt(4*T_v/pi);
if U_v_N>0.6
U_v_N=1-10^(-(T_v+0.085)/0.933);
end
T=c_v1*c_v2*t/(i*sqrt(c_v2)+i2*sqrt(c_v1))^2;
%q is an independent parameter.
%construction time factor.
%time factor.
%——————计算cos(thet)-p*cos(q*thet)=0的解gamma，由于有无穷解，故只取其中6个绝对值最小的解，
%其他的解对固结度的计算结果影响不大。——————

for ii=1:num
   eq1(ii)=cq(ii)/(gamm(ii))^4/T_c*(1-exp(-(gamm(ii))^2*T_c))*exp(-(gamm(ii))^2*(T-T_c));%
end
    U_a=1-sum(eq1);


T_alpha2=c_v1*c_v2*t/(delta*i*sqrt(c_v2)+delta*i2*sqrt(c_v1))^2;
alpha_Z=sqrt(4*T_alpha2/pi);
if alpha_Z>0.6
alpha_Z=1-10^(-(T_alpha2+0.085)/0.933);
end
if i<=0.5
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
if t>t_EOP2
epsilong_secon_2=e*log10(t/t_EOP2)/(1+f);
else
epsilong_secon_2=0;
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
if t>t_EOP2
epsilong_secon_2=e*log10((t+t_er)/(t_EOP2+t_er))/(1+f);
else
epsilong_secon_2=0;
end  
end
S_secon=epsilong_secon*i;
S_secon_2=epsilong_secon_2*i;
S_creepf=epsilong_creepf*i;
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
if t>t_EOP2
epsilong_secon_2=e*log10(t/t_EOP2)/(1+f);
else
epsilong_secon_2=0;
end
S_secon=epsilong_secon*i;
S_secon_2=epsilong_secon_2*i;
S_creepf=epsilong_creepf*i;
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
if t>t_EOP2
epsilong_secon_2(oo)=e*log10((t+t_er(oo))/(t_EOP2+t_er(oo)))/(1+f);
else
epsilong_secon_2(oo)=0;
end 
    end
S_creepf=0;S_secon=0;S_secon_2=0;
for oo=1:1:kk-1
S_creepf=S_creepf+epsilong_creepf(oo)*0.5;
S_secon_2=S_secon_2+epsilong_secon_2(oo)*0.5;
S_secon=S_secon+epsilong_secon(oo)*0.5;
end
S_creepf=S_creepf+epsilong_creepf(kk)*mod(i,0.5);
S_secon=S_secon+epsilong_secon(kk)*mod(i,0.5);
S_secon_2=S_secon_2+epsilong_secon_2(kk)*mod(i,0.5);
end
end
if i2<=0.5
if h>d2
if t>t_0
t_e=t-t_0;
else
t_e=0;
end
epsilong_creepf2=e2*log10((t_0+t_e)/t_0)/(1+f2);
if t>t_EOP
epsilong_secon2=e2*log10(t/t_EOP)/(1+f2);
else
epsilong_secon2=0;
end
if t>t_EOP2
epsilong_secon2_2=e2*log10(t/t_EOP2)/(1+f2);
else
epsilong_secon2_2=0;
end
else
t_er=t_0*(stre_zf1/stre_zp1)^((a2-b2)/e2)-t_0;
t_e=t_er+t-t_0;
if t_e<0
t_e=0;
end
epsilong_creepf2=e2*log10((t_0+t_e)/(t_0+t_er))/(1+f2);
if t>t_EOP
epsilong_secon2=e2*log10((t+t_er)/(t_EOP+t_er))/(1+f2);
else
epsilong_secon2=0;
end  
if t>t_EOP2
epsilong_secon2_2=e2*log10((t+t_er)/(t_EOP2+t_er))/(1+f2);
else
epsilong_secon2_2=0;
end 
end
S_secon2_2=epsilong_secon2_2*i2;
S_secon2=epsilong_secon2*i2;
S_creepf2=epsilong_creepf2*i2;
else
if h>d2
t_e=t-t_0;
if t_e<0
t_e=0;
end
epsilong_creepf2=e2*log10((t_0+t_e)/t_0)/(1+f2);
if t>t_EOP
epsilong_secon2=e2*log10(t/t_EOP)/(1+f2);
else
epsilong_secon2=0;
end
if t>t_EOP2
epsilong_secon2_2=e2*log10(t/t_EOP2)/(1+f2);
else
epsilong_secon2_2=0;
end
S_secon2=epsilong_secon2*i2;
S_secon2_2=epsilong_secon2_2*i2;
S_creepf2=epsilong_creepf2*i2;
else
    for oo=1:1:kk
t_er(oo)=t_0*(stre_zf21(oo)/stre_zp21(oo))^((a2-b2)/e2)-t_0;
t_e(oo)=t_er(oo)+t-t_0;
if t_e(oo)<0
t_e(oo)=0;
end
epsilong_creepf2(oo)=e2*log10((t_0+t_e(oo))/(t_0+t_er(oo)))/(1+f2);
if t>t_EOP
epsilong_secon2(oo)=e2*log10((t+t_er(oo))/(t_EOP+t_er(oo)))/(1+f2);
else
epsilong_secon2(oo)=0;
end 
if t>t_EOP2
epsilong_secon2_2(oo)=e2*log10((t+t_er(oo))/(t_EOP2+t_er(oo)))/(1+f2);
else
epsilong_secon2_2(oo)=0;
end 
    end
S_creepf2=0;S_secon2=0;S_secon2_2=0;
for oo=1:1:kk-1
S_creepf2=S_creepf2+epsilong_creepf2(oo)*0.5;
S_secon2=S_secon2+epsilong_secon2(oo)*0.5;
S_secon2_2=S_secon2_2+epsilong_secon2_2(oo)*0.5;
end
S_creepf2=S_creepf2+epsilong_creepf2(kk)*mod(i2,0.5);
S_secon2=S_secon2+epsilong_secon2(kk)*mod(i2,0.5);
S_secon2_2=S_secon2_2+epsilong_secon2_2(kk)*mod(i2,0.5);
end
end
aaa1=U_a*(S_f1+S_f2)+alpha_Z*(S_creepf+S_creepf2)+(1-alpha_Z)*(S_secon_2+S_secon2_2);
bbb1=U_v_N*(S_f1+S_f2)+alpha_N*(S_creepf+S_creepf2)+(1-alpha_N)*(S_secon+S_secon2);
ccc1=U_v_N*(S_f1+S_f2)+(S_secon+S_secon2);
set(handles.edit18,'String',aaa1);
set(handles.edit19,'String',bbb1);
set(handles.edit20,'String',ccc1);


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
global kongzhi
if kongzhi==10
else
    doublelayers_attribute
    return
end
global huitan21 yasuo21 chushi21 rubian21 tude21 yufu21 pingjun21 tuceng21  huitan22 yasuo22 chushi22 rubian22 tude22 yufu22 pingjun22 tuceng22 tiling2 paishuiqk;

a=huitan21;
b=yasuo21;
c=tude21;
d=yufu21;
e=rubian21;
f=chushi21;
g=pingjun21;
h=str2double(get(handles.edit21,'String'));
i=tuceng21;
k=str2double(get(handles.edit24,'String'));
a2=huitan22;
b2=yasuo22;
c2=tude22;
d2=yufu22;
e2=rubian22;
f2=chushi22;
g2=pingjun22;
i2=tuceng22;
t_0=tiling2;
gamma_water=9.81;
epsilong_z0=0;
delta=2;
ff=(i+i2)/0.45;
bb=1;
jindutiao=waitbar(0,'开始绘图');
if i<=0.5
Z=i/2;
stre_z0=(c-gamma_water)*Z;
stre_zp=d+stre_z0;
stre_zf=stre_z0+h;
if stre_zf>stre_zp
S_f1=(b*log10(stre_zf/stre_zp)/(1+f)+epsilong_z0+a*log10(stre_zp/stre_z0)/(1+f))*i;
else
S_f1=(a*log10(stre_zf/stre_z0)/(1+f)+epsilong_z0)*i;
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
S_f1=0;
if h>d
    for oo=1:1:kk-1
        S_f1=S_f1+(b*log10(stre_zf2(oo)/stre_zp2(oo))/(1+f)+epsilong_z0+a*log10(stre_zp2(oo)/stre_z02(oo))/(1+f))*0.5;
    end
    S_f1=S_f1+(b*log10(stre_zf2(kk)/stre_zp2(kk))/(1+f)+epsilong_z0+a*log10(stre_zp2(kk)/stre_z02(kk))/(1+f))*mod(i,0.5);
else
    for oo=1:1:kk-1
    S_f1=S_f1+(a*log10(stre_zf2(oo)/stre_z02(oo))/(1+f)+epsilong_z0)*0.5;
    end
    S_f1=S_f1+(a*log10(stre_zf2(kk)/stre_z02(kk))/(1+f)+epsilong_z0)*mod(i,0.5);

end
end
if i2<=0.5
Z=i2/2;
stre_z01=(c2-gamma_water)*Z;
stre_zp1=d2+stre_z01;
stre_zf1=stre_z01+h;
if h>d2
S_f2=(b2*log10(stre_zf1/stre_zp1)/(1+f2)+epsilong_z0+a2*log10(stre_zp1/stre_z01)/(1+f2))*i2;
else
S_f2=(a2*log10(stre_zf1/stre_z01)/(1+f2)+epsilong_z0)*i2;
end
else
jj=floor(i2/0.5)-1;kk=1;
for pp=0:1:jj
Z=0.25+pp*0.5;
stre_z021(kk)=(c2-gamma_water)*Z;
stre_zp21(kk)=d2+stre_z021(kk);
stre_zf21(kk)=stre_z021(kk)+h;
kk=kk+1;
end
Z=mod(i2,0.5)/2+floor(i2/0.5)*0.5;
stre_z021(kk)=(c2-gamma_water)*Z;
stre_zp21(kk)=d2+stre_z021(kk);
stre_zf21(kk)=stre_z021(kk)+h;
S_f2=0;
if h>d2
    for oo=1:1:kk-1
        S_f2=S_f2+(b2*log10(stre_zf21(oo)/stre_zp21(oo))/(1+f2)+epsilong_z0+a2*log10(stre_zp21(oo)/stre_z021(oo))/(1+f2))*0.5;
    end
    S_f2=S_f2+(b2*log10(stre_zf21(kk)/stre_zp21(kk))/(1+f2)+epsilong_z0+a2*log10(stre_zp21(kk)/stre_z021(kk))/(1+f2))*mod(i2,0.5);
else
    for oo=1:1:kk-1
    S_f2=S_f2+(a2*log10(stre_zf21(oo)/stre_z021(oo))/(1+f2)+epsilong_z0)*0.5;
    end
    S_f2=S_f2+(a2*log10(stre_zf21(kk)/stre_z021(kk))/(1+f2)+epsilong_z0)*mod(i2,0.5);

end
end
m_v1=S_f1/i/h;
c_v1=g/gamma_water/m_v1;
m_v2=S_f2/i2/h;
c_v2=g2/gamma_water/m_v2;
i20=i2*(c_v1/c_v2)^0.5;
if paishuiqk==2
option=2;
else 
    option=1;
end



if option==2
    clear gamm cq eq1;
p=(sqrt(g2*m_v2)-sqrt(g*m_v1))/(sqrt(g2*m_v2)+sqrt(g*m_v1));%p is an independent parameter.
q=(i*sqrt(c_v2)-i2*sqrt(c_v1))/(i*sqrt(c_v2)+i2*sqrt(c_v1));%q is an independent parameter.
if q>-0.03&&q<0
    q=-0.03;
elseif q<0.03&&q>=0
q=0.03;
end
ommiga=(1+q)/2;
xi=(1-q)/2;
T_c=0.000000001;%construction time factor.
%time factor.
%——————计算cos(thet)-p*cos(q*thet)=0的解gamma，由于有无穷解，故只取其中6个绝对值最小的解，
%其他的解对固结度的计算结果影响不大。——————
xx=0;
for thet=pi/30:0.0001:5*pi

if abs(sin(thet)+p*sin(q*thet))<0.003;
if (xx>0)&&(abs(thet-gamm(xx))<(pi/30))
continue;
end
    xx=xx+1;
gamm(xx)=thet;
end
end
num=numel(gamm);%求得gamma值的个数。
for ii=1:num%通过循环计算出各个c值。
    cq(ii)=2*((1+q)*(1-p)/(1-q)/(1+p)*xi*sin(gamm(ii)*xi)+ommiga*sin(gamm(ii)*ommiga))^2/ommiga^2/xi^2/((1+q)*(1-p)/(1-q)/(1+p)+1)/((1+q)*(1-p)/(1-q)/(1+p)*(sin(gamm(ii)*xi))^2+(sin(gamm(ii)*ommiga))^2);
end
else
clear gamm cq eq1;
p=(sqrt(g2*m_v2)-sqrt(g*m_v1))/(sqrt(g2*m_v2)+sqrt(g*m_v1));%p is an independent parameter.
q=(i*sqrt(c_v2)-i2*sqrt(c_v1))/(i*sqrt(c_v2)+i2*sqrt(c_v1));%q is an independent parameter.
if q>-0.23&&q<-0.2
    q=-0.23;
elseif q<-0.17&&q>=-0.2
q=-0.17;
elseif q<0.6&&q>0.57
q=0.57;
elseif q>=0.6&&q<0.63
q=0.63;
end
ommiga=(1+q)/2;
xi=(1-q)/2;
T_c=0.000000001;
xx=0;
for thet=0:0.0001:5*pi
if abs(cos(thet)-p*cos(q*thet))<0.003;
if (xx>0)&&(abs(thet-gamm(xx))<(pi/30))
continue;
end
    xx=xx+1;
gamm(xx)=thet;
end
end
%————以上解cos(thet)-p*cos(q*thet)=0的方法已经试验，能得到适用于计算固结度的6个解（gamma）。
num=numel(gamm);%求得gamma值的个数。
for ii=1:num%通过循环计算出各个c值。
    cq(ii)=2*((1+q)*(1-p)/(1-q)/(1+p)*xi*cos(gamm(ii)*xi))^2/ommiga^2/xi^2/((1+q)*(1-p)/(1-q)/(1+p)+1)/((1+q)*(1-p)/(1-q)/(1+p)*(cos(gamm(ii)*xi))^2+(sin(gamm(ii)*ommiga))^2);
end
end
waitbar(0.2,jindutiao,'已完成20%')
for t=0.001*ff^2:0.01*ff^2:k%day

T_alpha=c_v1*t/(delta*(i20+i)/option)^2;
alpha_N=sqrt(4*T_alpha/pi);
if alpha_N>0.6
alpha_N=1-10^(-(T_alpha+0.085)/0.933);
end
T_v=c_v1*t/((i+i20)/option)^2;
U_v_N=sqrt(4*T_v/pi);
if U_v_N>0.6
U_v_N=1-10^(-(T_v+0.085)/0.933);
end
if U_v_N<0.98
t_EOP=t;
end
T=c_v1*c_v2*t/(i*sqrt(c_v2)+i2*sqrt(c_v1))^2;
%q is an independent parameter.
%construction time factor.
%time factor.
%——————计算cos(thet)-p*cos(q*thet)=0的解gamma，由于有无穷解，故只取其中6个绝对值最小的解，
%其他的解对固结度的计算结果影响不大。——————
if option==2
for ii=1:num
   eq1(ii)=cq(ii)/(gamm(ii))^4/T_c*(1-exp(-(gamm(ii))^2*T_c))*exp(-(gamm(ii))^2*(T-T_c));%
end
    U_a=1-sum(eq1);

else
%construction time factor.
for ii=1:num
   eq1(ii)=cq(ii)/(gamm(ii))^4/T_c*(1-exp(-(gamm(ii))^2*T_c))*exp(-(gamm(ii))^2*(T-T_c));%
end
    U_a=1-sum(eq1);
end
if U_a<0.98
t_EOP2=t;
end

T_alpha2=c_v1*c_v2*t/(delta*i*sqrt(c_v2)+delta*i2*sqrt(c_v1))^2;
alpha_Z=sqrt(4*T_alpha2/pi);
if alpha_Z>0.6
alpha_Z=1-10^(-(T_alpha2+0.085)/0.933);
end
if i<=0.5
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
if t>t_EOP2
epsilong_secon_2=e*log10(t/t_EOP2)/(1+f);
else
epsilong_secon_2=0;
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
if t>t_EOP2
epsilong_secon_2=e*log10((t+t_er)/(t_EOP2+t_er))/(1+f);
else
epsilong_secon_2=0;
end  
end
S_secon=epsilong_secon*i;
S_secon_2=epsilong_secon_2*i;
S_creepf=epsilong_creepf*i;
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
if t>t_EOP2
epsilong_secon_2=e*log10(t/t_EOP2)/(1+f);
else
epsilong_secon_2=0;
end
S_secon=epsilong_secon*i;
S_secon_2=epsilong_secon_2*i;
S_creepf=epsilong_creepf*i;
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
if t>t_EOP2
epsilong_secon_2(oo)=e*log10((t+t_er(oo))/(t_EOP2+t_er(oo)))/(1+f);
else
epsilong_secon_2(oo)=0;
end 
    end
S_creepf=0;S_secon=0;S_secon_2=0;
for oo=1:1:kk-1
S_creepf=S_creepf+epsilong_creepf(oo)*0.5;
S_secon_2=S_secon_2+epsilong_secon_2(oo)*0.5;
S_secon=S_secon+epsilong_secon(oo)*0.5;
end
S_creepf=S_creepf+epsilong_creepf(kk)*mod(i,0.5);
S_secon=S_secon+epsilong_secon(kk)*mod(i,0.5);
S_secon_2=S_secon_2+epsilong_secon_2(kk)*mod(i,0.5);
end
end
if i2<=0.5
if h>d2
if t>t_0
t_e=t-t_0;
else
t_e=0;
end
epsilong_creepf2=e2*log10((t_0+t_e)/t_0)/(1+f2);
if t>t_EOP
epsilong_secon2=e2*log10(t/t_EOP)/(1+f2);
else
epsilong_secon2=0;
end
if t>t_EOP2
epsilong_secon2_2=e2*log10(t/t_EOP2)/(1+f2);
else
epsilong_secon2_2=0;
end
else
t_er=t_0*(stre_zf1/stre_zp1)^((a2-b2)/e2)-t_0;
t_e=t_er+t-t_0;
if t_e<0
t_e=0;
end
epsilong_creepf2=e2*log10((t_0+t_e)/(t_0+t_er))/(1+f2);
if t>t_EOP
epsilong_secon2=e2*log10((t+t_er)/(t_EOP+t_er))/(1+f2);
else
epsilong_secon2=0;
end  
if t>t_EOP2
epsilong_secon2_2=e2*log10((t+t_er)/(t_EOP2+t_er))/(1+f2);
else
epsilong_secon2_2=0;
end 
end
S_secon2_2=epsilong_secon2_2*i2;
S_secon2=epsilong_secon2*i2;
S_creepf2=epsilong_creepf2*i2;
else
if h>d2
t_e=t-t_0;
if t_e<0
t_e=0;
end
epsilong_creepf2=e2*log10((t_0+t_e)/t_0)/(1+f2);
if t>t_EOP
epsilong_secon2=e2*log10(t/t_EOP)/(1+f2);
else
epsilong_secon2=0;
end
if t>t_EOP2
epsilong_secon2_2=e2*log10(t/t_EOP2)/(1+f2);
else
epsilong_secon2_2=0;
end
S_secon2=epsilong_secon2*i2;
S_secon2_2=epsilong_secon2_2*i2;
S_creepf2=epsilong_creepf2*i2;
else
    for oo=1:1:kk
t_er(oo)=t_0*(stre_zf21(oo)/stre_zp21(oo))^((a2-b2)/e2)-t_0;
t_e(oo)=t_er(oo)+t-t_0;
if t_e(oo)<0
t_e(oo)=0;
end
epsilong_creepf2(oo)=e2*log10((t_0+t_e(oo))/(t_0+t_er(oo)))/(1+f2);
if t>t_EOP
epsilong_secon2(oo)=e2*log10((t+t_er(oo))/(t_EOP+t_er(oo)))/(1+f2);
else
epsilong_secon2(oo)=0;
end 
if t>t_EOP2
epsilong_secon2_2(oo)=e2*log10((t+t_er(oo))/(t_EOP2+t_er(oo)))/(1+f2);
else
epsilong_secon2_2(oo)=0;
end 
    end
S_creepf2=0;S_secon2=0;S_secon2_2=0;
for oo=1:1:kk-1
S_creepf2=S_creepf2+epsilong_creepf2(oo)*0.5;
S_secon2=S_secon2+epsilong_secon2(oo)*0.5;
S_secon2_2=S_secon2_2+epsilong_secon2_2(oo)*0.5;
end
S_creepf2=S_creepf2+epsilong_creepf2(kk)*mod(i2,0.5);
S_secon2=S_secon2+epsilong_secon2(kk)*mod(i2,0.5);
S_secon2_2=S_secon2_2+epsilong_secon2_2(kk)*mod(i2,0.5);
end
end
aaa1(bb)=U_a*(S_f1+S_f2)+alpha_Z*(S_creepf+S_creepf2)+(1-alpha_Z)*(S_secon_2+S_secon2_2);
bbb1(bb)=U_v_N*(S_f1+S_f2)+alpha_N*(S_creepf+S_creepf2)+(1-alpha_N)*(S_secon+S_secon2);
ccc1(bb)=U_v_N*(S_f1+S_f2)+(S_secon+S_secon2);
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
hh1=0;hh2=0;hh3=0;
if get(handles.checkbox1,'value')
t_2=0.001*ff^2:0.01*ff^2:k;%day
semilogx(t_2,aaa1);hold on;
hh1=1;
end
if get(handles.checkbox2,'value')
t_2=0.001*ff^2:0.01*ff^2:k;%day
semilogx(t_2,bbb1,'--');hold on;
hh2=1;
end
if get(handles.checkbox3,'value')
t_2=0.001*ff^2:0.01*ff^2:k;%day
semilogx(t_2,ccc1,'-.');hold on;
hh3=1;
end
set(gca,'ydir','reverse');
set(gca,'xaxislocation','top');
xlabel('Time(day)');
ylabel('Settlement(m)');
grid on;
if (hh1&&hh2)&&hh3
leg=legend('考虑主固结蠕变（zhu&yin法得固结度）','考虑主固结蠕变（US Navy法得固结度）','不考虑主固结蠕变（US Navy法得固结度）',3);
set(leg,'FontSize',8);%78,4,60,7
elseif (~hh1&&hh2)&&hh3
leg=legend('考虑主固结蠕变（US Navy法得固结度）','不考虑主固结蠕变（US Navy法得固结度）',3);
set(leg,'FontSize',8);%78,4,60,7
elseif (hh1&&~hh2)&&hh3
leg=legend('考虑主固结蠕变（zhu&yin法得固结度）','不考虑主固结蠕变（US Navy法得固结度）',3);
set(leg,'FontSize',8);%78,4,60,7
elseif (hh1&&hh2)&&~hh3
leg=legend('考虑主固结蠕变（zhu&yin法得固结度）','考虑主固结蠕变（US Navy法得固结度）',3);
set(leg,'FontSize',8);%78,4,60,7
elseif (~hh1&&~hh2)&&hh3
leg=legend('不考虑主固结蠕变（US Navy法得固结度）',3);
set(leg,'FontSize',8);%78,4,60,7
 elseif (hh1&&~hh2)&&~hh3  
leg=legend('考虑主固结蠕变（zhu&yin法得固结度）',3);
set(leg,'FontSize',8);%78,4,60,7
 elseif (~hh1&&hh2)&&~hh3  
leg=legend('考虑主固结蠕变（US Navy法得固结度）',3);
set(leg,'FontSize',8);%78,4,60,7
else 
end
global t_12 az2 bz2 cz2;
t_12=t_2;az2=aaa1;bz2=bbb1;cz2=ccc1;

 clear aaa1 bbb1 ccc1  t_2 t; 
 

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


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
doublelayers_attribute


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t_12 az2 bz2 cz2;
  

tttt=t_12';
aaaa=az2';
bbbb=bz2';
cccc=cz2';
asas=[tttt aaaa bbbb cccc];
ss={'t(day)','Settlement_B_Z&Y(m)','Settlement_B_U_N(m)','Settlement_A_U_N(m)'};


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

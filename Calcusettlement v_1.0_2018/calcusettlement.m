function varargout = calcusettlement(varargin)
% CALCUSETTLEMENT M-file for calcusettlement.fig
%      CALCUSETTLEMENT, by itself, creates a new CALCUSETTLEMENT or raises the existing
%      singleton*.
%
%      H = CALCUSETTLEMENT returns the handle to a new CALCUSETTLEMENT or the handle to
%      the existing singleton*.
%
%      CALCUSETTLEMENT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALCUSETTLEMENT.M with the given input arguments.
%
%      CALCUSETTLEMENT('Property','Value',...) creates a new CALCUSETTLEMENT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before calcusettlement_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to calcusettlement_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% setting the above text to modify the response to help calcusettlement

% Last Modified by GUIDE v2.5 07-Sep-2017 15:25:45

% Begin initialization code - DO NOT SETTING
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @calcusettlement_OpeningFcn, ...
                   'gui_OutputFcn',  @calcusettlement_OutputFcn, ...
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
% End initialization code - DO NOT SETTING


% --- Executes just before calcusettlement is made visible.
function calcusettlement_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to calcusettlement (see VARARGIN)

% Choose default command line output for calcusettlement
handles.output = hObject;
axes(handles.axes14);
imshow('排水情况.png');
set(hObject,'toolbar','none');


% Update handles structure
guidata(hObject, handles);

% UIWAIT makes calcusettlement wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = calcusettlement_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in make_figure.
function make_figure_Callback(hObject, eventdata, handles)
% hObject    handle to make_figure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes15); 
cla(handles.axes13);
cla(handles.axes12);
a=str2double(get(handles.rebound_index,'String'));
b=str2double(get(handles.compress_index,'String'));
c=str2double(get(handles.unitweight_soil,'String'));
d=str2double(get(handles.POP,'String'));
e=str2double(get(handles.C_alphae,'String'));
f=str2double(get(handles.initial_voidratio,'String'));
g=str2double(get(handles.coefficient_permeabili,'String'));
h=str2double(get(handles.increment1,'String'));
i=str2double(get(handles.thick,'String'));
k=str2double(get(handles.max_time,'String'));
t_0=str2double(get(handles.t_0,'String'));
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
if get(handles.radiobutton1,'value')
i5=i/2;
else 
    i5=i;
end
for ooo=0.0001*ff^2:0.004*ff^2:10000*ff^2%day
T_v=c_v*ooo/i5^2;
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
T_alpha=c_v*t/(delta*i5)^2;
alpha=sqrt(4*T_alpha/pi);
if alpha>0.6
alpha=1-10^(-(T_alpha+0.085)/0.933);
end
T_alpha2=c_v*t/i5^2;
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
axes(handles.axes15);
axes('position',[.48,.245,0.49,0.5]);
axis off;

hh1=0;hh2=0;hh3=0;hh4=0;
t_1=0.001*ff^2:0.01*ff^2:k;
global t_11 az bz cz dz;
t_11=t_1;az=aaa;bz=bbb;cz=ccc; dz=ddd;
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
leg=legend('依据假设A的计算方法','依据假设B的计算方法','alpha=0.8的计算方法','alpha随时间而变化的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
elseif (~hh1&&hh2)&&(hh3&&hh4)
leg=legend('依据假设B的计算方法','alpha=0.8的计算方法','alpha随时间而变化的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
elseif (hh1&&~hh2)&&(hh3&&hh4)
leg=legend('依据假设A的计算方法','alpha=0.8的计算方法','alpha随时间而变化的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
elseif (hh1&&hh2)&&(~hh3&&hh4)
leg=legend('依据假设A的计算方法','依据假设B的计算方法','alpha随时间而变化的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
elseif (hh1&&hh2)&&(hh3&&~hh4)
   leg=legend('依据假设A的计算方法','依据假设B的计算方法','alpha=0.8的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
 elseif (~hh1&&~hh2)&&(hh3&&hh4)  
   leg=legend('alpha=0.8的计算方法','alpha随时间而变化的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
 elseif (~hh1&&hh2)&&(~hh3&&hh4)  
   leg=legend('依据假设B的计算方法','alpha随时间而变化的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
 elseif (~hh1&&hh2)&&(hh3&&~hh4)  
   leg=legend('依据假设B的计算方法','alpha=0.8的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
 elseif (hh1&&~hh2)&&(~hh3&&hh4) 
   leg=legend('依据假设A的计算方法','alpha随时间而变化的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
 elseif (hh1&&~hh2)&&(hh3&&~hh4)
   leg=legend('依据假设A的计算方法','alpha=0.8的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
 elseif (hh1&&hh2)&&(~hh3&&~hh4)
   leg=legend('依据假设A的计算方法','依据假设B的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
 elseif (~hh1&&~hh2)&&(~hh3&&hh4) 
   leg=legend('alpha随时间而变化的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
 elseif (~hh1&&~hh2)&&(hh3&&~hh4) 
   leg=legend('alpha=0.8的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
 elseif (hh1&&~hh2)&&(~hh3&&~hh4)
  leg=legend('依据假设A的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
  elseif (~hh1&&hh2)&&(~hh3&&~hh4)
leg=legend('依据假设B的计算方法');
set(leg,'Position',[.5880,.3045,.06,.01],'FontSize',8);%78,4,60,7
else 
end

 clear aaa bbb ccc ddd t_1;
function rebound_index_Callback(hObject, eventdata, handles)
% hObject    handle to rebound_index (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rebound_index as text
%        str2double(get(hObject,'String')) returns contents of rebound_index as a double


% --- Executes during object creation, after setting all properties.
function rebound_index_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rebound_index (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function compress_index_Callback(hObject, eventdata, handles)
% hObject    handle to compress_index (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of compress_index as text
%        str2double(get(hObject,'String')) returns contents of compress_index as a double


% --- Executes during object creation, after setting all properties.
function compress_index_CreateFcn(hObject, eventdata, handles)
% hObject    handle to compress_index (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function unitweight_soil_Callback(hObject, eventdata, handles)
% hObject    handle to unitweight_soil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of unitweight_soil as text
%        str2double(get(hObject,'String')) returns contents of unitweight_soil as a double


% --- Executes during object creation, after setting all properties.
function unitweight_soil_CreateFcn(hObject, eventdata, handles)
% hObject    handle to unitweight_soil (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function POP_Callback(hObject, eventdata, handles)
% hObject    handle to POP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of POP as text
%        str2double(get(hObject,'String')) returns contents of POP as a double


% --- Executes during object creation, after setting all properties.
function POP_CreateFcn(hObject, eventdata, handles)
% hObject    handle to POP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C_alphae_Callback(hObject, eventdata, handles)
% hObject    handle to C_alphae (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C_alphae as text
%        str2double(get(hObject,'String')) returns contents of C_alphae as a double


% --- Executes during object creation, after setting all properties.
function C_alphae_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C_alphae (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function initial_voidratio_Callback(hObject, eventdata, handles)
% hObject    handle to initial_voidratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initial_voidratio as text
%        str2double(get(hObject,'String')) returns contents of initial_voidratio as a double


% --- Executes during object creation, after setting all properties.
function initial_voidratio_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initial_voidratio (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function coefficient_permeabili_Callback(hObject, eventdata, handles)
% hObject    handle to coefficient_permeabili (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of coefficient_permeabili as text
%        str2double(get(hObject,'String')) returns contents of coefficient_permeabili as a double


% --- Executes during object creation, after setting all properties.
function coefficient_permeabili_CreateFcn(hObject, eventdata, handles)
% hObject    handle to coefficient_permeabili (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function increment_Callback(hObject, eventdata, handles)
% hObject    handle to increment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of increment as text
%        str2double(get(hObject,'String')) returns contents of increment as a double


% --- Executes during object creation, after setting all properties.
function increment_CreateFcn(hObject, eventdata, handles)
% hObject    handle to increment (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function thick_Callback(hObject, eventdata, handles)
% hObject    handle to thick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of thick as text
%        str2double(get(hObject,'String')) returns contents of thick as a double


% --- Executes during object creation, after setting all properties.
function thick_CreateFcn(hObject, eventdata, handles)
% hObject    handle to thick (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in exit.
function exit_Callback(hObject, eventdata, handles)
% hObject    handle to exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

 
 



function settlement_A_Callback(hObject, eventdata, handles)
% hObject    handle to settlement_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of settlement_A as text
%        str2double(get(hObject,'String')) returns contents of settlement_A as a double


% --- Executes during object creation, after setting all properties.
function settlement_A_CreateFcn(hObject, eventdata, handles)
% hObject    handle to settlement_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function settlement_alpha08_Callback(hObject, eventdata, handles)
% hObject    handle to settlement_alpha08 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of settlement_alpha08 as text
%        str2double(get(hObject,'String')) returns contents of settlement_alpha08 as a double


% --- Executes during object creation, after setting all properties.
function settlement_alpha08_CreateFcn(hObject, eventdata, handles)
% hObject    handle to settlement_alpha08 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function settlement_alphavari_Callback(hObject, eventdata, handles)
% hObject    handle to settlement_alphavari (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of settlement_alphavari as text
%        str2double(get(hObject,'String')) returns contents of settlement_alphavari as a double


% --- Executes during object creation, after setting all properties.
function settlement_alphavari_CreateFcn(hObject, eventdata, handles)
% hObject    handle to settlement_alphavari (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function settlement_B_Callback(hObject, eventdata, handles)
% hObject    handle to settlement_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of settlement_B as text
%        str2double(get(hObject,'String')) returns contents of settlement_B as a double


% --- Executes during object creation, after setting all properties.
function settlement_B_CreateFcn(hObject, eventdata, handles)
% hObject    handle to settlement_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
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

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function settlement_alphavary_Callback(hObject, eventdata, handles)
% hObject    handle to settlement_alphavary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of settlement_alphavary as text
%        str2double(get(hObject,'String')) returns contents of settlement_alphavary as a double


% --- Executes during object creation, after setting all properties.
function settlement_alphavary_CreateFcn(hObject, eventdata, handles)
% hObject    handle to settlement_alphavary (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function time_Callback(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of time as text
%        str2double(get(hObject,'String')) returns contents of time as a double


% --- Executes during object creation, after setting all properties.
function time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculate.
function calculate_Callback(hObject, eventdata, handles)
% hObject    handle to calculate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.rebound_index,'String'));
b=str2double(get(handles.compress_index,'String'));
c=str2double(get(handles.unitweight_soil,'String'));
d=str2double(get(handles.POP,'String'));
e=str2double(get(handles.C_alphae,'String'));
f=str2double(get(handles.initial_voidratio,'String'));
g=str2double(get(handles.coefficient_permeabili,'String'));
h=str2double(get(handles.increment1,'String'));
i=str2double(get(handles.thick,'String'));
t=str2double(get(handles.time,'String'));
t_0=str2double(get(handles.t_0,'String'));
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
if get(handles.radiobutton1,'value')
i5=i/2;
else 
    i5=i;
end
for ooo=0.0001*ff^2:0.0005*ff^2:50*ff^2%day
T_v=c_v*ooo/i5^2;
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
T_alpha=c_v*t/(delta*i5)^2;
alpha=sqrt(4*T_alpha/pi);
if alpha>0.6
alpha=1-10^(-(T_alpha+0.085)/0.933);
end
T_alpha2=c_v*t/i5^2;
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
set(handles.settlement_A,'String',S_totalA);
set(handles.settlement_B,'String',S_totalB_old1);
set(handles.settlement_alpha08,'String',S_totalB_old2);
set(handles.settlement_alphavary,'String',S_totalB);


% --------------------------------------------------------------------
function file_Callback(hObject, eventdata, handles)
% hObject    handle to file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%axes(handles.axes1);
%newfig=figure


% --------------------------------------------------------------------

% --------------------------------------------------------------------
function xlswrite_Callback(hObject, eventdata, handles)
% hObject    handle to xlswrite (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global t_11 az bz cz dz t_12 az2 bz2 cz2 t_16 aaa9;
    va=get(handles.popupmenu1,'value');
switch va
    case 1
tttt=t_11';
aaaa=az';
bbbb=bz';
cccc=cz';
dddd=dz';
asas=[tttt aaaa bbbb cccc dddd];
ss={'t(day)','Settlement_A(m)','Settlement_B1(m)','Settlement_B2(m)','Settlement_B3(m)'};
    case 2
tttt=t_12';
aaaa=az2';
bbbb=bz2';
cccc=cz2';
asas=[tttt aaaa bbbb cccc];
ss={'t(day)','Settlement_B_Z&Y(m)','Settlement_B_U_N(m)','Settlement_A_U_N(m)'};
case 3
tttt=t_16';
aaaa=aaa9';
asas=[tttt aaaa];
ss={'t(day)','Settlement_period(m)'};
end

[fname,pname]=uiputfile({'*.xls'},'Pick an data-file');%;

if isequal(fname,0)||isequal(pname,0) 
    msgbox('请为新文件命名！','导出失败！');
    return  
end
str=strcat(pname,fname);
xlswrite(str,ss);
xlswrite(str,asas,1,'A2');% 'C:\Users\HP\Documents\MATLAB\data_matlab0'
msgbox(['数据已存入',str],'数据导出成功！')
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


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
var=get(handles.popupmenu1,'value');
switch var
    case 1
   cla reset;     
cla(handles.axes13);
cla(handles.axes12);
        set(handles.axes14,'visible','on');
        set(handles.axes13,'visible','off');
        set(handles.axes12,'visible','off');
        set(handles.axes14,'XColor',[0.94 0.94 0.94]);
       set(handles.axes14,'YColor',[0.94 0.94 0.94]);
       axes(handles.axes14);
imshow('排水情况.png');

        set(handles.text1,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text5,'visible','on');
        %set(handles.text6,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text9,'visible','on');
        set(handles.text16,'visible','on');
        set(handles.text17,'visible','on');
        set(handles.text18,'visible','on');
        set(handles.text19,'visible','on');
        set(handles.checkbox1,'visible','on');
        set(handles.checkbox2,'visible','on');
        set(handles.checkbox3,'visible','on');
        set(handles.checkbox4,'visible','on');
        set(handles.rebound_index,'visible','on');
        set(handles.compress_index,'visible','on');
        set(handles.initial_voidratio,'visible','on');
        set(handles.unitweight_soil,'visible','on');
        set(handles.POP,'visible','on');
        %set(handles.increment,'visible','on');
        set(handles.C_alphae,'visible','on');
        set(handles.coefficient_permeabili,'visible','on');
        set(handles.thick,'visible','on');
        set(handles.make_figure,'visible','on');
        set(handles.settlement_A,'visible','on');
        set(handles.settlement_B,'visible','on');
        set(handles.settlement_alpha08,'visible','on');
        set(handles.settlement_alphavary,'visible','on');
set(handles.calculate,'visible','on');
set(handles.text34,'visible','on');
        set(handles.text48,'visible','off');
        set(handles.text47,'visible','off');
        set(handles.increment1,'visible','on');
        set(handles.text29,'visible','off');
        set(handles.text30,'visible','off');
        set(handles.text31,'visible','off');
        set(handles.text32,'visible','off');
        set(handles.text33,'visible','off');
        set(handles.text35,'visible','off');
        set(handles.text36,'visible','off');
        set(handles.text37,'visible','off');
        set(handles.text38,'visible','off');
        set(handles.text39,'visible','off');
        set(handles.text40,'visible','off');
        set(handles.text41,'visible','off');
        set(handles.text42,'visible','off');
        set(handles.text44,'visible','off');
        set(handles.text45,'visible','off');
        set(handles.text46,'visible','off');
        set(handles.text49,'visible','off');
        set(handles.text50,'visible','off');
        set(handles.text51,'visible','off');
        set(handles.checkbox5,'visible','off');
        set(handles.checkbox6,'visible','off');
        set(handles.checkbox7,'visible','off');
        set(handles.rebound_index1,'visible','off');
        set(handles.compress_index1,'visible','off');
        set(handles.initial_voidratio1,'visible','off');
        set(handles.unitweight_soil1,'visible','off');
        set(handles.POP1,'visible','off');
        set(handles.C_alphae1,'visible','off');
        set(handles.coefficient_permeabili1,'visible','off');
        set(handles.height1,'visible','off');
        set(handles.rebound_index2,'visible','off');
        set(handles.compress_index2,'visible','off');
        set(handles.initial_voidratio2,'visible','off');
        set(handles.unitweight_soil2,'visible','off');
        set(handles.POP2,'visible','off');
        set(handles.cal,'visible','off');
        set(handles.C_alphae2,'visible','off');
        set(handles.coefficient_permeabili2,'visible','off');
        set(handles.height2,'visible','off');
        set(handles.make_figure2,'visible','off');
        set(handles.settlement_B_ZY,'visible','off');
        set(handles.settlement_B_U_N,'visible','off');
        set(handles.settlement_A_U_N,'visible','off');
        
         set(handles.text54,'visible','off'); 
set(handles. radiobutton3,'visible','off');
set(handles. radiobutton4,'visible','off'); 
set(handles. uipanel6,'visible','off');
set(handles. text58,'visible','off');
set(handles. text59,'visible','off');
set(handles. Tedit39,'visible','off');
set(handles. nedit40,'visible','off');
set(handles. make_figure3,'visible','off');
set(handles.time,'visible','on');
        set(handles.text14,'visible','on');
        set(handles.text15,'visible','on');
        
        set(handles.text60,'visible','off');
        set(handles.text61,'visible','off');
        set(handles.max_stress,'visible','off');
        set(handles.amplitude,'visible','off');
    case 2
        cla reset;    
cla(handles.axes14);
cla(handles.axes12);
        set(handles.axes14,'visible','off');
        set(handles.axes13,'visible','on');
        set(handles.axes12,'visible','off');
        set(handles.axes13,'XColor',[0.94 0.94 0.94]);
       set(handles.axes13,'YColor',[0.94 0.94 0.94]);
       axes(handles.axes13);
imshow('双土层结构2.png');
       
        set(handles.text1,'visible','off');
        set(handles.text2,'visible','off');
        set(handles.text3,'visible','off');
        set(handles.text4,'visible','off');
        set(handles.text5,'visible','off');
       % set(handles.text6,'visible','off');
        set(handles.text7,'visible','off');
        set(handles.text8,'visible','off');
        set(handles.text9,'visible','off');
        set(handles.text16,'visible','off');
        set(handles.text17,'visible','off');
        set(handles.text18,'visible','off');
        set(handles.text19,'visible','off');
        set(handles.checkbox1,'visible','off');
        set(handles.checkbox2,'visible','off');
        set(handles.checkbox3,'visible','off');
        set(handles.checkbox4,'visible','off');
        set(handles.rebound_index,'visible','off');
        set(handles.compress_index,'visible','off');
        set(handles.initial_voidratio,'visible','off');
        set(handles.unitweight_soil,'visible','off');
        set(handles.POP,'visible','off');
        %set(handles.increment,'visible','off');
        set(handles.C_alphae,'visible','off');
        set(handles.coefficient_permeabili,'visible','off');
        set(handles.thick,'visible','off');
        set(handles.make_figure,'visible','off');
        set(handles.settlement_A,'visible','off');
        set(handles.settlement_B,'visible','off');
        set(handles.settlement_alpha08,'visible','off');
        set(handles.settlement_alphavary,'visible','off');
set(handles.text34,'visible','on');
        set(handles.text48,'visible','on');
        set(handles.text47,'visible','on');
        set(handles.increment1,'visible','on');
        set(handles.text29,'visible','on');
        set(handles.text30,'visible','on');
        set(handles.text31,'visible','on');
        set(handles.text32,'visible','on');
        set(handles.text33,'visible','on');
        set(handles.text35,'visible','on');
        set(handles.text36,'visible','on');
        set(handles.text37,'visible','on');
        set(handles.text38,'visible','on');
        set(handles.text39,'visible','on');
        set(handles.text40,'visible','on');
        set(handles.text41,'visible','on');
        set(handles.text42,'visible','on');
        set(handles.text44,'visible','on');
        set(handles.text45,'visible','on');
        set(handles.text46,'visible','on');
        set(handles.text49,'visible','on');
        set(handles.text50,'visible','on');
        set(handles.text51,'visible','on');
        set(handles.checkbox5,'visible','on');
        set(handles.checkbox6,'visible','on');
        set(handles.checkbox7,'visible','on');
        set(handles.rebound_index1,'visible','on');
        set(handles.compress_index1,'visible','on');
        set(handles.initial_voidratio1,'visible','on');
        set(handles.unitweight_soil1,'visible','on');
        set(handles.POP1,'visible','on');
        set(handles.C_alphae1,'visible','on');
        set(handles.coefficient_permeabili1,'visible','on');
        set(handles.height1,'visible','on');
        set(handles.rebound_index2,'visible','on');
        set(handles.compress_index2,'visible','on');
        set(handles.initial_voidratio2,'visible','on');
        set(handles.unitweight_soil2,'visible','on');
        set(handles.POP2,'visible','on');
        set(handles.cal,'visible','on');
        set(handles.C_alphae2,'visible','on');
        set(handles.coefficient_permeabili2,'visible','on');
        set(handles.height2,'visible','on');
        set(handles.make_figure2,'visible','on');
        set(handles.settlement_B_ZY,'visible','on');
        set(handles.settlement_B_U_N,'visible','on');
        set(handles.settlement_A_U_N,'visible','on');
        
set(handles.calculate,'visible','off');
 set(handles.text54,'visible','off'); 
set(handles. radiobutton3,'visible','off');
set(handles. radiobutton4,'visible','off'); 
set(handles. uipanel6,'visible','off');
set(handles. text58,'visible','off');
set(handles. text59,'visible','off');
set(handles. Tedit39,'visible','off');
set(handles. nedit40,'visible','off');
set(handles. make_figure3,'visible','off');
set(handles.time,'visible','on');
        set(handles.text14,'visible','on');
        set(handles.text15,'visible','on');
        
        set(handles.text60,'visible','off');
        set(handles.text61,'visible','off');
        set(handles.max_stress,'visible','off');
        set(handles.amplitude,'visible','off');
    case 3
        cla reset;     
cla(handles.axes13);
cla(handles.axes14);
     axes(handles.axes12);
imshow('axes3.jpg');
        set(handles.axes14,'visible','off');
        set(handles.axes13,'visible','off');
        set(handles.axes12,'visible','on');
        set(handles.axes12,'XColor',[0.94 0.94 0.94]);
       set(handles.axes12,'YColor',[0.94 0.94 0.94]);
       
        set(handles.text1,'visible','on');
        set(handles.text2,'visible','on');
        set(handles.text3,'visible','on');
        set(handles.text4,'visible','on');
        set(handles.text5,'visible','on');
        %set(handles.text6,'visible','on');
        set(handles.text7,'visible','on');
        set(handles.text8,'visible','on');
        set(handles.text9,'visible','on');
        
        set(handles.time,'visible','off');
        set(handles.cal,'visible','off');
        set(handles.calculate,'visible','off');
        set(handles.text14,'visible','off');
        set(handles.text15,'visible','off');
        set(handles.text16,'visible','off');
        set(handles.text17,'visible','off');
        set(handles.text18,'visible','off');
        set(handles.text19,'visible','off');
        set(handles.make_figure,'visible','off');
        
        
        set(handles.checkbox1,'visible','off');
        set(handles.checkbox2,'visible','off');
        set(handles.checkbox3,'visible','off');
        set(handles.checkbox4,'visible','off');
        set(handles.rebound_index,'visible','on');
        set(handles.compress_index,'visible','on');
        set(handles.initial_voidratio,'visible','on');
        set(handles.unitweight_soil,'visible','on');
        set(handles.POP,'visible','on');
        %set(handles.increment,'visible','on');
        set(handles.C_alphae,'visible','on');
        set(handles.coefficient_permeabili,'visible','on');
        set(handles.thick,'visible','on');
        set(handles.make_figure,'visible','off');
        set(handles.settlement_A,'visible','off');
        set(handles.settlement_B,'visible','off');
        set(handles.settlement_alpha08,'visible','off');
        set(handles.settlement_alphavary,'visible','off');
set(handles.text34,'visible','off');
        set(handles.text48,'visible','off');
        set(handles.text47,'visible','off');
        set(handles.increment1,'visible','off');
        set(handles.text29,'visible','off');
        set(handles.text30,'visible','off');
        set(handles.text31,'visible','off');
        set(handles.text32,'visible','off');
        set(handles.text33,'visible','off');
        set(handles.text35,'visible','off');
        set(handles.text36,'visible','off');
        set(handles.text37,'visible','off');
        set(handles.text38,'visible','off');
        set(handles.text39,'visible','off');
        set(handles.text40,'visible','off');
        set(handles.text41,'visible','off');
        set(handles.text42,'visible','off');
        set(handles.text44,'visible','off');
        set(handles.text45,'visible','off');
        set(handles.text46,'visible','off');
        set(handles.text49,'visible','off');
        set(handles.text50,'visible','off');
        set(handles.text51,'visible','off');
        set(handles.checkbox5,'visible','off');
        set(handles.checkbox6,'visible','off');
        set(handles.checkbox7,'visible','off');
        set(handles.rebound_index1,'visible','off');
        set(handles.compress_index1,'visible','off');
        set(handles.initial_voidratio1,'visible','off');
        set(handles.unitweight_soil1,'visible','off');
        set(handles.POP1,'visible','off');
        set(handles.C_alphae1,'visible','off');
        set(handles.coefficient_permeabili1,'visible','off');
        set(handles.height1,'visible','off');
        set(handles.rebound_index2,'visible','off');
        set(handles.compress_index2,'visible','off');
        set(handles.initial_voidratio2,'visible','off');
        set(handles.unitweight_soil2,'visible','off');
        set(handles.POP2,'visible','off');
        set(handles.cal,'visible','off');
        set(handles.C_alphae2,'visible','off');
        set(handles.coefficient_permeabili2,'visible','off');
        set(handles.height2,'visible','off');
        set(handles.make_figure2,'visible','off');
        set(handles.settlement_B_ZY,'visible','off');
        set(handles.settlement_B_U_N,'visible','off');
        set(handles.settlement_A_U_N,'visible','off');
        
         set(handles.text54,'visible','on'); 
set(handles. radiobutton3,'visible','on');
set(handles. radiobutton4,'visible','on'); 
set(handles. uipanel6,'visible','on');
set(handles. text58,'visible','on');
set(handles. text59,'visible','on');
set(handles. Tedit39,'visible','on');
set(handles. nedit40,'visible','on');
set(handles. make_figure3,'visible','on');

set(handles.text60,'visible','on');
        set(handles.text61,'visible','on');
        set(handles.max_stress,'visible','on');
        set(handles.amplitude,'visible','on');
end
% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rebound_index1_Callback(hObject, eventdata, handles)
% hObject    handle to rebound_index1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rebound_index1 as text
%        str2double(get(hObject,'String')) returns contents of rebound_index1 as a double


% --- Executes during object creation, after setting all properties.
function rebound_index1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rebound_index1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function compress_index1_Callback(hObject, eventdata, handles)
% hObject    handle to compress_index1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of compress_index1 as text
%        str2double(get(hObject,'String')) returns contents of compress_index1 as a double


% --- Executes during object creation, after setting all properties.
function compress_index1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to compress_index1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function unitweight_soil1_Callback(hObject, eventdata, handles)
% hObject    handle to unitweight_soil1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of unitweight_soil1 as text
%        str2double(get(hObject,'String')) returns contents of unitweight_soil1 as a double


% --- Executes during object creation, after setting all properties.
function unitweight_soil1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to unitweight_soil1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function POP1_Callback(hObject, eventdata, handles)
% hObject    handle to POP1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of POP1 as text
%        str2double(get(hObject,'String')) returns contents of POP1 as a double


% --- Executes during object creation, after setting all properties.
function POP1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to POP1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C_alphae1_Callback(hObject, eventdata, handles)
% hObject    handle to C_alphae1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C_alphae1 as text
%        str2double(get(hObject,'String')) returns contents of C_alphae1 as a double


% --- Executes during object creation, after setting all properties.
function C_alphae1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C_alphae1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function initial_voidratio1_Callback(hObject, eventdata, handles)
% hObject    handle to initial_voidratio1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initial_voidratio1 as text
%        str2double(get(hObject,'String')) returns contents of initial_voidratio1 as a double


% --- Executes during object creation, after setting all properties.
function initial_voidratio1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initial_voidratio1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function coefficient_permeabili1_Callback(hObject, eventdata, handles)
% hObject    handle to coefficient_permeabili1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of coefficient_permeabili1 as text
%        str2double(get(hObject,'String')) returns contents of coefficient_permeabili1 as a double


% --- Executes during object creation, after setting all properties.
function coefficient_permeabili1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to coefficient_permeabili1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function increment1_Callback(hObject, eventdata, handles)
% hObject    handle to increment1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of increment1 as text
%        str2double(get(hObject,'String')) returns contents of increment1 as a double


% --- Executes during object creation, after setting all properties.
function increment1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to increment1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function height1_Callback(hObject, eventdata, handles)
% hObject    handle to height1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of height1 as text
%        str2double(get(hObject,'String')) returns contents of height1 as a double


% --- Executes during object creation, after setting all properties.
function height1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to height1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rebound_index2_Callback(hObject, eventdata, handles)
% hObject    handle to rebound_index2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rebound_index2 as text
%        str2double(get(hObject,'String')) returns contents of rebound_index2 as a double


% --- Executes during object creation, after setting all properties.
function rebound_index2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rebound_index2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function compress_index2_Callback(hObject, eventdata, handles)
% hObject    handle to compress_index2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of compress_index2 as text
%        str2double(get(hObject,'String')) returns contents of compress_index2 as a double


% --- Executes during object creation, after setting all properties.
function compress_index2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to compress_index2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function unitweight_soil2_Callback(hObject, eventdata, handles)
% hObject    handle to unitweight_soil2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of unitweight_soil2 as text
%        str2double(get(hObject,'String')) returns contents of unitweight_soil2 as a double


% --- Executes during object creation, after setting all properties.
function unitweight_soil2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to unitweight_soil2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function POP2_Callback(hObject, eventdata, handles)
% hObject    handle to POP2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of POP2 as text
%        str2double(get(hObject,'String')) returns contents of POP2 as a double


% --- Executes during object creation, after setting all properties.
function POP2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to POP2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function C_alphae2_Callback(hObject, eventdata, handles)
% hObject    handle to C_alphae2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of C_alphae2 as text
%        str2double(get(hObject,'String')) returns contents of C_alphae2 as a double


% --- Executes during object creation, after setting all properties.
function C_alphae2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to C_alphae2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function initial_voidratio2_Callback(hObject, eventdata, handles)
% hObject    handle to initial_voidratio2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of initial_voidratio2 as text
%        str2double(get(hObject,'String')) returns contents of initial_voidratio2 as a double


% --- Executes during object creation, after setting all properties.
function initial_voidratio2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to initial_voidratio2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function coefficient_permeabili2_Callback(hObject, eventdata, handles)
% hObject    handle to coefficient_permeabili2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of coefficient_permeabili2 as text
%        str2double(get(hObject,'String')) returns contents of coefficient_permeabili2 as a double


% --- Executes during object creation, after setting all properties.
function coefficient_permeabili2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to coefficient_permeabili2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function increment2_Callback(hObject, eventdata, handles)
% hObject    handle to increment2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of increment2 as text
%        str2double(get(hObject,'String')) returns contents of increment2 as a double


% --- Executes during object creation, after setting all properties.
function increment2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to increment2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function height2_Callback(hObject, eventdata, handles)
% hObject    handle to height2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of height2 as text
%        str2double(get(hObject,'String')) returns contents of height2 as a double


% --- Executes during object creation, after setting all properties.
function height2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to height2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function settlement_B_ZY_Callback(hObject, eventdata, handles)
% hObject    handle to settlement_B_ZY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of settlement_B_ZY as text
%        str2double(get(hObject,'String')) returns contents of settlement_B_ZY as a double


% --- Executes during object creation, after setting all properties.
function settlement_B_ZY_CreateFcn(hObject, eventdata, handles)
% hObject    handle to settlement_B_ZY (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function settlement_B_U_N_Callback(hObject, eventdata, handles)
% hObject    handle to settlement_B_U_N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of settlement_B_U_N as text
%        str2double(get(hObject,'String')) returns contents of settlement_B_U_N as a double


% --- Executes during object creation, after setting all properties.
function settlement_B_U_N_CreateFcn(hObject, eventdata, handles)
% hObject    handle to settlement_B_U_N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function settlement_A_U_N_Callback(hObject, eventdata, handles)
% hObject    handle to settlement_A_U_N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of settlement_A_U_N as text
%        str2double(get(hObject,'String')) returns contents of settlement_A_U_N as a double


% --- Executes during object creation, after setting all properties.
function settlement_A_U_N_CreateFcn(hObject, eventdata, handles)
% hObject    handle to settlement_A_U_N (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in checkbox5.
function checkbox5_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox5


% --- Executes on button press in checkbox6.
function checkbox6_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox6


% --- Executes on button press in checkbox7.
function checkbox7_Callback(hObject, eventdata, handles)
% hObject    handle to checkbox7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of checkbox7


% --- Executes on button press in make_figure2.
function make_figure2_Callback(hObject, eventdata, handles)
% hObject    handle to make_figure2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes15);  
a=str2double(get(handles.rebound_index1,'String'));
b=str2double(get(handles.compress_index1,'String'));
c=str2double(get(handles.unitweight_soil1,'String'));
d=str2double(get(handles.POP1,'String'));
e=str2double(get(handles.C_alphae1,'String'));
f=str2double(get(handles.initial_voidratio1,'String'));
g=str2double(get(handles.coefficient_permeabili1,'String'));
h=str2double(get(handles.increment1,'String'));
i=str2double(get(handles.height1,'String'));
k=str2double(get(handles.max_time,'String'));
a2=str2double(get(handles.rebound_index2,'String'));
b2=str2double(get(handles.compress_index2,'String'));
c2=str2double(get(handles.unitweight_soil2,'String'));
d2=str2double(get(handles.POP2,'String'));
e2=str2double(get(handles.C_alphae2,'String'));
f2=str2double(get(handles.initial_voidratio2,'String'));
g2=str2double(get(handles.coefficient_permeabili2,'String'));
i2=str2double(get(handles.height2,'String'));
t_0=str2double(get(handles.t_0,'String'));
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
stre_z01=(c2-gamma_water)*Z+(c-gamma_water)*i;
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
stre_z021(kk)=(c2-gamma_water)*Z+(c-gamma_water)*i;
stre_zp21(kk)=d2+stre_z021(kk);
stre_zf21(kk)=stre_z021(kk)+h;
kk=kk+1;
end
Z=mod(i2,0.5)/2+floor(i2/0.5)*0.5;
stre_z021(kk)=(c2-gamma_water)*Z+(c-gamma_water)*i;
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
if get(handles.radiobutton1,'value')
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
axes(handles.axes15);

axes('position',[.48,.245,0.49,0.5]);
axis off;
global t_2;
hh1=0;hh2=0;hh3=0;
if get(handles.checkbox5,'value')
t_2=0.001*ff^2:0.01*ff^2:k;%day
semilogx(t_2,aaa1);hold on;
hh1=1;
end
if get(handles.checkbox6,'value')
t_2=0.001*ff^2:0.01*ff^2:k;%day
semilogx(t_2,bbb1,'--');hold on;
hh2=1;
end
if get(handles.checkbox7,'value')
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
leg=legend('新简化假设B法（zhu&yin法得固结度）','新简化假设B法（US Navy法得固结度）','假设A法（US Navy法得固结度）');
set(leg,'Position',[.6180,.2890,.06,.01],'FontSize',8);%78,4,60,7
elseif (~hh1&&hh2)&&hh3
leg=legend('新简化假设B法（US Navy法得固结度）','假设A法（US Navy法得固结度）');
set(leg,'Position',[.6180,.2890,.06,.01],'FontSize',8);%78,4,60,7
elseif (hh1&&~hh2)&&hh3
leg=legend('新简化假设B法（zhu&yin法得固结度）','假设A法（US Navy法得固结度）');
set(leg,'Position',[.6180,.2890,.06,.01],'FontSize',8);%78,4,60,7
elseif (hh1&&hh2)&&~hh3
leg=legend('新简化假设B法（zhu&yin法得固结度）','新简化假设B法（US Navy法得固结度）');
set(leg,'Position',[.6180,.2890,.06,.01],'FontSize',8);%78,4,60,7
elseif (~hh1&&~hh2)&&hh3
leg=legend('假设A法（US Navy法得固结度）');
set(leg,'Position',[.6180,.2890,.06,.01],'FontSize',8);%78,4,60,7
 elseif (hh1&&~hh2)&&~hh3  
leg=legend('新简化假设B法（zhu&yin法得固结度）');
set(leg,'Position',[.6180,.2890,.06,.01],'FontSize',8);%78,4,60,7
 elseif (~hh1&&hh2)&&~hh3  
leg=legend('新简化假设B法（US Navy法得固结度）');
set(leg,'Position',[.6180,.2890,.06,.01],'FontSize',8);%78,4,60,7
else 
end
 global t_12 az2 bz2 cz2;
t_12=t_2;az2=aaa1;bz2=bbb1;cz2=ccc1;
 clear aaa1 bbb1 ccc1  t_2 t; 
% --- Executes on button press in pushbutton5.
function pushbutton5_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1



function max_time_Callback(hObject, eventdata, handles)
% hObject    handle to max_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of max_time as text
%        str2double(get(hObject,'String')) returns contents of max_time as a double


% --- Executes during object creation, after setting all properties.
function max_time_CreateFcn(hObject, eventdata, handles)
% hObject    handle to max_time (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in cal.
function cal_Callback(hObject, eventdata, handles)
% hObject    handle to cal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
a=str2double(get(handles.rebound_index1,'String'));
b=str2double(get(handles.compress_index1,'String'));
c=str2double(get(handles.unitweight_soil1,'String'));
d=str2double(get(handles.POP1,'String'));
e=str2double(get(handles.C_alphae1,'String'));
f=str2double(get(handles.initial_voidratio1,'String'));
g=str2double(get(handles.coefficient_permeabili1,'String'));
h=str2double(get(handles.increment1,'String'));
i=str2double(get(handles.height1,'String'));
a2=str2double(get(handles.rebound_index2,'String'));
b2=str2double(get(handles.compress_index2,'String'));
c2=str2double(get(handles.unitweight_soil2,'String'));
d2=str2double(get(handles.POP2,'String'));
e2=str2double(get(handles.C_alphae2,'String'));
f2=str2double(get(handles.initial_voidratio2,'String'));
g2=str2double(get(handles.coefficient_permeabili2,'String'));
i2=str2double(get(handles.height2,'String'));
t=str2double(get(handles.time,'String'));
t_0=str2double(get(handles.t_0,'String'));
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
stre_z01=(c2-gamma_water)*Z+(c-gamma_water)*i;
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
stre_z021(kk)=(c2-gamma_water)*Z+(c-gamma_water)*i;
stre_zp21(kk)=d2+stre_z021(kk);
stre_zf21(kk)=stre_z021(kk)+h;
kk=kk+1;
end
Z=mod(i2,0.5)/2+floor(i2/0.5)*0.5;
stre_z021(kk)=(c2-gamma_water)*Z+(c-gamma_water)*i;
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
if get(handles.radiobutton1,'value')
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
set(handles.settlement_B_ZY,'String',aaa1);
set(handles.settlement_B_U_N,'String',bbb1);
set(handles.settlement_A_U_N,'String',ccc1);


function t_0_Callback(hObject, eventdata, handles)
% hObject    handle to t_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of t_0 as text
%        str2double(get(hObject,'String')) returns contents of t_0 as a double


% --- Executes during object creation, after setting all properties.
function t_0_CreateFcn(hObject, eventdata, handles)
% hObject    handle to t_0 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton2.
function radiobutton2_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton2


% --- Executes on button press in radiobutton3.
function radiobutton3_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton3
   

% --- Executes on button press in radiobutton4.
function radiobutton4_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton4
 
   


function Tedit39_Callback(hObject, eventdata, handles)
% hObject    handle to Tedit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Tedit39 as text
%        str2double(get(hObject,'String')) returns contents of Tedit39 as a double


% --- Executes during object creation, after setting all properties.
function Tedit39_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Tedit39 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function nedit40_Callback(hObject, eventdata, handles)
% hObject    handle to nedit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nedit40 as text
%        str2double(get(hObject,'String')) returns contents of nedit40 as a double


% --- Executes during object creation, after setting all properties.
function nedit40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nedit40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: setting controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in make_figure3.
function make_figure3_Callback(hObject, eventdata, handles)
% hObject    handle to make_figure3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes15); 
a=str2double(get(handles.rebound_index,'String'));
b=str2double(get(handles.compress_index,'String'));
c=str2double(get(handles.unitweight_soil,'String'));
d=str2double(get(handles.POP,'String'));
e=str2double(get(handles.C_alphae,'String'));
f=str2double(get(handles.initial_voidratio,'String'));
g=str2double(get(handles.coefficient_permeabili,'String'));
i=str2double(get(handles.thick,'String'));
k=str2double(get(handles.max_time,'String'));
t_000=str2double(get(handles.Tedit39,'String'));
n00=str2double(get(handles.nedit40,'String'));
ampli=str2double(get(handles.amplitude,'String'));
max_p=str2double(get(handles.max_stress,'String'));
t_c00=(n00+0.5)*t_000;
gamma_water=9.81;
epsilong_z0=0;
ff=i/0.45;
bb=1;
if get(handles.radiobutton1,'value')
i5=i/2;
else 
    i5=i;
end
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
if get(handles.radiobutton3,'value')
for tr=t_c00:0.004*ff^2:10000*ff^2%t〉=t_c时
jr=0;
for ir=0:1:3%用for循环求和
M=(2*ir+1)*pi/2;
jr=jr+2/M^2*exp(-M^2*c_v*tr/i5^2)*(ampli*pi/t_000/(M^4*c_v^2*t_000^2+i5^4*pi^2)*(M^2*c_v*t_000^2*i5^2*cos(pi*t_c00/t_000)*exp(M^2*c_v*t_c00/i5^2)+i5^4*pi*t_000*sin(pi*t_c00/t_000)*exp(M^2*c_v*t_c00/i5^2)-i5^2*t_000^2*M^2*c_v)+(max_p-ampli));
end
U_av=1-jr/max_p;
if U_av>0.98
break;
end
end
t_EOP=tr;
elseif get(handles.radiobutton4,'value')
    t_0001=t_000/2;
for tr=t_c00:0.004*ff^2:10000*ff^2%t〉=t_c时
jr=0;
    ll=ceil(t_c00/t_0001); 
 if ll<3
if ll==1
    for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;
    yyu=exp(M^2*c_v*t_c00/i5^2)-1;
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*tr/i5^2)*yyu/M^2/c_v*i5^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*tr/i5^2);
    end
U_av=1-jr/max_p;%
else
    for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;
yyu=exp(M^2*c_v*t_0001/i5^2)-exp(M^2*c_v*t_c00/i5^2)+exp(M^2*c_v*t_0001/i5^2)-1;
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*tr/i5^2)*yyu/M^2/c_v*i5^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*tr/i5^2);
    end
U_av=1-jr/max_p;%
end
else
if mod(ll,2)==1
for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;yyu=0;
for ag=1:2:ll-2
    yyu=yyu+exp(M^2*c_v*ag*t_0001/i5^2)-exp(M^2*c_v*(ag-1)*t_0001/i5^2)+exp(M^2*c_v*ag*t_0001/i5^2)-exp(M^2*c_v*(ag+1)*t_0001/i5^2);
end
yyu=yyu+exp(M^2*c_v*t_c00/i5^2)-exp(M^2*c_v*(ll-1)*t_0001/i5^2);
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*tr/i5^2)*yyu/M^2/c_v*i5^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*tr/i5^2);
end
U_av=1-jr/max_p;%
else
for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;yyu=0;
for ag=1:2:ll-2
    yyu=yyu+exp(M^2*c_v*ag*t_0001/i5^2)-exp(M^2*c_v*(ag-1)*t_0001/i5^2)+exp(M^2*c_v*ag*t_0001/i5^2)-exp(M^2*c_v*(ag+1)*t_0001/i5^2);
end
yyu=yyu+exp(M^2*c_v*(ll-1)*t_0001/i5^2)-exp(M^2*c_v*t_c00/i5^2)+exp(M^2*c_v*(ll-1)*t_0001/i5^2)-exp(M^2*c_v*(ll-2)*t_0001/i5^2);
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*tr/i5^2)*yyu/M^2/c_v*i5^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*tr/i5^2);
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
if get(handles.radiobutton3,'value')
if t<t_c00
jr=0;
for ir=0:1:3%用for循环求和
M=(2*ir+1)*pi/2;
jr=jr+2/M^2*exp(-M^2*c_v*t/i5^2)*(ampli*pi/t_000/(M^4*c_v^2*t_000^2+i5^4*pi^2)*(M^2*c_v*t_000^2*i5^2*cos(pi*t/t_000)*exp(M^2*c_v*t/i5^2)+i5^4*pi*t_000*sin(pi*t/t_000)*exp(M^2*c_v*t/i5^2)-i5^2*t_000^2*M^2*c_v)+(max_p-ampli));
end
U_v=((max_p-ampli)+ampli*sin(pi*t/t_000)-jr)/max_p;
else
jr=0;
for ir=0:1:3%用for循环求和
M=(2*ir+1)*pi/2;
jr=jr+2/M^2*exp(-M^2*c_v*t/i5^2)*(ampli*pi/t_000/(M^4*c_v^2*t_000^2+i5^4*pi^2)*(M^2*c_v*t_000^2*i5^2*cos(pi*t_c00/t_000)*exp(M^2*c_v*t_c00/i5^2)+i5^4*pi*t_000*sin(pi*t_c00/t_000)*exp(M^2*c_v*t_c00/i5^2)-i5^2*t_000^2*M^2*c_v)+(max_p-ampli));
end
U_v=1-jr/max_p;
end
elseif get(handles.radiobutton4,'value')
jr=0; t_0001=t_000/2;
if t<t_c00
    ll=ceil(t/t_0001); 
if ll<3
if ll==1
    for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;
    yyu=exp(M^2*c_v*t/i5^2)-1;
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i5^2)*yyu/M^2/c_v*i5^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i5^2);
    end
U_v=(t*2*ampli/t_0001+(max_p-2*ampli)-jr)/max_p;%
else
    for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;
yyu=exp(M^2*c_v*t_0001/i5^2)-exp(M^2*c_v*t/i5^2)+exp(M^2*c_v*t_0001/i5^2)-1;
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i5^2)*yyu/M^2/c_v*i5^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i5^2);
    end
U_v=(max_p+2*ampli-t*2*ampli/t_0001-jr)/max_p;%
end
else
if mod(ll,2)==1
for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;yyu=0;
for ag=1:2:ll-2
    yyu=yyu+exp(M^2*c_v*ag*t_0001/i5^2)-exp(M^2*c_v*(ag-1)*t_0001/i5^2)+exp(M^2*c_v*ag*t_0001/i5^2)-exp(M^2*c_v*(ag+1)*t_0001/i5^2);
end
yyu=yyu+exp(M^2*c_v*t/i5^2)-exp(M^2*c_v*(ll-1)*t_0001/i5^2);
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i5^2)*yyu/M^2/c_v*i5^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i5^2);
end
U_v=(t*2*ampli/t_0001-ll*2*ampli+max_p-jr)/max_p;%
else
for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;yyu=0;
for ag=1:2:ll-2
    yyu=yyu+exp(M^2*c_v*ag*t_0001/i5^2)-exp(M^2*c_v*(ag-1)*t_0001/i5^2)+exp(M^2*c_v*ag*t_0001/i5^2)-exp(M^2*c_v*(ag+1)*t_0001/i5^2);
end
yyu=yyu+exp(M^2*c_v*(ll-1)*t_0001/i5^2)-exp(M^2*c_v*t/i5^2)+exp(M^2*c_v*(ll-1)*t_0001/i5^2)-exp(M^2*c_v*(ll-2)*t_0001/i5^2);
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i5^2)*yyu/M^2/c_v*i5^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i5^2);
end
U_v=((ll-t/t_0001)*2*ampli+max_p-2*ampli-jr)/max_p;%
end
end
else
    ll=t_c00/t_0001; 
if ll==1
    for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;
    yyu=exp(M^2*c_v*t_c00/i5^2)-1;
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i5^2)*yyu/M^2/c_v*i5^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i5^2);
    end
U_v=1-jr/max_p;%

else
for ir=0:1:5%用for循环求和
M=(2*ir+1)*pi/2;yyu=0;
for ag=1:2:ll-2
    yyu=yyu+exp(M^2*c_v*ag*t_0001/i5^2)-exp(M^2*c_v*(ag-1)*t_0001/i5^2)+exp(M^2*c_v*ag*t_0001/i5^2)-exp(M^2*c_v*(ag+1)*t_0001/i5^2);
end
yyu=yyu+exp(M^2*c_v*t_c00/i5^2)-exp(M^2*c_v*(ll-1)*t_0001/i5^2);
jr=jr+4*ampli/M^2/t_0001*exp(-M^2*c_v*t/i5^2)*yyu/M^2/c_v*i^2+2/M^2*(max_p-2*ampli)*exp(-M^2*c_v*t/i5^2);
end
U_v=1-jr/max_p;%

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
axes(handles.axes15);

axes('position',[.48,.245,0.49,0.5]);
axis off;
t_1=0.001*ff^2:0.01*ff^2:k;
global t_16 aaa9;
t_16=t_1;aaa9=aaa6;
semilogx(t_1,aaa6);
set(gca,'ydir','reverse');
set(gca,'xaxislocation','top');
xlabel('Time(day)');
ylabel('Settlement(m)');
grid on;
 clear aaa6 t_1;


% --- Executes during object creation, after setting all properties.
function uipanel6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to uipanel6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called
  %axes(handles.axes12);
%  if get(handles.radiobutton3,'value')
%imshow('axes3.jpg');
  %elseif get(handles.radiobutton4,'value')
   % imshow('axes3_.jpg');  
  %end


% --- Executes during object creation, after setting all properties.
function axes1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes1


% --- Executes when selected object is changed in uipanel6.
function uipanel6_SelectionChangeFcn(hObject, eventdata, handles)
% hObject    handle to the selected object in uipanel6 
% eventdata  structure with the following fields (see UIBUTTONGROUP)
%	EventName: string 'SelectionChanged' (read only)
%	OldValue: handle of the previously selected object or empty if none was selected
%	NewValue: handle of the currently selected object
% handles    structure with handles and user data (see GUIDATA)
cla reset
axes(handles.axes12);
  if get(handles.radiobutton3,'value')
imshow('axes3.jpg');
  elseif get(handles.radiobutton4,'value')
    imshow('axes3_.jpg');  
  end


% --- Executes during object creation, after setting all properties.
function axes15_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes15 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes15


% --------------------------------------------------------------------
function setting_Callback(hObject, eventdata, handles)
% hObject    handle to setting (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function introduct_Callback(hObject, eventdata, handles)
% hObject    handle to introduct (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
winopen('算法简介.docx')

% --------------------------------------------------------------------
function edit_color_Callback(hObject, eventdata, handles)
% hObject    handle to edit_color (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
sss=uisetcolor(gcf);

% --------------------------------------------------------------------
function save_figure_Callback(hObject, eventdata, handles)
% hObject    handle to save_figure (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[fname,pname]=uiputfile({'*.bmp';'*.jpg';'*.png'},'Pick an image-file');%;

if isequal(fname,0)||isequal(pname,0) 
    msgbox('请为新文件命名！','保存失败！');
    return  
end
str=strcat(pname,fname);
pix=getframe(handles.axes15);
vvv=length(fname);
abbb=fname(vvv-2:vvv);
imwrite(pix.cdata,str,abbb);
msgbox(['已将',fname,'保存至',pname],'图像保存成功');%,,



function max_stress_Callback(hObject, eventdata, handles)
% hObject    handle to max_stress (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of max_stress as text
%        str2double(get(hObject,'String')) returns contents of max_stress as a double


% --- Executes during object creation, after setting all properties.
function max_stress_CreateFcn(hObject, eventdata, handles)
% hObject    handle to max_stress (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function amplitude_Callback(hObject, eventdata, handles)
% hObject    handle to amplitude (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of amplitude as text
%        str2double(get(hObject,'String')) returns contents of amplitude as a double


% --- Executes during object creation, after setting all properties.
function amplitude_CreateFcn(hObject, eventdata, handles)
% hObject    handle to amplitude (see GCBO)
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


% --------------------------------------------------------------------
function Untitled_2_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all
% --------------------------------------------------------------------
function Untitled_3_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function exist_Callback(hObject, eventdata, handles)
% hObject    handle to exist (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
ss=questdlg('你真的要退出吗','退出信息窗口！','不，我还想看看！','是的，我要退出！','是的，我要退出！');
switch ss
    case '是的，我要退出！'
        delete(handles.figure1);
end


% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

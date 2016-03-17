function varargout = LJTool(varargin)
% LJTOOL MATLAB code for LJTool.fig
%      LJTOOL, by itself, creates a new LJTOOL or raises the existing
%      singleton*.
%
%      H = LJTOOL returns the handle to a new LJTOOL or the handle to
%      the existing singleton*.
%
%      LJTOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in LJTOOL.M with the given input arguments.
%
%      LJTOOL('Property','Value',...) creates a new LJTOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before LJTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to LJTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help LJTool

% Last Modified by GUIDE v2.5 16-Mar-2016 23:26:16

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @LJTool_OpeningFcn, ...
                   'gui_OutputFcn',  @LJTool_OutputFcn, ...
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


% --- Executes just before LJTool is made visible.
function LJTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to LJTool (see VARARGIN)

% Choose default command line output for LJTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes LJTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = LJTool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on slider movement.
function widthSlidera_Callback(hObject, eventdata, handles)
% hObject    handle to widthSlidera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
x = handles.widthSlidera.Value;
handles.widthTexta.String=num2str(x);
plotLJF(handles);

% --- Executes during object creation, after setting all properties.
function widthSlidera_CreateFcn(hObject, eventdata, handles)
% hObject    handle to widthSlidera (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function widthSliderb_Callback(hObject, eventdata, handles)
% hObject    handle to widthSliderb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
y = handles.widthSliderb.Value;
handles.widthTextb.String=num2str(y);
plotLJF(handles);

% --- Executes during object creation, after setting all properties.
function widthSliderb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to widthSliderb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function widthSliderphi_Callback(hObject, eventdata, handles)
% hObject    handle to widthSliderphi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
z = handles.widthSliderphi.Value;
handles.widthTextphi.String=num2str(z);
plotLJF(handles);
% --- Executes during object creation, after setting all properties.
function widthSliderphi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to widthSliderphi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function widthTexta_Callback(hObject, eventdata, handles)
% hObject    handle to widthTexta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of widthTexta as text
%        str2double(get(hObject,'String')) returns contents of widthTexta as a double
xstr=handles.widthTexta.String;
handles.widthSlidera.Value=str2double(xstr);
plotLJF(handles);

% --- Executes during object creation, after setting all properties.
function widthTexta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to widthTexta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function widthTextb_Callback(hObject, eventdata, handles)
% hObject    handle to widthTextb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of widthTextb as text
%        str2double(get(hObject,'String')) returns contents of widthTextb as a double
ystr=handles.widthTextb.String;
handles.widthSliderb.Value=str2double(ystr);
plotLJF(handles);

% --- Executes during object creation, after setting all properties.
function widthTextb_CreateFcn(hObject, eventdata, handles)
% hObject    handle to widthTextb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function widthTextphi_Callback(hObject, eventdata, handles)
% hObject    handle to widthTextphi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of widthTextphi as text
%        str2double(get(hObject,'String')) returns contents of widthTextphi as a double
zstr=handles.widthTextphi.String;
handles.widthSliderphi.Value=str2double(zstr);
plotLJF(handles);

% --- Executes during object creation, after setting all properties.
function widthTextphi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to widthTextphi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plotButton.
function plotButton_Callback(hObject, eventdata, handles)
% hObject    handle to plotButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plotLJF(handles);

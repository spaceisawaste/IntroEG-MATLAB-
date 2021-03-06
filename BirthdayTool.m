function varargout = BirthdayTool(varargin)
% BIRTHDAYTOOL MATLAB code for BirthdayTool.fig
%      BIRTHDAYTOOL, by itself, creates a new BIRTHDAYTOOL or raises the existing
%      singleton*.
%
%      H = BIRTHDAYTOOL returns the handle to a new BIRTHDAYTOOL or the handle to
%      the existing singleton*.
%
%      BIRTHDAYTOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BIRTHDAYTOOL.M with the given input arguments.
%
%      BIRTHDAYTOOL('Property','Value',...) creates a new BIRTHDAYTOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BirthdayTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BirthdayTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BirthdayTool

% Last Modified by GUIDE v2.5 01-Mar-2016 15:00:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BirthdayTool_OpeningFcn, ...
                   'gui_OutputFcn',  @BirthdayTool_OutputFcn, ...
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


% --- Executes just before BirthdayTool is made visible.
function BirthdayTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BirthdayTool (see VARARGIN)

% Choose default command line output for BirthdayTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BirthdayTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BirthdayTool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function NmaxEditText_Callback(hObject, eventdata, handles)
% hObject    handle to NmaxEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NmaxEditText as text
%        str2double(get(hObject,'String')) returns contents of NmaxEditText as a double


% --- Executes during object creation, after setting all properties.
function NmaxEditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NmaxEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function NsamplesEditText_Callback(hObject, eventdata, handles)
% hObject    handle to NsamplesEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of NsamplesEditText as text
%        str2double(get(hObject,'String')) returns contents of NsamplesEditText as a double


% --- Executes during object creation, after setting all properties.
function NsamplesEditText_CreateFcn(hObject, eventdata, handles)
% hObject    handle to NsamplesEditText (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in plotPushButton.
function plotPushButton_Callback(hObject, eventdata, handles)
% hObject    handle to plotPushButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plotBirthDayF(handles);

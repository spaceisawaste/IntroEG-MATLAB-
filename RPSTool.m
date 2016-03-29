function varargout = RPSTool(varargin)
% RPSTOOL MATLAB code for RPSTool.fig
%      RPSTOOL, by itself, creates a new RPSTOOL or raises the existing
%      singleton*.
%
%      H = RPSTOOL returns the handle to a new RPSTOOL or the handle to
%      the existing singleton*.
%
%      RPSTOOL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in RPSTOOL.M with the given input arguments.
%
%      RPSTOOL('Property','Value',...) creates a new RPSTOOL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before RPSTool_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to RPSTool_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help RPSTool

% Last Modified by GUIDE v2.5 23-Mar-2016 21:29:45

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RPSTool_OpeningFcn, ...
                   'gui_OutputFcn',  @RPSTool_OutputFcn, ...
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

% --- Executes just before RPSTool is made visible.
function RPSTool_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to RPSTool (see VARARGIN)

% Choose default command line output for RPSTool
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RPSTool wait for user response (see UIRESUME)
% uiwait(handles.figure1);
handles.tieText.String=num2str(0);
handles.humanText.String=num2str(0);
handles.computerScoreText.String=num2str(0);

% --- Outputs from this function are returned to the command line.
function varargout = RPSTool_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in resetButton.
function resetButton_Callback(hObject, eventdata, handles)
% hObject    handle to resetButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
score=0;
set(handles.computerScoreText,'String',num2str(score));
handles.humanText.String=num2str(score);
handles.tieText.String=num2str(score);

% --- Executes on button press in rockButton.
function rockButton_Callback(hObject, eventdata, handles)
% hObject    handle to rockButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
processRPSF(handles,1);


% --- Executes on button press in paperButton.
function paperButton_Callback(hObject, eventdata, handles)
% hObject    handle to paperButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
iHumanPlay=handles.paperButton.Value;
processRPSF(handles,2);


% --- Executes on button press in scissorButton.
function scissorButton_Callback(hObject, eventdata, handles)
% hObject    handle to scissorButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
iHumanPlay=handles.scissorButton.Value;
processRPSF(handles,3);

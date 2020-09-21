function varargout = Main(varargin)
% MAIN MATLAB code for Main.fig
%      MAIN, by itself, creates a new MAIN or raises the existing
%      singleton*.
%
%      H = MAIN returns the handle to a new MAIN or the handle to
%      the existing singleton*.
%
%      MAIN('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN.M with the given input arguments.
%
%      MAIN('Property','Value',...) creates a new MAIN or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Main_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Main_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Main

% Last Modified by GUIDE v2.5 18-Sep-2020 16:30:59

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Main_OpeningFcn, ...
                   'gui_OutputFcn',  @Main_OutputFcn, ...
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


% --- Executes just before Main is made visible.
function Main_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Main (see VARARGIN)

% Choose default command line output for Main
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Main wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Main_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in Array.
function Array_Callback(hObject, eventdata, handles)
val=get(handles.Array,'value');
switch val
    case 2
        set(handles.MicN,'enable','on');
        set(handles.ArrayD,'enable','on');
        set(handles.ArrayR,'enable','off');
        set(handles.XMicN,'enable','off');
        set(handles.YMicN,'enable','off');
        set(handles.XArrayD,'enable','off'); 
        set(handles.YArrayD,'enable','off'); 
    case 3
        set(handles.ArrayD,'enable','off');
        set(handles.MicN,'enable','on');
        set(handles.ArrayR,'enable','on');
        set(handles.XMicN,'enable','off');
        set(handles.YMicN,'enable','off');
        set(handles.XArrayD,'enable','off'); 
        set(handles.YArrayD,'enable','off'); 
    case 4
        set(handles.XMicN,'enable','on');
        set(handles.YMicN,'enable','on');
        set(handles.XArrayD,'enable','on'); 
        set(handles.YArrayD,'enable','on'); 
        set(handles.MicN,'enable','off');
        set(handles.ArrayD,'enable','off');
        set(handles.ArrayR,'enable','off');
        
end
        
% hObject    handle to Array (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Array contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Array


% --- Executes during object creation, after setting all properties.
function Array_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Array (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MicN_Callback(hObject, eventdata, handles)
% hObject    handle to MicN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MicN as text
%        str2double(get(hObject,'String')) returns contents of MicN as a double


% --- Executes during object creation, after setting all properties.
function MicN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MicN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ArrayD_Callback(hObject, eventdata, handles)
% hObject    handle to ArrayD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ArrayD as text
%        str2double(get(hObject,'String')) returns contents of ArrayD as a double


% --- Executes during object creation, after setting all properties.
function ArrayD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ArrayD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Signal.
function Signal_Callback(hObject, eventdata, handles)
val=get(handles.Signal,'Value');
switch val
    case 2
        set(handles.Mu,'enable','on');
        set(handles.Sigma,'enable','on');
        set(handles.FS,'enable','on');
        set(handles.SNR,'enable','on');
        set(handles.Snap,'enable','on');
        set(handles.Amp,'enable','off');
        set(handles.Fre,'enable','off');
        set(handles.Psi,'enable','off');
        set(handles.Path,'enable','off');
    case {3,4}
        set(handles.Mu,'enable','off');
        set(handles.Sigma,'enable','off');
        set(handles.FS,'enable','on');
        set(handles.SNR,'enable','on');
        set(handles.Snap,'enable','on');
        set(handles.Amp,'enable','on');
        set(handles.Fre,'enable','on');
        set(handles.Psi,'enable','on');
        set(handles.Path,'enable','off');
    case 5
        set(handles.Mu,'enable','off');
        set(handles.Sigma,'enable','off');
        set(handles.FS,'enable','off');
        set(handles.SNR,'enable','off');
        set(handles.Snap,'enable','off');
        set(handles.Amp,'enable','off');
        set(handles.Fre,'enable','off');
        set(handles.Psi,'enable','off');
        set(handles.Path,'enable','on');
        set(handles.Noise,'enable','off');
end
% hObject    handle to Signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Signal contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Signal


% --- Executes during object creation, after setting all properties.
function Signal_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Signal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Amp_Callback(hObject, eventdata, handles)
% hObject    handle to Amp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Amp as text
%        str2double(get(hObject,'String')) returns contents of Amp as a double


% --- Executes during object creation, after setting all properties.
function Amp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Amp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ArrayR_Callback(hObject, eventdata, handles)
% hObject    handle to ArrayR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ArrayR as text
%        str2double(get(hObject,'String')) returns contents of ArrayR as a double


% --- Executes during object creation, after setting all properties.
function ArrayR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ArrayR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function XMicN_Callback(hObject, eventdata, handles)
% hObject    handle to XMicN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XMicN as text
%        str2double(get(hObject,'String')) returns contents of XMicN as a double


% --- Executes during object creation, after setting all properties.
function XMicN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XMicN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function YMicN_Callback(hObject, eventdata, handles)
% hObject    handle to YMicN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YMicN as text
%        str2double(get(hObject,'String')) returns contents of YMicN as a double


% --- Executes during object creation, after setting all properties.
function YMicN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YMicN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function XArrayD_Callback(hObject, eventdata, handles)
% hObject    handle to XArrayD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of XArrayD as text
%        str2double(get(hObject,'String')) returns contents of XArrayD as a double


% --- Executes during object creation, after setting all properties.
function XArrayD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to XArrayD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function YArrayD_Callback(hObject, eventdata, handles)
% hObject    handle to YArrayD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of YArrayD as text
%        str2double(get(hObject,'String')) returns contents of YArrayD as a double


% --- Executes during object creation, after setting all properties.
function YArrayD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to YArrayD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Fre_Callback(hObject, eventdata, handles)
% hObject    handle to Fre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Fre as text
%        str2double(get(hObject,'String')) returns contents of Fre as a double


% --- Executes during object creation, after setting all properties.
function Fre_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Fre (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Psi_Callback(hObject, eventdata, handles)
% hObject    handle to Psi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Psi as text
%        str2double(get(hObject,'String')) returns contents of Psi as a double


% --- Executes during object creation, after setting all properties.
function Psi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Psi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Mu_Callback(hObject, eventdata, handles)
% hObject    handle to Mu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Mu as text
%        str2double(get(hObject,'String')) returns contents of Mu as a double


% --- Executes during object creation, after setting all properties.
function Mu_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Mu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Sigma_Callback(hObject, eventdata, handles)
% hObject    handle to Sigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Sigma as text
%        str2double(get(hObject,'String')) returns contents of Sigma as a double


% --- Executes during object creation, after setting all properties.
function Sigma_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Sigma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Path_Callback(hObject, eventdata, handles)
% hObject    handle to Path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Path as text
%        str2double(get(hObject,'String')) returns contents of Path as a double


% --- Executes during object creation, after setting all properties.
function Path_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Path (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SNR_Callback(hObject, eventdata, handles)
% hObject    handle to SNR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SNR as text
%        str2double(get(hObject,'String')) returns contents of SNR as a double


% --- Executes during object creation, after setting all properties.
function SNR_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SNR (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FS_Callback(hObject, eventdata, handles)
% hObject    handle to FS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FS as text
%        str2double(get(hObject,'String')) returns contents of FS as a double


% --- Executes during object creation, after setting all properties.
function FS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Snap_Callback(hObject, eventdata, handles)
% hObject    handle to Snap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Snap as text
%        str2double(get(hObject,'String')) returns contents of Snap as a double


% --- Executes during object creation, after setting all properties.
function Snap_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Snap (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function MuN_Callback(hObject, eventdata, handles)
% hObject    handle to MuN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MuN as text
%        str2double(get(hObject,'String')) returns contents of MuN as a double


% --- Executes during object creation, after setting all properties.
function MuN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MuN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function SigmaN_Callback(hObject, eventdata, handles)
% hObject    handle to SigmaN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of SigmaN as text
%        str2double(get(hObject,'String')) returns contents of SigmaN as a double


% --- Executes during object creation, after setting all properties.
function SigmaN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to SigmaN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function PsiN_Callback(hObject, eventdata, handles)
% hObject    handle to PsiN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of PsiN as text
%        str2double(get(hObject,'String')) returns contents of PsiN as a double


% --- Executes during object creation, after setting all properties.
function PsiN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to PsiN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FreN_Callback(hObject, eventdata, handles)
% hObject    handle to FreN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FreN as text
%        str2double(get(hObject,'String')) returns contents of FreN as a double


% --- Executes during object creation, after setting all properties.
function FreN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FreN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function AmpN_Callback(hObject, eventdata, handles)
% hObject    handle to AmpN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of AmpN as text
%        str2double(get(hObject,'String')) returns contents of AmpN as a double


% --- Executes during object creation, after setting all properties.
function AmpN_CreateFcn(hObject, eventdata, handles)
% hObject    handle to AmpN (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Noise.
function Noise_Callback(hObject, eventdata, handles)
val=get(handles.Noise,'Value');
switch val
    case 2
        set(handles.SigmaN,'enable','on');
        set(handles.MuN,'enable','on');
        set(handles.AmpN,'enable','off');
        set(handles.FreN,'enable','off');
        set(handles.PsiN,'enable','off');
    case {3,4}
        set(handles.SigmaN,'enable','off');
        set(handles.MuN,'enable','off');
        set(handles.AmpN,'enable','on');
        set(handles.FreN,'enable','on');
        set(handles.PsiN,'enable','on');
end
% hObject    handle to Noise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Noise contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Noise


% --- Executes during object creation, after setting all properties.
function Noise_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Noise (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Theta_Callback(hObject, eventdata, handles)
% hObject    handle to Theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Theta as text
%        str2double(get(hObject,'String')) returns contents of Theta as a double


% --- Executes during object creation, after setting all properties.
function Theta_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Theta (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Phi_Callback(hObject, eventdata, handles)
% hObject    handle to Phi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Phi as text
%        str2double(get(hObject,'String')) returns contents of Phi as a double


% --- Executes during object creation, after setting all properties.
function Phi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Phi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in Algorithm.
function Algorithm_Callback(hObject, eventdata, handles)
val=get(handles.Algorithm,'Value');
switch val
    case 1
        set(handles.Theta,'enable','off');
        set(handles.Phi,'enable','off');
    otherwise
        set(handles.Theta,'enable','on');
        set(handles.Phi,'enable','on');
end
% hObject    handle to Algorithm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns Algorithm contents as cell array
%        contents{get(hObject,'Value')} returns selected item from Algorithm


% --- Executes during object creation, after setting all properties.
function Algorithm_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Algorithm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Run.
function Run_Callback(hObject, eventdata, handles)
axes(handles.axes1)
t=0:0.001:4*pi;
f=sin(t);
subplot(t,f,1,'g')
axis([0 4*pi -1 1])
grid on
xlabel('t')
ylabel('sin(t)')
title('ÕýÏÒº¯ÊýÍ¼Ïñ')
legend('f=sin(t)')
hold on;
f=cos(t);
subplot(t,f,'g');
% hObject    handle to Run (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

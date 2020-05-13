function varargout = AMTAGUIv1_KP(varargin)
% AMTAGUIv1 MATLAB code for AMTAGUIv1.fig
%      AMTAGUIv1, by itself, creates a new AMTAGUIv1 or raises the existing
%      singleton*.
%
%      H = AMTAGUIv1 returns the handle to a new AMTAGUIv1 or the handle to
%      the existing singleton*.
%
%      AMTAGUIv1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in AMTAGUIv1.M with the given input arguments.
%
%      AMTAGUIv1('Property','Value',...) creates a new AMTAGUIv1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before AMTAGUIv1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to AMTAGUIv1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help AMTAGUIv1

% Last Modified by GUIDE v2.5 01-Jun-2017 17:22:58

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @AMTAGUIv1_OpeningFcn, ...
    'gui_OutputFcn',  @AMTAGUIv1_OutputFcn, ...
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


% --- Executes just before AMTAGUIv1 is made visible.
function AMTAGUIv1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to AMTAGUIv1 (see VARARGIN)

% Load WAV Files
handles.Fs = 48000;
%path = 'C:\Users\Denis\';
%path = 'C:/Users/KevinPrinsloo/MAMTA/DD_old/GUI_output/';

% path for KP-PC
path = 'C:\Users\KevinPrinsloo\Dropbox (Neuromod Devices)\NRTShared\';
% path for BEAST-PC
%path = 'D:\Users\NeurologicalResearch\Dropbox (Neuromod Devices)\NRTShared\';


%genpath('C:/Users/KevinPrinsloo/MAMTA/DD_old/GUI_output/');

% path = 'D:\Users\DenisDrennan\';
% handles.PTF500HzL = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_500Hz_PT_L.wav']);
% handles.PTF500HzR = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_500Hz_PT_R.wav']);
% handles.PTF1000HzL = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_1000Hz_PT_L.wav']);
% handles.PTF1000HzR = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_1000Hz_PT_R.wav']);
% handles.PTF2000HzL = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_2000Hz_PT_L.wav']);
% handles.PTF2000HzR = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_2000Hz_PT_R.wav']);
% handles.PTF4000HzL = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_4000Hz_PT_L.wav']);
% handles.PTF4000HzR = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_4000Hz_PT_R.wav']);
% handles.PTF8000HzL = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_8000Hz_PT_L.wav']);
% handles.PTF8000HzR = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_8000Hz_PT_R.wav']);
% handles.AMTF500HzL = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_500Hz_AMT_L.wav']);
% handles.AMTF500HzR = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_500Hz_AMT_R.wav']);
% handles.AMTF1000HzL = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_1000Hz_AMT_L.wav']);
% handles.AMTF1000HzR = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_1000Hz_AMT_R.wav']);
% handles.AMTF2000HzL = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_2000Hz_AMT_L.wav']);
% handles.AMTF2000HzR = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_2000Hz_AMT_R.wav']);
% handles.AMTF4000HzL = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_4000Hz_AMT_L.wav']);
% handles.AMTF4000HzR = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_4000Hz_AMT_R.wav']);
% handles.AMTF8000HzL = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_8000Hz_AMT_L.wav']);
% handles.AMTF8000HzR = audioread([path,'Dropbox (Neuromod Devices)\NRTShared\Hardware\NMD Stimulator Platform\Sandbox\Stimuli\3s_8000Hz_AMT_R.wav']);

% handles.PTF250HzL = audioread([path,'\Audiometry Tracks\3s_250Hz_PT_L.wav']);
% handles.PTF250HzL = handles.PTF250HzL./10^(1.0/20);
handles.PTF250HzR = audioread([path,'\Audiometry Tracks\3s_80dB_250Hz_PT_R.wav']);
% handles.PTF250HzR = handles.PTF250HzR./10^(1.0/20);

% handles.PTF500HzL = audioread([path,'\Audiometry Tracks\3s_500Hz_PT_L.wav']);
% handles.PTF500HzL = handles.PTF500HzL./10^(2.0/20);
handles.PTF500HzR = audioread([path,'\Audiometry Tracks\3s_80dB_500Hz_PT_R.wav']);
% handles.PTF500HzR = handles.PTF500HzR./10^(2.0/20);

% handles.PTF1000HzL = audioread([path,'\Audiometry Tracks\3s_1000Hz_PT_L.wav']);
% handles.PTF1000HzL = handles.PTF1000HzL./10^(2.5/20);
handles.PTF1000HzR = audioread([path,'\Audiometry Tracks\3s_80dB_1000Hz_PT_R.wav']);
% handles.PTF1000HzR = handles.PTF1000HzR./10^(2.5/20);

% handles.PTF2000HzL = audioread([path,'\Audiometry Tracks\3s_2000Hz_PT_L.wav']);
% handles.PTF2000HzL = handles.PTF2000HzL./10^(2.7/20);
handles.PTF2000HzR = audioread([path,'\Audiometry Tracks\3s_80dB_2000Hz_PT_R.wav']);
% handles.PTF2000HzR = handles.PTF2000HzR./10^(2.7/20);

% handles.PTF4000HzL = audioread([path,'\Audiometry Tracks\3s_4000Hz_PT_L.wav']);
% handles.PTF4000HzL = handles.PTF4000HzL./10^(1.5/20);
handles.PTF4000HzR = audioread([path,'\Audiometry Tracks\3s_80dB_4000Hz_PT_R.wav']);
% handles.PTF4000HzR = handles.PTF4000HzR./10^(1.5/20);

% handles.PTF8000HzL = audioread([path,'\Audiometry Tracks\3s_8000Hz_PT_L.wav']);
% handles.PTF8000HzL = handles.PTF8000HzL./10^(20.0/20);
handles.PTF8000HzR = audioread([path,'\Audiometry Tracks\3s_80dB_8000Hz_PT_R.wav']);
% handles.PTF8000HzR = handles.PTF8000HzR./10^(20.0/20);

% handles.AMTF250HzL = audioread([path,'\Audiometry Tracks\3s_250Hz_AMT_L.wav']);
% handles.AMTF250HzL = handles.AMTF250HzL./10^(1.0/20);
% handles.AMTF250HzR = audioread([path,'\Audiometry Tracks\3s_250Hz_AMT_R.wav']);
% handles.AMTF250HzR = handles.AMTF250HzR./10^(1.0/20);
% 
% handles.AMTF500HzL = audioread([path,'\Audiometry Tracks\3s_500Hz_AMT_L.wav']);
% handles.AMTF500HzL = handles.AMTF500HzL./10^(2.0/20);
% handles.AMTF500HzR = audioread([path,'\Audiometry Tracks\3s_500Hz_AMT_R.wav']);
% handles.AMTF500HzR = handles.AMTF500HzR./10^(2.0/20);
% 
% handles.AMTF1000HzL = audioread([path,'\Audiometry Tracks\3s_1000Hz_AMT_L.wav']);
% handles.AMTF1000HzL = handles.AMTF1000HzL./10^(2.5/20);
% handles.AMTF1000HzR = audioread([path,'\Audiometry Tracks\3s_1000Hz_AMT_R.wav']);
% handles.AMTF1000HzR = handles.AMTF1000HzR./10^(2.5/20);
% 
% handles.AMTF2000HzL = audioread([path,'\Audiometry Tracks\3s_2000Hz_AMT_L.wav']);
% handles.AMTF2000HzL = handles.AMTF2000HzL./10^(2.7/20);
% handles.AMTF2000HzR = audioread([path,'\Audiometry Tracks\3s_2000Hz_AMT_R.wav']);
% handles.AMTF2000HzR = handles.AMTF2000HzR./10^(2.7/20);
% 
% handles.AMTF4000HzL = audioread([path,'\Audiometry Tracks\3s_4000Hz_AMT_L.wav']);
% handles.AMTF4000HzL = handles.AMTF4000HzL./10^(1.5/20);
% handles.AMTF4000HzR = audioread([path,'\Audiometry Tracks\3s_4000Hz_AMT_R.wav']);
% handles.AMTF4000HzR = handles.AMTF4000HzR./10^(1.5/20);
% 
% handles.AMTF8000HzL = audioread([path,'\Audiometry Tracks\3s_8000Hz_AMT_L.wav']);
% handles.AMTF8000HzL = handles.AMTF8000HzL./10^(20.0/20);
% handles.AMTF8000HzR = audioread([path,'\Audiometry Tracks\3s_8000Hz_AMT_R.wav']);
% handles.AMTF8000HzR = handles.AMTF8000HzR./10^(20.0/20);

% Disable All Handles Save for Tone Type Popup Menu
% set(findall(gcf,'-property','enable'),'enable','off');
%set(handles.popupmenuEar,'Enable','on');

% Choose default command line output for AMTAGUIv1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes AMTAGUIv1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = AMTAGUIv1_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes during object creation, after setting all properties.
function popupmenuToneType1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenuToneType1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on selection change in popupmenuToneType1.
function popupmenuToneType1_Callback(hObject,eventdata,handles)
% hObject    handle to popupmenuToneType1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenuToneType1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenuToneType1

set(findall(gcf,'-property','enable'),'enable','off')

% Determine the selected data set.
toneTypeStr = get(hObject,'string');
toneTypeVal = get(hObject,'value');

% Set current data to the selected data set.
switch toneTypeStr{toneTypeVal};
    case 'Pure Tone (PT)'
        handles.toneType = 'PT';
    case 'Amplitude Modulated Tone (AMT)'
        handles.toneType = 'AMT';
end

% Enable Carrier Frequency Popup Menu
%set(handles.popupmenuCarrierFrequency,'Enable','on');
set(findall(gcf,'-property','enable'),'enable','on')

% Save the handles structure.
guidata(hObject,handles)

% % --- Executes during object creation, after setting all properties.
% function uitable1_CreateFcn(hObject, eventdata, handles)
% % hObject    handle to uitable1 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    empty - handles not created until after all CreateFcns called
% 
% %set(findall(gcf,'-property','enable'),'enable','off')
% 
% guidata(hObject, handles);
% 
% % The size of the cell array determines the number of rows and columns in the table.
% set(hObject, 'Data', cell(19));
% 
% set(findall(gcf,'-property','enable'),'enable','on')
% % Save the handles structure.
% guidata(hObject,handles)

%--------
% LEFT
%--------

% --- Executes when selected cell(s) is changed in uitable4.
function uitable4_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable4 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)
% hObject    handle to uitable1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)

set(findall(gcf,'-property','enable'),'enable','off')

%selected_cells = eventdata.Indices;
row = eventdata.Indices(:,1);
handles.currSelectionrow = row;
guidata(hObject,handles);
handles.currSelectionrow = row;

col = eventdata.Indices(:,2);
handles.currSelectioncol = col;
guidata(hObject,handles);
handles.currSelectioncol = col;

% % Determine the selected data set.
intensityStr = {'-10','-7.5','-5','-2.5','0','2.5','5','7.5','10',...
    '12.5','15','17.5','20','22.5','25','27.5','30','32.5','35','37.5',...
    '40','42.5','45','47.5','50','52.5','55','57.5','60','62.5','65',...
    '67.5','70','72.5','75','77.5','80'};

intensityVal_left = row;
intensity_left = str2double(intensityStr{intensityVal_left});

handles.row=row;
handles.col=col;

% Left ear
freq_PTF_L = {handles.PTF250HzL,handles.PTF500HzL,handles.PTF1000HzL,...
    handles.PTF2000HzL,handles.PTF4000HzL,handles.PTF8000HzL}';
freq_AMTF_L = {handles.AMTF250HzL,handles.AMTF500HzL,handles.AMTF1000HzL, ...
    handles.AMTF2000HzL,handles.AMTF4000HzL,handles.AMTF8000HzL}';
frequency_type_str = {'250','500','1000','2000','4000','8000'};

frequencyVal_left = col;
frequency_left = str2double(frequency_type_str{frequencyVal_left});

handles.intensity_left = intensity_left;
handles.frequency_left = frequency_left;

% Choose default command line output for AMTAGUIv1
handles.output = hObject;

if strcmp(handles.toneType,'PT')
        player = audioplayer((1/(10^((80-(intensity_left))/20)))*freq_PTF_L{col},handles.Fs);
elseif strcmp(handles.toneType,'AMT')
        player = audioplayer((1/(10^((80-(intensity_left))/20)))*freq_AMTF_L{col},handles.Fs);
end
handles.ouput = hObject;
intensity_value_left = handles.intensity_left;
set(handles.edit3, 'String', intensity_value_left);

frequency_value = handles.frequency_left;
set(handles.edit4, 'String', frequency_value);

play(player);
pause(1+(2*rand));
pause(1+(2*rand));
clear player
set(findall(gcf,'-property','enable'),'enable','on')

% Save the handles structure.
guidata(hObject,handles)



% --- Executes on key press with focus on figure1 or any of its controls.
function figure1_WindowKeyPressFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.FIGURE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)
 
% Save the handles structure.
guidata(hObject,handles)

%---------
% Right
%---------

% --- Executes when selected cell(s) is changed in uitable5.
function uitable5_CellSelectionCallback(hObject, eventdata, handles)
% hObject    handle to uitable5 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) currently selecteds
% handles    structure with handles and user data (see GUIDATA)

set(findall(gcf,'-property','enable'),'enable','off')
%selected_cells = eventdata.Indices;

%row = eventdata.Indices(1);
%col = eventdata.Indices(2);

row = eventdata.Indices(:,1);
handles.currSelectionrow = row;
guidata(hObject,handles);
handles.currSelectionrow = row;

col = eventdata.Indices(:,2);
handles.currSelectioncol = col;
guidata(hObject,handles);
handles.currSelectioncol = col;

% % Determine the selected data set.
intensityStr = {'-10','-7.5','-5','-2.5','0','2.5','5','7.5','10',...
    '12.5','15','17.5','20','22.5','25','27.5','30','32.5','35','37.5',...
    '40','42.5','45','47.5','50','52.5','55','57.5','60','62.5','65',...
    '67.5','70','72.5','75','77.5','80'};

intensityVal = row;
intensity = str2double(intensityStr{intensityVal});

handles.row=row;
handles.col=col;

% Right ear
freq_PTF_R = {handles.PTF250HzR,handles.PTF500HzR,handles.PTF1000HzR,...
    handles.PTF2000HzR,handles.PTF4000HzR,handles.PTF8000HzR}';
% freq_AMTF_R = {handles.AMTF250HzR,handles.AMTF500HzR,handles.AMTF1000HzR, ...
%     handles.AMTF2000HzR,handles.AMTF4000HzR,handles.AMTF8000HzR}';
frequency_type_str = {'250','500','1000','2000','4000','8000'};

frequencyVal = col;
frequency = str2double(frequency_type_str{frequencyVal});

handles.intensity = intensity;
handles.frequency = frequency;

% Choose default command line output for AMTAGUIv1
handles.output = hObject;

if strcmp(handles.toneType,'PT')
    player = audioplayer((1/(10^((80-(intensity))/20)))*freq_PTF_R{col},handles.Fs); 
 
elseif strcmp(handles.toneType,'AMT')
    player = audioplayer((1/(10^((80-(intensity))/20)))*freq_AMTF_R{col},handles.Fs);
    
end

handles.ouput = hObject;
intensity_value = handles.intensity;
set(handles.edit1, 'String', intensity_value);

frequency_value = handles.frequency;
set(handles.edit2, 'String', frequency_value);

play(player);
pause(1+(2*rand));
pause(1+(2*rand));
clear player
set(findall(gcf,'-property','enable'),'enable','on')

% Save the handles structure.
guidata(hObject,handles)


% --- Executes when entered data in editable cell(s) in uitable4.
function uitable4_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable4 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)

handles.ouput = hObject;
intensity_value_left = handles.intensity_left;
set(handles.edit3, 'String', intensity_value_left);

% Save the handles structure.
guidata(hObject,handles)

data_left = get(hObject,'data');

% --- Executes when entered data in editable cell(s) in uitable5.
function uitable5_CellEditCallback(hObject, eventdata, handles)
% hObject    handle to uitable5 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Indices: row and column indices of the cell(s) edited
%	PreviousData: previous data for the cell(s) edited
%	EditData: string(s) entered by the user
%	NewData: EditData or its converted form set on the Data property. Empty if Data was not changed
%	Error: error string when failed to convert EditData to appropriate value for Data
% handles    structure with handles and user data (see GUIDATA)

%data = get(hObject,'Data');

handles.ouput = hObject;
intensity_value = handles.intensity;
set(handles.edit1, 'String', intensity_value);

% Save the handles structure.
guidata(hObject,handles)

data_right = get(hObject,'data');

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


% --- Executes on button press in pushbutton109.
function pushbutton109_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton109 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Audiogram_right=get(handles.uitable5,'Data');
%display(Audiogram_right);

Plot_audiogram_right1 = handles.audiogram_right;
data_audiogram_right = handles.data_audiogram_right.freq_plot_right;

% Get the name of the file that the user wants to save.
% Note, if you're saving an image you can use imsave() instead of uiputfile().
startingFolder = 'C:\Users\KevinPrinsloo\MAMTA\DD_old\GUI_output\Audiograms\';
defaultFileName = fullfile(startingFolder, '*.fig'); 
[baseFileName, folder] = uiputfile(defaultFileName, 'Plot_audiogram_right1');
if baseFileName == 0
	% User clicked the Cancel button.
	return;
end

fullFileName = fullfile(folder, baseFileName);
savefig(fullFileName)

% Get the name of the file that the user wants to save.
% Note, if you're saving an image you can use imsave() instead of uiputfile().
startingFolder_2 = 'C:\Users\KevinPrinsloo\MAMTA\DD_old\GUI_output\Audiograms\Data';
defaultFileName_2 = fullfile(startingFolder_2, '*.mat'); 
%[baseFileName, folder] = uiputfile(defaultFileName_2, 'data_audiogram_right');
[baseFileName, folder] = uiputfile(defaultFileName_2, 'freq_plot');
if baseFileName == 0
	% User clicked the Cancel button.
	return;
end
fullFileName = fullfile(folder, baseFileName);
save(fullFileName,'data_audiogram_right','-v7.3')
 



% % Get the name of the file that the user wants to save.
% % Note, if you're saving an image you can use imsave() instead of uiputfile().
% startingFolder = 'C:\Users\KevinPrinsloo\MAMTA\DD_old\GUI_output\Audiograms\';
% defaultFileName = fullfile(startingFolder, '*.mat');
% [baseFileName, folder] = uiputfile(defaultFileName, 'Audiogram_left');
% if baseFileName == 0
% 	% User clicked the Cancel button.
% 	return;
% end
% fullFileName = fullfile(folder, baseFileName)
% save(fullFileName)


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

% --- Executes during object creation, after setting all properties.
function figure1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to figure1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% --- Executes on button press in pushbutton110.
function pushbutton110_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton110 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

data = get(handles.uitable5, 'data');

figure;
set(handles.uitable5,'data',data)
data = get(handles.uitable5,'data');
%plot(data(:,1),data(:,2));

assignin('base','data',data);
set(handles.uitable5,'data',data)

% % Determine the selected data set.
intensityStr = {'-10','-7.5','-5','-2.5','0','2.5','5','7.5','10',...
    '12.5','15','17.5','20','22.5','25','27.5','30','32.5','35','37.5',...
    '40','42.5','45','47.5','50','52.5','55','57.5','60','62.5','65',...
    '67.5','70','72.5','75','77.5','80'};

dat=zeros(37,6);
dat=str2double(data);
dat(isnan(dat)) = 0;

clear freqVal freqLoc freq_tmp
freq_tmp = zeros(37,6);
for ifreq= 1:6,
    [freqVal,freqLoc] = findpeaks(dat(:,ifreq));
    freqVal = str2double(intensityStr{freqLoc});
    freq_tmp(freqLoc,ifreq) = freqVal;
end

freq_tmp2 = freq_tmp;

%freq_tmp2 = flipud(freq_tmp);

tmp = freq_tmp2;
for k=1:6,
    freq_plot_right(k) = sum(tmp(:,k));
end

plot(freq_plot_right, '-o','linewidth',1.3,'markersize',5,'markerfacecolor','g')
set(gca,'YTick',[-10:5:80])
ylim([-10 80])
set(gca,'Ydir','reverse')
xlim([0 7])
set(gca,'XTickLabel',{'0','250 Hz','500 Hz', '1 KHz','2 KHz','4 KHz','8 KHz', ' '})
grid on
xlabel('Frequency');
ylabel('Hearing Level (dB ISO)');
title('Right Audiogram');

figure_handle_right = gcf;
handles.audiogram_right = figure_handle_right;

assignin('base','freq_plot_right',freq_plot_right);
guidata(hObject,handles)
handles.data_audiogram_right.freq_plot_right=freq_plot_right; 

% Save the handles structure.
guidata(hObject,handles)


% --- Executes on key press with focus on uitable5 and none of its controls.
function uitable5_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to uitable5 (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.TABLE)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

str = get(hObject, 'UserData');
str = strcat(str, eventdata.Character);
set(hObject, 'UserData', str);

f=gcf;

val=double(get(f,'CurrentCharacter')) % compare the values to the list

% 28 => leftArrow
% 29 => rightArrow
% 30 => upArrow
% 31 => downArrow



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


% --- Executes on button press in pushbutton111.
function pushbutton111_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton111 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

data = get(handles.uitable4, 'data');

figure;
set(handles.uitable4,'data',data)
data = get(handles.uitable4,'data');
%plot(data(:,1),data(:,2));

assignin('base','data',data);
set(handles.uitable4,'data',data)

% % Determine the selected data set.
intensityStr = {'-10','-7.5','-5','-2.5','0','2.5','5','7.5','10',...
    '12.5','15','17.5','20','22.5','25','27.5','30','32.5','35','37.5',...
    '40','42.5','45','47.5','50','52.5','55','57.5','60','62.5','65',...
    '67.5','70','72.5','75','77.5','80'};

dat=zeros(37,6);
dat=str2double(data);
dat(isnan(dat)) = 0;

clear freqVal freqLoc freq_tmp
freq_tmp = zeros(37,6);
for ifreq= 1:6,
    [freqVal,freqLoc] = findpeaks(dat(:,ifreq));
    freqVal = str2double(intensityStr{freqLoc});
    freq_tmp(freqLoc,ifreq) = freqVal;
end

freq_tmp2 = freq_tmp;

%freq_tmp2 = flipud(freq_tmp);

tmp = freq_tmp2;
for k=1:6,
    freq_plot_left(k) = sum(tmp(:,k));
end

plot(freq_plot_left, '-o','linewidth',1.3,'markersize',5,'markerfacecolor','g')
set(gca,'YTick',[-10:5:80])
ylim([-10 80])
set(gca,'Ydir','reverse')
xlim([0 7])
set(gca,'XTickLabel',{'0','250 Hz','500 Hz', '1 KHz','2 KHz','4 KHz','8 KHz', ' '})
grid on
xlabel('Frequency');
ylabel('Hearing Level (dB ISO)');
title('Left Audiogram');

figure_handle_left = gcf;
handles.audiogram_left = figure_handle_left;

assignin('base','freq_plot_left',freq_plot_left);
guidata(hObject,handles)
handles.data_audiogram_left.freq_plot_left=freq_plot_left; 

% Save the handles structure.
guidata(hObject,handles)


% --- Executes on button press in pushbutton112.
function pushbutton112_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton112 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

Audiogram_left=get(handles.uitable4,'Data');
%display(Audiogram_right);

Plot_audiogram_left1 = handles.audiogram_left;
data_audiogram_left = handles.data_audiogram_left.freq_plot_left;


% Get the name of the file that the user wants to save.
% Note, if you're saving an image you can use imsave() instead of uiputfile().
startingFolder = 'C:\Users\KevinPrinsloo\MAMTA\DD_old\GUI_output\Audiograms\';
defaultFileName = fullfile(startingFolder, '*.fig'); 
[baseFileName, folder] = uiputfile(defaultFileName, 'Plot_audiogram_left1');
if baseFileName == 0
	% User clicked the Cancel button.
	return;
end

fullFileName = fullfile(folder, baseFileName)
savefig(fullFileName)

% Get the name of the file that the user wants to save.
% Note, if you're saving an image you can use imsave() instead of uiputfile().
startingFolder_2 = 'C:\Users\KevinPrinsloo\MAMTA\DD_old\GUI_output\Audiograms\Data';
defaultFileName_2 = fullfile(startingFolder_2, '*.mat'); 
[baseFileName, folder] = uiputfile(defaultFileName_2, 'freq_plot_left');
if baseFileName == 0
	% User clicked the Cancel button.
	return;
end
fullFileName = fullfile(folder, baseFileName);
save(fullFileName,'data_audiogram_left','-v7.3')

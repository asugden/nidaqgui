global nicfg

% Set the up the nidaq recording
nicfg.BasePath         = 'X:\PLEASE_CHANGE_ME\';       % Set the path in which data will be saved. Please use an absolute address.
nicfg.ArduinoCOM       = 4;            % Set the COM port for the Arduino, < 0 means off
nicfg.NidaqChannels    = 8;             % Set the number of NIDAQ channels to record (e.g. 6 means 0:5)
nicfg.NidaqDigitalChannels = 1;         % Set the number of digital channels on Port0 to record, starting at Line0
nicfg.NidaqFrequency   = 1000;          % Set the recording frequency for the nidaq
nicfg.RunningFrequency = 15;         % Set the frequency at which running is recorded
nicfg.DigitalString    = 'Port0/Line'; % Set a digital channel to be recorded, blank means no digital channels
nicfg.ChannelNames     = { ...
                            'visual_stimulus', 1, ...
                            'monitor_refresh', 2, ...
                            'licking', 3, ...
                            'ensure', 4, ...
                            'quinine', 5, ...
                            'camera_pulses', 6 ...
                         };             % Set the names of each channel to be saved
                                        % Incremented by 1 relative to Nidaq board because Nidaq is 0-indexed
nicfg.DigitalChannelNames = { ...
                         };
% =========================================================================
% Not necessary to set
nicfg.active           = false;
nicfg.MouseName        = '';
nicfg.Run              = '';
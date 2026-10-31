%%
% Written in MATLAB R2026a - hDharshan 
% 
% After reading through this two months later, I notice several issues with
% long variable names/constant overwriting. For the sake of keeping it
% closely organized in the way the presentation was organized, I chose not
% to completely clean this file

%% Loading your Data
% Slide 11

clc, clearvars
curryStruct = LoadCurryDataFile('testjeff_clicks_b.dat', 0, 1);

%% What does our data look like?
% Slide 12

whos curryStruct
curryStruct

%% Creating variables
% Slide 17

sampRate = curryStruct.samplingFreqHz;
samples = curryStruct.numSamples;
trialTime = samples / sampRate;
data = curryStruct.data(3, :); % Overwritten in the next cell

eventsSamp = cast(curryStruct.events(1,:), 'single');
eventsTime = eventsSamp / sampRate;

plotTime = linspace(0,trialTime,length(data));

%% Our first plot
% Slide 18

label = 3;
data = curryStruct.data(label, :);

figure(1), clf
plot(plotTime, data)
title("Our first EEG Plot", FontSize=20)
xlim([0 trialTime])
xlabel('Time (ms)', FontSize=14), ylabel('Amplitude', FontSize=14)
legend(curryStruct.labels(1, label), FontSize=16, location='northwest')

%% How I created this plot
% Slide 19

c1Data = curryStruct.data(3, :);

halfPower1 = 4;
halfPower2 = 8;

dF1 = designfilt("bandpassiir", FilterOrder=4, HalfPowerFrequency1=halfPower1, ...
    HalfPowerFrequency2=halfPower2, SampleRate=sampRate, DesignMethod='butter');

y1 = filtfilt(dF1,c1Data);

figure(2), clf
hold on
plot(plotTime*1000,y1,'r', 'LineWidth',1.25)

% legend(curryStruct.labels(1,label))
plot(plotTime*1000,c1Data,'b', 'LineWidth',0.5)
xlim([5 6]*1000)

yline((mean(c1Data([5*sampRate 6*sampRate]))),'Color',[1 0.5 0], 'LineWidth',1)
yline((mean(y1([5*sampRate 6*sampRate]))),'k', 'LineWidth',1)
legend('Filtered','Raw','Raw Mean','Filtered Mean', location='northwest',FontSize=16)
title('Bandpass IIR vs Raw', FontSize=20)
subtitle('C1 Electrode', FontSize=14)
xlabel("Time (ms)", FontSize=14), ylabel("Amplitude", FontSize=14)
hold off

clear dF1 y1 % For chronological order sake as they're being re-defined below

%% Filtering
% Slides 20, 21

halfPower1 = 1;
halfPower2 = 300;

dF1 = designfilt("bandpassiir", FilterOrder=4, HalfPowerFrequency1=halfPower1, HalfPowerFrequency2=halfPower2, ...
    SampleRate=sampRate, DesignMethod='butter');

%% Can we plot!?
% Slide 22

whos dF1
% plot(plotTime, dF1, 'r') % Will intentionally throw an error

%% How I created this plot
% Slide 23 
% Note that there are no triangle markers as I made them in the .pptx, you
% can do this in MATLAB by using the findpeaks() function and some finesse
% with the args.

figure(3), clf

c1Data = curryStruct.data(3, :);

% The purpose of redefining the halfPowers and re-filtering every cell is
% so I could make several plots with different frequencies being shown, all
% in different cells.
halfPower1 = 1;
halfPower2 = 100;

dF2 = designfilt("bandpassiir", FilterOrder=4, HalfPowerFrequency1=halfPower1, ...
    HalfPowerFrequency2=halfPower2, SampleRate=sampRate, DesignMethod='butter');

dF4 = designfilt("bandpassiir", FilterOrder=4, HalfPowerFrequency1=halfPower1, ...
    HalfPowerFrequency2=halfPower2, SampleRate=sampRate, DesignMethod='butter');

y1 = filtfilt(dF2,c1Data);
y2 = filter(dF4,c1Data);

hold on
plot(plotTime*1000,c1Data,'r', 'LineWidth',0.25);
plot(plotTime*1000,y1,'k', 'LineWidth',1.5)
plot(plotTime*1000,y2,'b', 'LineWidth',1.5)

% Note that halfPower1 and 2 must equal 1 and 100 to match the powerpoint,
% respectively
title('Bandpass IIR processed by filtfilt vs filter', FontSize=20)
subtitle([num2str(halfPower1) '–' num2str(halfPower2) ' Hz'], FontSize=18)
legend( 'raw','filtfilt','filter',location='northwest', fontsize=16)
xlabel("Time (ms)", FontSize=14), ylabel("Amplitude", FontSize=14)
xlim([4.5 4.8]*1000)
hold off

%% New definitions of data
% Not in the slide show... for some reason

c1Data = curryStruct.data(1, :);
czData = curryStruct.data(2, :);
m1Data = curryStruct.data(3, :);
m2Data = curryStruct.data(4, :);

halfPower1 = 1;
halfPower2 = 100;

dF1 = designfilt("bandpassiir", FilterOrder=4, HalfPowerFrequency1=halfPower1, ...
    HalfPowerFrequency2=halfPower2, SampleRate=sampRate, DesignMethod='butter');

c1 = filtfilt(dF1,c1Data);
cz = filtfilt(dF1,czData);
m1 = filtfilt(dF1,m1Data);
m2 = filtfilt(dF1,m2Data);

% The raw, unfiltered data and old filters are not needed any more, so we
% use clear to clean up (now) unused variables in our workspace
clear c1Data czData m1Data m2Data data dF1 dF2 dF4 y1 y2 label

%% How I created this plot
% Slide 24 
% Note that halfPower1 in your filtered data and 2 must equal 1 and 100 to
% match the powerpoint, respectively

figure(4), clf
plot(plotTime*1000,m2,LineWidth=1.25)
subtitle([num2str(halfPower1) '–' num2str(halfPower2) ' Hz'], FontSize=18)
xlim([5 6]*1000)
xlabel("Time (ms)", FontSize=14), ylabel("Amplitude", FontSize=14)

%% How I created this plot
% Slide 25 Note that halfPower1 and 2 in your filtered data must equal 1
% and 100 to match the powerpoint, respectively

figure(5), clf
plot(plotTime*1000,m2,LineWidth=1.25)
subtitle([num2str(halfPower1) '–' num2str(halfPower2) ' Hz'], FontSize=18)
xlim([5 6]*1000)
xlabel("Time (ms)", FontSize=14), ylabel("Amplitude", FontSize=14)

% Because of this line below, the plot will take more time as it plots all
% eventsTime for the trial, on domain 0 <= t <= 282.9

% xline(eventsTime*1000, 'r', LineWidth=1.5)

% You could make it shorter (I didn't do this in the slideshow for brevity
% sake) by indexing eventsTime for only the values in your plotting domain,
% being 5000 to 6000 ms. I'll hard-code it here, but you can also use
% variables.

eventsArray = eventsTime((eventsTime >= 5 & eventsTime <= 6 ));
xline(eventsArray*1000, 'r', LineWidth=1.5)

% Using tic and toc to see the differences from using eventsTime instead of
% our newly created eventsArray, you can see the difference below:

% Elapsed time is 4.512596 seconds. Elapsed time is 0.736804 seconds.
%% Refiltering

c1Data = curryStruct.data(1, :);
czData = curryStruct.data(2, :);
m1Data = curryStruct.data(3, :);
m2Data = curryStruct.data(4, :);

% Exact same code as above, but different halfPowers
halfPower1 = 150;
halfPower2 = 1500;

dF1 = designfilt("bandpassiir", FilterOrder=4, HalfPowerFrequency1=halfPower1, HalfPowerFrequency2=halfPower2, ...
    SampleRate=sampRate, DesignMethod='butter');

c1 = filtfilt(dF1,c1Data);
cz = filtfilt(dF1,czData);
m1 = filtfilt(dF1,m1Data);
m2 = filtfilt(dF1,m2Data);

clear c1Data czData m1Data m2Data dF1

%% Referencing
% Slides 26, 27

m1_Ref = (m1-cz);
m2_Ref = (m2-cz);

%% Plot just one peristimulus trace
% Slide 27

periPre = 0.020;    % How many seconds of peristimulus trace before
periPost = 0.015;   % How many seconds of peristimulus trace after

periPreSamp = periPre*sampRate;     % How many samples of peristimulus trace before
periPostSamp = periPost*sampRate;   % How many samples of peristimulus trace after

thisEvent = eventsSamp(1);
singleDomain = cast((thisEvent - periPreSamp):1:(thisEvent + periPostSamp), 'double');
m1dataRange = m1(singleDomain);
m2dataRange = m2(singleDomain);

figure(6), clf
hold on
plot(singleDomain*1000/sampRate,m1dataRange)
plot(singleDomain*1000/sampRate,m2dataRange)

xlim([singleDomain(1)*1000/sampRate singleDomain(end)*1000/sampRate])
xline(thisEvent/20, 'r', LineWidth=1.5)
legend('M1','M2', FontSize=16, location='northwest')

title('Peristimulus trace on single event marker', fontsize=20)
subtitle([num2str(halfPower1) '–' num2str(halfPower2) ' Hz'], FontSize=18)
xlabel("Time (ms)", FontSize=14), ylabel("Amplitude", FontSize=14)
hold off

%% Preallocation and iterative peristimulus trace
% Slides 29-31 
% Uses variables from last cell as well

periTraceSize = length((eventsSamp(1) - periPreSamp):1:(eventsSamp(1) + periPostSamp)); % How long each row of data will be

% Preallocating
m1_periStimTraces = zeros(length(eventsSamp),periTraceSize);
m2_periStimTraces = zeros(length(eventsSamp),periTraceSize);

for thisEvent = 1:length(eventsSamp)
    thisEventLoc = eventsSamp(thisEvent); % Creates index thisEventLoc that increases by each eventsSamp per iteration
    singleDomain = (thisEventLoc - periPreSamp):1:(thisEventLoc + periPostSamp); % Creates domain in samples given domains to index data

    m1_RefdataRange = m1_Ref(singleDomain); % Uses singleDomain to index m1 and m2 in that domain
    m2_RefdataRange = m2_Ref(singleDomain);

    m1_periStimTraces(thisEvent,:) = m1_RefdataRange; % Builds array, iteration by iteration, of each event's EEG data by row
    m2_periStimTraces(thisEvent,:) = m2_RefdataRange;
end

m1_periStimMean = mean(m1_periStimTraces, 1); % Takes the mean of the array we just built over each column
m2_periStimMean = mean(m2_periStimTraces, 1);

trialTime = linspace(0,701/20,701);
%% Plotting your means
% Slides 30, 31
figure(18), clf

subplot(2,2,1)
plot(trialTime, m1_periStimMean)
xline(20, 'r', 'LineWidth', 1.75)
title('M1-CZ')
xlim([trialTime(1) trialTime(end)])
ylim([-0.5 0.5])
xlabel("Time (ms)")
ylabel("Amplitude")

subplot(2,2,2)
plot(trialTime, m2_periStimMean)
xline(20, 'r', 'LineWidth', 1.75)
title('M2-CZ')
xlabel("Time (ms)")
ylabel("Amplitude")
xlim([trialTime(1) trialTime(end)])
ylim([-0.5 0.5])

subplot(2,2,[3 4]) % Very cool way to have a larger subplot in the 3rd and 4th position, identify it as an array!
% https://www.mathworks.com/matlabcentral/answers/1935374-3-subplots-with-the-bottom-one-split-in-2-vertically

hold on
plot(trialTime, m1_periStimMean)
plot(trialTime, m2_periStimMean)
xline(20, 'r', 'LineWidth', 1.75)
title('Layered M1/M2 References')
xlabel("Time (ms)")
ylabel("Amplitude")
xlim([trialTime(1) trialTime(end)])
ylim([-0.5 0.5])
legend('M1-CZ', 'M2-CZ', location='northwest', fontsize=12)
hold off
sgtitle(['Average of ' num2str(length(eventsSamp)) ' events at ' num2str(halfPower1) '–' num2str(halfPower2) ' Hz '])
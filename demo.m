% clear
% close all
% clc
% addpath('data/');
% addpath('src/');
% ID = 5; %%% serial number of calibration
% RF_duration = 2.88e-3; %%% duration of the RF pulse, 
% dt = 10e-6; %%% dwell time, s
% TR = 50e-3; %%% repetition time, s, used in SAR-constraint.
% RFA = round(ernstAngle(TR)); %%% round: the vendor-provided FA is integer
% [rf,grad,localSAR] = design_pTxSPSP_RF(ID,RF_duration,dt,TR,RFA,'SPINS');
% rf = RFA*rf*1e6; grad = grad*1e3; %%% uV->V, T->mT
showPulse(rf,grad,RF_duration,dt);
offset = -100;%%% To see the robustness to off-resonance
%%% As in the paper, you may change offset to 0 and ±100
showPerform(ID,rf,grad,dt, offset,RFA);
showFrequencyRes(ID,rf,grad,dt,RFA);
outputfile(rf,grad);%%% ini file output



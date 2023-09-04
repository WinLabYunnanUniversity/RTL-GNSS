%% tracking data analysis
clear all;clc
trackData = {};
savep='D:\Root\workspace\GPS signal analysis\get_feature\improved3\MeasureRTL\dataset\';
for i=0:7
    load(['D:\OutSideData\rtl-spoofing\tra\tracking_ch_',num2str(i),'.mat'])
    chanNum=i+1;
    trackData.channal(chanNum).abs_E = abs_E;
    trackData.channal(chanNum).abs_L = abs_L;
    trackData.channal(chanNum).abs_P = abs_P;
    trackData.channal(chanNum).abs_VE = abs_VE;
    trackData.channal(chanNum).abs_VL = abs_VL;
    trackData.channal(chanNum).acc_carrier_phase_rad = acc_carrier_phase_rad;
    trackData.channal(chanNum).aux1 = aux1;
    trackData.channal(chanNum).aux2 = aux2;
    trackData.channal(chanNum).carr_error_filt_hz = carr_error_filt_hz;
    trackData.channal(chanNum).carr_error_hz = carr_error_hz;
    trackData.channal(chanNum).carrier_doppler_hz = carrier_doppler_hz;
    trackData.channal(chanNum).carrier_doppler_rate_hz = carrier_doppler_rate_hz;
    trackData.channal(chanNum).carrier_lock_test = carrier_lock_test;
    trackData.channal(chanNum).CN0_SNV_dB_Hz = CN0_SNV_dB_Hz;
    trackData.channal(chanNum).code_error_chips = code_error_chips;
    trackData.channal(chanNum).code_error_filt_chips = code_error_filt_chips;
    trackData.channal(chanNum).code_freq_chips = code_freq_chips;
    trackData.channal(chanNum).Prompt_I = Prompt_I;
    trackData.channal(chanNum).Prompt_Q = Prompt_Q;
end
save([savep,'trackDataSpoof.mat'],"trackData")

clear all;clc;
savep='D:\Root\workspace\GPS signal analysis\get_feature\improved3\MeasureRTL\dataset\';
load('D:\OutSideData\rtl-spoofing\obs\observables.mat')
obsData={};
obsData.Carrier_Doppler_hz=Carrier_Doppler_hz;
obsData.Carrier_phase_cycles=Carrier_phase_cycles;
obsData.Flag_valid_pseudorange=Flag_valid_pseudorange;
for j=1:8
    obsData.PRN(j)=max(PRN(j,:));
end
obsData.Pseudorange_m=Pseudorange_m;
obsData.RX_time=RX_time;
obsData.TOW_at_current_symbol_s=TOW_at_current_symbol_s;
save([savep,'obsDataSpoof.mat'],"obsData")

clear all;clc;
savep='D:\Root\workspace\GPS signal analysis\get_feature\improved3\MeasureRTL\dataset\';
load('D:\OutSideData\rtl-spoofing\pvt\pvt.mat')
pvtData = {};
pvtData.AR_ratio_factor=AR_ratio_factor;
pvtData.AR_ratio_threshold=AR_ratio_threshold;
pvtData.cov_xx=cov_xx;
pvtData.cov_xy=cov_xy;
pvtData.cov_yy=cov_yy;
pvtData.cov_yz=cov_yz;
pvtData.cov_zx=cov_zx;
pvtData.cov_zz=cov_zz;
pvtData.gdop=gdop;
pvtData.hdop=hdop;
pvtData.height=height;
pvtData.latitude=latitude;
pvtData.longitude=longitude;
pvtData.pdop=pdop;
pvtData.pos_x=pos_x;
pvtData.pos_y=pos_y;
pvtData.pos_z=pos_z;
pvtData.RX_time=RX_time;
pvtData.solution_status=solution_status;
pvtData.solution_type=solution_type;
pvtData.TOW_at_current_symbol_ms=TOW_at_current_symbol_ms;
pvtData.user_clk_offset=user_clk_offset;
pvtData.valid_sats=valid_sats;
pvtData.vdop=vdop;
pvtData.vel_x=vel_x;
pvtData.vel_y=vel_y;
pvtData.vel_z=vel_z;
pvtData.week=week;
save([savep,'pvtDataSpoof.mat'],"pvtData")
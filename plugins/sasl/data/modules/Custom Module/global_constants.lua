-------------------------------------------------------------------------------
-- A32NX Freeware Project
-- Copyright (C) 2020
-------------------------------------------------------------------------------
-- LICENSE: GNU General Public License v3.0
--
--    This program is free software: you can redistribute it and/or modify
--    it under the terms of the GNU General Public License as published by
--    the Free Software Foundation, either version 3 of the License, or
--    (at your option) any later version.
--
--    Please check the LICENSE file in the root of the repository for further
--    details or check <https://www.gnu.org/licenses/>
-------------------------------------------------------------------------------
-- File: constants.lua 
-- Short description: This file contains the global constants
-------------------------------------------------------------------------------

--pfd shader intensity
PFD_SHADE_INTENSITY = 0.7 --transparency of the shader

--colors
ECAM_WHITE =  {1.0, 1.0, 1.0}
ECAM_LINE_GREY = {62/255, 74/255, 91/255}
ECAM_HIGH_GREY = {0.6, 0.6, 0.6}
ECAM_BLUE = {0.004, 1.0, 1.0}
ECAM_GREEN = {0.20, 0.98, 0.20}
ECAM_HIGH_GREEN = {0.1, 0.6, 0.1}
ECAM_ORANGE = {1, 0.66, 0.16}
ECAM_YELLOW = {1, 1, 0}
ECAM_RED = {1.0, 0.0, 0.0}
ECAM_MAGENTA = {1.0, 112/255, 1.0}
ECAM_GREY = {0.3, 0.3, 0.3}
ECAM_BLACK = {0, 0, 0}
ECAM_YELLOW = {1, 1, 0}
UI_WHITE = {1.0, 1.0, 1.0}
UI_LIGHT_RED = {1.0, 0.3, 0.3}
UI_LIGHT_BLUE = {0, 0.708, 1}
UI_LIGHT_GREY = {31/255, 41/255, 55/255}
UI_DARK_GREY = {0.1568, 0.1803, 0.2039}
UI_DARK_BLUE = {0, 0.5, 0.7}
UI_BRIGHT_GREY = {0.5, 0.5, 0.5}
UI_GREEN = {0.10, 1, 0.30}
UI_YELLOW = {1, 1, 0.30}

EFB_BACKGROUND_COLOUR = {17/255, 24/255, 39/255}
EFB_BACKGROUND_TOP = {31/255, 41/255, 55/255}
EFB_WHITE = {1.0, 1.0, 1.0}
EFB_BLACK = {0.0, 0.0, 0.0}
EFB_FULL_RED = {1.0, 0, 0}
EFB_FULL_YELLOW = {1, 1, 0}
EFB_FULL_GREEN = {0.0, 1.0, 0}
EFB_FULL_YELLOW = {1.0, 1.0, 0}
EFB_LIGHTGREY = {167/255, 180/255, 200/255}
EFB_DARKGREY = {95/255, 108/255, 126/255}
EFB_LIGHTBLUE = {90/255, 208/255, 218/255}
EFB_DARKBLUE = {42/255, 172/255, 160/255}
EFB_LIGHTGREEN = {20/255, 151/255, 107/255}
EFB_DARKGREEN = {31/255, 78/255, 68/255}
EFB_YELLOW = {168/255, 200/255, 91/255}
EFB_DROPDOWN_INSIDE = {31/255, 41/255, 55/255}
EFB_DROPDOWN_OUTSIDE = {141/255, 153/255, 170/255}

PFD_TAPE_GREY = {69/255, 86/255, 105/255}
PFD_YELLOW = {1, 1, 0}

LED_TEXT_CL = {235/255, 200/255, 135/255}

-- Misc graphics
GRAPHICS_AA_SCREEN_LEVEL = 4

-- ELEC buses
ELEC_BUS_AC_1 = 1
ELEC_BUS_AC_2 = 2
ELEC_BUS_AC_ESS = 3
ELEC_BUS_AC_ESS_SHED = 4
ELEC_BUS_DC_1 = 5
ELEC_BUS_DC_2 = 6
ELEC_BUS_DC_ESS = 7
ELEC_BUS_DC_ESS_SHED = 8
ELEC_BUS_DC_BAT_BUS = 9
ELEC_BUS_HOT_BUS_1 = 10
ELEC_BUS_HOT_BUS_2 = 11
ELEC_BUS_GALLEY = 12
ELEC_BUS_COMMERCIAL = 13
ELEC_BUS_STAT_INV = 14

-- Flight phases
PHASE_UNKNOWN        = 0
PHASE_ELEC_PWR       = 1
PHASE_1ST_ENG_ON     = 2
PHASE_1ST_ENG_TO_PWR = 3
PHASE_ABOVE_80_KTS   = 4
PHASE_LIFTOFF        = 5
PHASE_AIRBONE        = 6
PHASE_FINAL          = 7
PHASE_TOUCHDOWN      = 8
PHASE_BELOW_80_KTS   = 9
PHASE_2ND_ENG_OFF    = 10

-- FUEL
FUEL_TOT_MAX   = 40962
FUEL_LR_MAX    = 8449
FUEL_C_MAX     = 8941
FUEL_ACT_MAX   = 5031
FUEL_RCT_MAX   = 10089

-- Pumps and XFR ids
L_TK_PUMP_1  = 1
L_TK_PUMP_2  = 2
R_TK_PUMP_1  = 3
R_TK_PUMP_2  = 4
C_TK_XFR_1   = 5
C_TK_XFR_2   = 6
ACT_TK_XFR = 7
RCT_TK_XFR = 8

-- Tanks
tank_LEFT  = 1
tank_RIGHT = 2
tank_CENTER= 0
tank_ACT   = 3
tank_RCT   = 4

-- Anti-ice
ANTIICE_ENG_1        = 1
ANTIICE_ENG_2        = 2
ANTIICE_WING_L       = 3
ANTIICE_WING_R       = 4
ANTIICE_WINDOW_HEAT_L= 5
ANTIICE_WINDOW_HEAT_R= 6
ANTIICE_PITOT_CAPT   = 7
ANTIICE_PITOT_FO     = 8
ANTIICE_PITOT_STDBY  = 9
ANTIICE_STATIC_CAPT  = 10
ANTIICE_STATIC_FO    = 11
ANTIICE_STATIC_STDBY = 12
ANTIICE_AOA_CAPT     = 13
ANTIICE_AOA_FO       = 14
ANTIICE_AOA_STDBY    = 15
ANTIICE_TAT_CAPT     = 16
ANTIICE_TAT_FO       = 17

-- Adirs
ADIRS_1 = 1
ADIRS_2 = 2
ADIRS_3 = 3

ADIRS_CONFIG_OFF     = 0
ADIRS_CONFIG_NAV     = 1
ADIRS_CONFIG_ATT     = 2

IR_STATUS_OFF         = 0
IR_STATUS_IN_ALIGN    = 1
IR_STATUS_ALIGNED     = 2
IR_STATUS_ATT_ALIGNED = 3
IR_STATUS_FAULT       = 4

ADR_STATUS_OFF      = 0
ADR_STATUS_STARTING = 1
ADR_STATUS_ON       = 2
ADR_STATUS_FAULT    = 3

-- Data manager
NAV_ID_NDB  = 2
NAV_ID_VOR  = 3
NAV_ID_LOC  = 4
NAV_ID_LOC_ALONE = 5
NAV_ID_GS   = 6
NAV_ID_OM   = 7
NAV_ID_MM   = 8
NAV_ID_IM   = 9
NAV_ID_DME  = 12
NAV_ID_DME_ALONE  = 13
NAV_ID_FPAP    = 14
NAV_ID_GLS     = 15
NAV_ID_LTPFTP  = 16

-- Fonts
Font_AirbusDUL       = sasl.gl.loadFont("fonts/AirbusDULiberationMono.ttf")
Font_AirbusDUL_vert  = sasl.gl.loadFont("fonts/AirbusDULiberationMono.ttf")
Font_AirbusDUL_small = sasl.gl.loadFont("fonts/AirbusDULiberationMono.ttf")
Font_Airbus_panel    = sasl.gl.loadFont("fonts/A320PanelFont_V0.2b.ttf")
Font_7_digits        = sasl.gl.loadFont("fonts/digital-7.mono.ttf")
Font_B612regular     = sasl.gl.loadFont("fonts/B612-Regular.ttf")
Font_B612MONO_regular= sasl.gl.loadFont("fonts/B612Mono-Regular.ttf")
Font_B612MONO_bold   = sasl.gl.loadFont("fonts/B612Mono-Bold.ttf")
Font_ECAMfont        = sasl.gl.loadFont("fonts/ECAMFontRegular.ttf")
Font_7segment_led    = sasl.gl.loadFont("fonts/Segment7Standard.otf")
Font_Roboto          = sasl.gl.loadFont("fonts/Roboto-Regular.ttf")
Font_MCDU            = sasl.gl.loadFont("fonts/MCDU.ttf")
Font_MCDUSmall       = sasl.gl.loadFont("fonts/MCDUSmall.ttf")

sasl.gl.setFontRenderMode(Font_AirbusDUL, TEXT_RENDER_FORCED_MONO, 0.6)
sasl.gl.setFontDirection (Font_AirbusDUL_vert, TEXT_DIRECTION_VERTICAL)
sasl.gl.setFontRenderMode(Font_AirbusDUL_small, TEXT_RENDER_FORCED_MONO, 0.6*1.47)
sasl.gl.setFontRenderMode(Font_MCDU, TEXT_RENDER_FORCED_MONO, 0.72)
sasl.gl.setFontRenderMode(Font_MCDUSmall, TEXT_RENDER_FORCED_MONO, 0.72)

-- Screens
PFD_CAPT  = 1
PFD_FO    = 2
ND_CAPT   = 1
ND_FO     = 2

-- Draims
DRAIMS_ID_CAPT = 1
DRAIMS_ID_FO   = 2

--DMC
DMC_PFD_CAPT = 1
DMC_ND_CAPT  = 2
DMC_EWD      = 3
DMC_ECAM     = 4
DMC_PFD_FO   = 5
DMC_ND_FO    = 6

DMC_PFD_CAPT_POS = {30,   3166, 900, 900}
DMC_ND_CAPT_POS  = {1030, 3166, 900, 900}
DMC_EWD_POS      = {30,   2226, 900, 900}
DMC_ECAM_POS     = {1030, 2226, 900, 900}
DMC_PFD_FO_POS   = {3030, 3166, 900, 900}
DMC_ND_FO_POS    = {2030, 3166, 900, 900}

--FBW LAWS
FBW_NORMAL_LAW            = 3
FBW_ALT_REDUCED_PROT_LAW  = 2
FBW_ALT_NO_PROT_LAW       = 1
FBW_DIRECT_LAW            = 0
FBW_ABNORMAL_LAW          = -1
FBW_MECHANICAL_BACKUP_LAW = -2

CAPT_SIDESTICK = 1
FO_SIDESTICK = 2

THR_TOGA_START = 0.95
THR_MCT_END =    0.85
THR_MCT_START =  0.80
THR_CLB_END =    0.70
THR_CLB_START =  0.65
THR_IDLE_END =   0.05
THR_IDLE_START = 0.00

THR_TOGA_THRESHOLD = (THR_MCT_END+THR_MCT_START)  / 2
THR_MCT_THRESHOLD  = (THR_CLB_END+THR_CLB_START)  / 2
THR_CLB_THRESHOLD =  (THR_IDLE_END+THR_IDLE_START)/ 2

-- TCAS
TCAS_MODE_OFF  = 0
TCAS_MODE_TA   = 1
TCAS_MODE_TARA = 2
TCAS_MODE_FAULT= 3

TCAS_ALERT_NONE = 0
TCAS_ALERT_TA   = 1
TCAS_ALERT_RA   = 2


-- FMGS
FMGS_MODE_DUAL   = 1
FMGS_MODE_SINGLE = 2
FMGS_MODE_BACKUP = 3
FMGS_MODE_OFF    = 4

FMGS_PHASE_PREFLIGHT = 1
FMGS_PHASE_TAKEOFF   = 2
FMGS_PHASE_CLIMB     = 3
FMGS_PHASE_CRUISE    = 4
FMGS_PHASE_DESCENT   = 5
FMGS_PHASE_APPROACH  = 6
FMGS_PHASE_GOAROUND  = 7
FMGS_PHASE_DONE      = 8

FMGS_PTR_NAVAID = 1
FMGS_PTR_WPT    = 2
FMGS_PTR_COORDS = 3
FMGS_PTR_APT    = 4

FMGS_SEGMENT_NONE     = 0
FMGS_SEGMENT_SID      = 1
FMGS_SEGMENT_SID_TRANS= 2
FMGS_SEGMENT_CLIMB    = 3
FMGS_SEGMENT_EN_ROUTE = 4
FMGS_SEGMENT_DESCENT  = 5
FMGS_SEGMENT_STAR     = 6
FMGS_SEGMENT_APPR     = 7
FMGS_SEGMENT_HOLD     = 8
FMGS_SEGMENT_OFF_ROUTE= 9

-- CIFP 
------ SID/STAR
CIFP_TYPE_SS_ENG_OUT   = '0'
CIFP_TYPE_SS_RWY_TRANS = '1'
CIFP_TYPE_SS_CMN_ROUTE = '2'
CIFP_TYPE_SS_ENR_TRANS = '3'
CIFP_TYPE_SS_RWY_TRANS_RNAV = '4'
CIFP_TYPE_SS_CMN_ROUTE_RNAV = '5'
CIFP_TYPE_SS_ENR_TRANS_RNAV = '6'
CIFP_TYPE_SS_RWY_TRANS_DESC = '7'   -- STAR ONLY
CIFP_TYPE_SS_CMN_ROUTE_DESC = '8'   -- STAR ONLY
CIFP_TYPE_SS_ENR_TRANS_DESC = '9'   -- STAR ONLY
CIFP_TYPE_SS_RWY_TRANS_FMS = 'F'
CIFP_TYPE_SS_CMN_ROUTE_FMS = 'M'
CIFP_TYPE_SS_ENR_TRANS_FMS = 'S'

------ APPR
CIFP_TYPE_APPR_APP_TRANS = 'A'
CIFP_TYPE_APPR_LOC_BC = 'B'
CIFP_TYPE_APPR_VORDME = 'D'
CIFP_TYPE_APPR_FMS = 'F'
CIFP_TYPE_APPR_IGS = 'G'
CIFP_TYPE_APPR_ILS = 'I'
CIFP_TYPE_APPR_GLS = 'J'
CIFP_TYPE_APPR_LOC_ONLY = 'L'
CIFP_TYPE_APPR_MLS = 'M'
CIFP_TYPE_APPR_NDB = 'N'
CIFP_TYPE_APPR_GPS = 'P'
CIFP_TYPE_APPR_NDBDME = 'Q'
CIFP_TYPE_APPR_RNAV = 'R'
CIFP_TYPE_APPR_VORDMETAC = 'S'
CIFP_TYPE_APPR_TACAN = 'T'
CIFP_TYPE_APPR_SDF = 'U'
CIFP_TYPE_APPR_VOR = 'V'
CIFP_TYPE_APPR_MLS_A = 'W'
CIFP_TYPE_APPR_LDA = 'X'
CIFP_TYPE_APPR_MLS_BC = 'Y'
CIFP_TYPE_APPR_MISSED = 'Z'

------ LEGS
CIFP_LEG_TYPE_IF = 1
CIFP_LEG_TYPE_TF = 2
CIFP_LEG_TYPE_CF = 3
CIFP_LEG_TYPE_DF = 4
CIFP_LEG_TYPE_FA = 5
CIFP_LEG_TYPE_FC = 6
CIFP_LEG_TYPE_FD = 7
CIFP_LEG_TYPE_FM = 8
CIFP_LEG_TYPE_CA = 9
CIFP_LEG_TYPE_CD = 10
CIFP_LEG_TYPE_CI = 11
CIFP_LEG_TYPE_CR = 12
CIFP_LEG_TYPE_RF = 13
CIFP_LEG_TYPE_AF = 14
CIFP_LEG_TYPE_VA = 15
CIFP_LEG_TYPE_VD = 16
CIFP_LEG_TYPE_VI = 17
CIFP_LEG_TYPE_VM = 18
CIFP_LEG_TYPE_VR = 19
CIFP_LEG_TYPE_PI = 20
CIFP_LEG_TYPE_HA = 21
CIFP_LEG_TYPE_HF = 22
CIFP_LEG_TYPE_HM = 23


CIFP_CSTR_ALT_NONE = 0
CIFP_CSTR_ALT_ABOVE = 1
CIFP_CSTR_ALT_BELOW = 2
CIFP_CSTR_ALT_AT = 3
CIFP_CSTR_ALT_ABOVE_BELOW = 4
CIFP_CSTR_ALT_ABOVE_2ND = 5
CIFP_CSTR_ALT_GLIDE = 6

CIFP_CSTR_SPD_NONE = 0
CIFP_CSTR_SPD_ABOVE = 1
CIFP_CSTR_SPD_BELOW = 2
CIFP_CSTR_SPD_AT = 3




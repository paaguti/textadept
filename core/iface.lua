-- Copyright 2007-2020 Mitchell mitchell.att.foicica.com. See LICENSE.

local M = {}

--[[ This comment is for LuaDoc.
---
-- Scintilla constants, functions, and properties.
-- Do not modify anything in this module. Doing so will have unpredictable
-- consequences.
module('_SCINTILLA')]]

---
-- Map of Scintilla constant names to their numeric values.
-- @class table
-- @name constants
-- @see _G.buffer
M.constants = {ACCESSIBILITY_DISABLED=0,ACCESSIBILITY_ENABLED=1,ALPHA_NOALPHA=256,ALPHA_OPAQUE=255,ALPHA_TRANSPARENT=0,ANNOTATION_BOXED=2,ANNOTATION_HIDDEN=0,ANNOTATION_INDENTED=3,ANNOTATION_STANDARD=1,AUTOMATICFOLD_CHANGE=0x0004,AUTOMATICFOLD_CLICK=0x0002,AUTOMATICFOLD_SHOW=0x0001,CARETSTICKY_OFF=0,CARETSTICKY_ON=1,CARETSTICKY_WHITESPACE=2,CARETSTYLE_BLOCK=2,CARETSTYLE_BLOCK_AFTER=0x100,CARETSTYLE_INS_MASK=0xF,CARETSTYLE_INVISIBLE=0,CARETSTYLE_LINE=1,CARETSTYLE_OVERSTRIKE_BAR=0,CARETSTYLE_OVERSTRIKE_BLOCK=0x10,CARET_EVEN=0x08,CARET_JUMPS=0x10,CARET_SLOP=0x01,CARET_STRICT=0x04,CASEINSENSITIVEBEHAVIOUR_IGNORECASE=1,CASEINSENSITIVEBEHAVIOUR_RESPECTCASE=0,CASE_CAMEL=3,CASE_LOWER=2,CASE_MIXED=0,CASE_UPPER=1,CHARACTERSOURCE_DIRECT_INPUT=0,CHARACTERSOURCE_IME_RESULT=2,CHARACTERSOURCE_TENTATIVE_INPUT=1,CP_UTF8=65001,CURSORARROW=2,CURSORNORMAL=-1,CURSORREVERSEARROW=7,CURSORWAIT=4,EDGE_BACKGROUND=2,EDGE_LINE=1,EDGE_MULTILINE=3,EDGE_NONE=0,EOL_CR=1,EOL_CRLF=0,EOL_LF=2,FIND_CXX11REGEX=0x00800000,FIND_MATCHCASE=0x4,FIND_NONE=0x0,FIND_REGEXP=10485760,FIND_WHOLEWORD=0x2,FIND_WORDSTART=0x00100000,FOLDACTION_CONTRACT=0,FOLDACTION_EXPAND=1,FOLDACTION_TOGGLE=2,FOLDDISPLAYTEXT_BOXED=2,FOLDDISPLAYTEXT_HIDDEN=0,FOLDDISPLAYTEXT_STANDARD=1,FOLDFLAG_LEVELNUMBERS=0x0040,FOLDFLAG_LINEAFTER_CONTRACTED=0x0010,FOLDFLAG_LINEAFTER_EXPANDED=0x0008,FOLDFLAG_LINEBEFORE_CONTRACTED=0x0004,FOLDFLAG_LINEBEFORE_EXPANDED=0x0002,FOLDFLAG_LINESTATE=0x0080,FOLDLEVELBASE=0x400,FOLDLEVELHEADERFLAG=0x2000,FOLDLEVELNUMBERMASK=0x0FFF,FOLDLEVELWHITEFLAG=0x1000,IDLESTYLING_AFTERVISIBLE=2,IDLESTYLING_ALL=3,IDLESTYLING_NONE=0,IDLESTYLING_TOVISIBLE=1,IME_INLINE=1,IME_WINDOWED=0,INDICATOR_CONTAINER=9,INDICATOR_IME=33,INDICATOR_IME_MAX=36,INDICATOR_MAX=36,INDIC_BOX=6,INDIC_COMPOSITIONTHICK=14,INDIC_COMPOSITIONTHIN=15,INDIC_CONTAINER=8,INDIC_DASH=9,INDIC_DIAGONAL=3,INDIC_DOTBOX=12,INDIC_DOTS=10,INDIC_FULLBOX=16,INDIC_GRADIENT=20,INDIC_GRADIENTCENTRE=21,INDIC_HIDDEN=5,INDIC_IME=32,INDIC_IME_MAX=35,INDIC_MAX=35,INDIC_PLAIN=0,INDIC_POINT=18,INDIC_POINTCHARACTER=19,INDIC_ROUNDBOX=7,INDIC_SQUIGGLE=1,INDIC_SQUIGGLELOW=11,INDIC_SQUIGGLEPIXMAP=13,INDIC_STRAIGHTBOX=8,INDIC_STRIKE=4,INDIC_TEXTFORE=17,INDIC_TT=2,IV_LOOKBOTH=3,IV_LOOKFORWARD=2,IV_NONE=0,IV_REAL=1,LASTSTEPINUNDOREDO=0x100,MARGINOPTION_NONE=0,MARGINOPTION_SUBLINESELECT=1,MARGIN_BACK=2,MARGIN_COLOUR=6,MARGIN_FORE=3,MARGIN_NUMBER=1,MARGIN_RTEXT=5,MARGIN_SYMBOL=0,MARGIN_TEXT=4,MARKER_MAX=32,MARKNUM_FOLDER=31,MARKNUM_FOLDEREND=26,MARKNUM_FOLDERMIDTAIL=28,MARKNUM_FOLDEROPEN=32,MARKNUM_FOLDEROPENMID=27,MARKNUM_FOLDERSUB=30,MARKNUM_FOLDERTAIL=29,MARK_ARROW=2,MARK_ARROWDOWN=6,MARK_ARROWS=24,MARK_AVAILABLE=28,MARK_BACKGROUND=22,MARK_BOOKMARK=31,MARK_BOXMINUS=14,MARK_BOXMINUSCONNECTED=15,MARK_BOXPLUS=12,MARK_BOXPLUSCONNECTED=13,MARK_CHARACTER=10000,MARK_CIRCLE=0,MARK_CIRCLEMINUS=20,MARK_CIRCLEMINUSCONNECTED=21,MARK_CIRCLEPLUS=18,MARK_CIRCLEPLUSCONNECTED=19,MARK_DOTDOTDOT=23,MARK_EMPTY=5,MARK_FULLRECT=26,MARK_LCORNER=10,MARK_LCORNERCURVE=16,MARK_LEFTRECT=27,MARK_MINUS=7,MARK_PIXMAP=25,MARK_PLUS=8,MARK_RGBAIMAGE=30,MARK_ROUNDRECT=1,MARK_SHORTARROW=4,MARK_SMALLRECT=3,MARK_TCORNER=11,MARK_TCORNERCURVE=17,MARK_UNDERLINE=29,MARK_VERTICALBOOKMARK=32,MARK_VLINE=9,MASK_FOLDERS=0xFE000000,MAX_MARGIN=5,MODEVENTMASKALL=0x3FFFFF,MOD_ALT=4,MOD_BEFOREDELETE=0x800,MOD_BEFOREINSERT=0x400,MOD_CHANGEANNOTATION=0x20000,MOD_CHANGEFOLD=0x8,MOD_CHANGEINDICATOR=0x4000,MOD_CHANGELINESTATE=0x8000,MOD_CHANGEMARGIN=0x10000,MOD_CHANGEMARKER=0x200,MOD_CHANGESTYLE=0x4,MOD_CHANGETABSTOPS=0x200000,MOD_CONTAINER=0x40000,MOD_CTRL=2,MOD_DELETETEXT=0x2,MOD_INSERTCHECK=0x100000,MOD_INSERTTEXT=0x1,MOD_LEXERSTATE=0x80000,MOD_META=16,MOD_NONE=0x0,MOD_NORM=0,MOD_SHIFT=1,MOD_SUPER=8,MOUSE_DRAG=2,MOUSE_PRESS=1,MOUSE_RELEASE=3,MULTIAUTOC_EACH=1,MULTIAUTOC_ONCE=0,MULTILINEUNDOREDO=0x1000,MULTIPASTE_EACH=1,MULTIPASTE_ONCE=0,MULTISTEPUNDOREDO=0x80,ORDER_CUSTOM=2,ORDER_PERFORMSORT=1,ORDER_PRESORTED=0,PERFORMED_REDO=0x40,PERFORMED_UNDO=0x20,PERFORMED_USER=0x10,SEL_LINES=2,SEL_RECTANGLE=1,SEL_STREAM=0,SEL_THIN=3,STARTACTION=0x2000,STYLE_BRACEBAD=36,STYLE_BRACELIGHT=35,STYLE_CALLTIP=39,STYLE_CONTROLCHAR=37,STYLE_DEFAULT=33,STYLE_FOLDDISPLAYTEXT=40,STYLE_INDENTGUIDE=38,STYLE_LASTPREDEFINED=40,STYLE_LINENUMBER=34,STYLE_MAX=256,TD_LONGARROW=0,TD_STRIKEOUT=1,TIME_FOREVER=10000000,UNDO_NONE=0,UPDATE_CONTENT=0x1,UPDATE_H_SCROLL=0x8,UPDATE_SELECTION=0x2,UPDATE_V_SCROLL=0x4,VISIBLE_SLOP=0x01,VISIBLE_STRICT=0x04,VS_NONE=0,VS_NOWRAPLINESTART=4,VS_RECTANGULARSELECTION=1,VS_USERACCESSIBLE=2,WRAPINDENT_DEEPINDENT=3,WRAPINDENT_FIXED=0,WRAPINDENT_INDENT=2,WRAPINDENT_SAME=1,WRAPVISUALFLAGLOC_DEFAULT=0x0000,WRAPVISUALFLAGLOC_END_BY_TEXT=0x0001,WRAPVISUALFLAGLOC_START_BY_TEXT=0x0002,WRAPVISUALFLAG_END=0x0001,WRAPVISUALFLAG_MARGIN=0x0004,WRAPVISUALFLAG_NONE=0x0000,WRAPVISUALFLAG_START=0x0002,WRAP_CHAR=2,WRAP_NONE=0,WRAP_WHITESPACE=3,WRAP_WORD=1,WS_INVISIBLE=0,WS_VISIBLEAFTERINDENT=2,WS_VISIBLEALWAYS=1,WS_VISIBLEONLYININDENT=3}

---
-- Map of Scintilla function names to tables containing their IDs, return types,
-- wParam types, and lParam types. Types are as follows:
--
--   + `0`: Void.
--   + `1`: Integer.
--   + `2`: Length of the given lParam string.
--   + `3`: Integer position.
--   + `4`: Color, in "0xBBGGRR" format.
--   + `5`: Boolean `true` or `false`.
--   + `6`: Bitmask of Scintilla key modifiers and a key value.
--   + `7`: String parameter.
--   + `8`: String return value.
-- @class table
-- @name functions
M.functions = {add_ref_document={2376,0,0,1},add_selection={2573,0,3,3},add_styled_text={2002,0,2,9},add_tab_stop={2676,0,3,1},add_text={2001,0,2,7},add_undo_action={2560,0,1,1},allocate={2446,0,3,0},allocate_extended_styles={2553,1,1,0},allocate_sub_styles={4020,1,1,1},annotation_clear_all={2547,0,0,0},append_text={2282,0,2,7},assign_cmd_key={2070,0,6,1},auto_c_active={2102,5,0,0},auto_c_cancel={2101,0,0,0},auto_c_complete={2104,0,0,0},auto_c_pos_start={2103,3,0,0},auto_c_select={2108,0,0,7},auto_c_show={2100,0,1,7},auto_c_stops={2105,0,0,7},back_tab={2328,0,0,0},begin_undo_action={2078,0,0,0},brace_bad_light={2352,0,3,0},brace_bad_light_indicator={2499,0,5,3},brace_highlight={2351,0,3,3},brace_highlight_indicator={2498,0,5,3},brace_match={2353,3,3,1},call_tip_active={2202,5,0,0},call_tip_cancel={2201,0,0,0},call_tip_pos_start={2203,3,0,0},call_tip_set_hlt={2204,0,3,3},call_tip_show={2200,0,3,7},can_paste={2173,5,0,0},can_redo={2016,5,0,0},can_undo={2174,5,0,0},cancel={2325,0,0,0},change_insertion={2672,0,2,7},change_lexer_state={2617,1,3,3},char_left={2304,0,0,0},char_left_extend={2305,0,0,0},char_left_rect_extend={2428,0,0,0},char_position_from_point={2561,3,1,1},char_position_from_point_close={2562,3,1,1},char_right={2306,0,0,0},char_right_extend={2307,0,0,0},char_right_rect_extend={2429,0,0,0},choose_caret_x={2399,0,0,0},clear={2180,0,0,0},clear_all={2004,0,0,0},clear_all_cmd_keys={2072,0,0,0},clear_cmd_key={2071,0,6,0},clear_document_style={2005,0,0,0},clear_registered_images={2408,0,0,0},clear_representation={2667,0,7,0},clear_selections={2571,0,0,0},clear_tab_stops={2675,0,3,0},colourise={4003,0,3,3},contracted_fold_next={2618,3,3,0},convert_eols={2029,0,1,0},copy={2178,0,0,0},copy_allow_line={2519,0,0,0},copy_range={2419,0,3,3},copy_text={2420,0,2,7},count_characters={2633,1,3,3},count_code_units={2715,1,3,3},create_document={2375,1,3,1},create_loader={2632,1,3,1},cut={2177,0,0,0},del_line_left={2395,0,0,0},del_line_right={2396,0,0,0},del_word_left={2335,0,0,0},del_word_right={2336,0,0,0},del_word_right_end={2518,0,0,0},delete_back={2326,0,0,0},delete_back_not_line={2344,0,0,0},delete_range={2645,0,3,2},describe_key_word_sets={4017,0,0,8},describe_property={4016,0,7,8},description_of_style={4032,0,3,8},doc_line_from_visible={2221,3,3,0},document_end={2318,0,0,0},document_end_extend={2319,0,0,0},document_start={2316,0,0,0},document_start_extend={2317,0,0,0},drop_selection_n={2671,0,3,0},edit_toggle_overtype={2324,0,0,0},empty_undo_buffer={2175,0,0,0},encoded_from_utf8={2449,0,7,8},end_undo_action={2079,0,0,0},ensure_visible={2232,0,3,0},ensure_visible_enforce_policy={2234,0,3,0},expand_children={2239,0,3,1},find_column={2456,3,3,3},find_indicator_flash={2641,0,3,3},find_indicator_hide={2642,0,0,0},find_indicator_show={2640,0,3,3},find_text={2150,3,1,11},fold_all={2662,0,1,0},fold_children={2238,0,3,1},fold_line={2237,0,3,1},form_feed={2330,0,0,0},format_range={2151,3,5,12},free_sub_styles={4023,0,0,0},get_cur_line={2027,3,2,8},get_default_fold_display_text={2723,0,0,8},get_hotspot_active_back={2495,4,0,0},get_hotspot_active_fore={2494,4,0,0},get_line={2153,0,3,8},get_line_sel_end_position={2425,3,3,0},get_line_sel_start_position={2424,3,3,0},get_next_tab_stop={2677,1,3,1},get_sel_text={2161,0,0,8},get_styled_text={2015,3,0,10},get_text={2182,0,2,8},get_text_range={2162,3,0,10},goto_line={2024,0,3,0},goto_pos={2025,0,3,0},grab_focus={2400,0,0,0},hide_lines={2227,0,3,3},hide_selection={2163,0,5,0},home={2312,0,0,0},home_display={2345,0,0,0},home_display_extend={2346,0,0,0},home_extend={2313,0,0,0},home_rect_extend={2430,0,0,0},home_wrap={2349,0,0,0},home_wrap_extend={2450,0,0,0},indicator_all_on_for={2506,1,3,0},indicator_clear_range={2505,0,3,2},indicator_end={2509,3,3,3},indicator_fill_range={2504,0,3,2},indicator_start={2508,3,3,3},indicator_value_at={2507,1,3,3},insert_text={2003,0,3,7},is_range_word={2691,5,3,3},line_copy={2455,0,0,0},line_cut={2337,0,0,0},line_delete={2338,0,0,0},line_down={2300,0,0,0},line_down_extend={2301,0,0,0},line_down_rect_extend={2426,0,0,0},line_duplicate={2404,0,0,0},line_end={2314,0,0,0},line_end_display={2347,0,0,0},line_end_display_extend={2348,0,0,0},line_end_extend={2315,0,0,0},line_end_rect_extend={2432,0,0,0},line_end_wrap={2451,0,0,0},line_end_wrap_extend={2452,0,0,0},line_from_position={2166,3,3,0},line_length={2350,1,3,0},line_reverse={2354,0,0,0},line_scroll={2168,0,1,1},line_scroll_down={2342,0,0,0},line_scroll_up={2343,0,0,0},line_transpose={2339,0,0,0},line_up={2302,0,0,0},line_up_extend={2303,0,0,0},line_up_rect_extend={2427,0,0,0},lines_join={2288,0,0,0},lines_split={2289,0,1,0},load_lexer_library={4007,0,0,7},lower_case={2340,0,0,0},margin_text_clear_all={2536,0,0,0},marker_add={2043,1,3,3},marker_add_set={2466,0,3,1},marker_define={2040,0,3,1},marker_define_pixmap={2049,0,3,7},marker_define_rgba_image={2626,0,3,7},marker_delete={2044,0,3,3},marker_delete_all={2045,0,3,0},marker_delete_handle={2018,0,1,0},marker_enable_highlight={2293,0,5,0},marker_get={2046,1,3,0},marker_line_from_handle={2017,3,1,0},marker_next={2047,3,3,1},marker_previous={2048,3,3,1},marker_symbol_defined={2529,1,3,0},move_caret_inside_view={2401,0,0,0},move_selected_lines_down={2621,0,0,0},move_selected_lines_up={2620,0,0,0},multi_edge_add_line={2694,0,1,4},multi_edge_clear_all={2695,0,0,0},multiple_select_add_each={2689,0,0,0},multiple_select_add_next={2688,0,0,0},name_of_style={4030,0,3,8},new_line={2329,0,0,0},null={2172,0,0,0},page_down={2322,0,0,0},page_down_extend={2323,0,0,0},page_down_rect_extend={2434,0,0,0},page_up={2320,0,0,0},page_up_extend={2321,0,0,0},page_up_rect_extend={2433,0,0,0},para_down={2413,0,0,0},para_down_extend={2414,0,0,0},para_up={2415,0,0,0},para_up_extend={2416,0,0,0},paste={2179,0,0,0},point_x_from_position={2164,1,0,3},point_y_from_position={2165,1,0,3},position_after={2418,3,3,0},position_before={2417,3,3,0},position_from_line={2167,3,3,0},position_from_point={2022,3,1,1},position_from_point_close={2023,3,1,1},position_relative={2670,3,3,1},position_relative_code_units={2716,3,3,3},private_lexer_call={4013,1,1,1},property_names={4014,0,0,8},property_type={4015,1,7,0},redo={2011,0,0,0},register_image={2405,0,1,7},register_rgba_image={2627,0,1,7},release_all_extended_styles={2552,0,0,0},release_document={2377,0,0,1},replace_sel={2170,0,0,7},replace_target={2194,1,2,7},replace_target_re={2195,1,2,7},rotate_selection={2606,0,0,0},scroll_caret={2169,0,0,0},scroll_range={2569,0,3,3},scroll_to_end={2629,0,0,0},scroll_to_start={2628,0,0,0},search_anchor={2366,0,0,0},search_in_target={2197,3,2,7},search_next={2367,3,1,7},search_prev={2368,3,1,7},select_all={2013,0,0,0},selection_duplicate={2469,0,0,0},set_chars_default={2444,0,0,0},set_default_fold_display_text={2722,0,0,7},set_empty_selection={2556,0,3,0},set_fold_margin_colour={2290,0,5,4},set_fold_margin_hi_colour={2291,0,5,4},set_hotspot_active_back={2411,0,5,4},set_hotspot_active_fore={2410,0,5,4},set_length_for_encode={2448,0,3,0},set_save_point={2014,0,0,0},set_sel={2160,0,3,3},set_sel_back={2068,0,5,4},set_sel_fore={2067,0,5,4},set_selection={2572,0,3,3},set_styling={2033,0,2,3},set_styling_ex={2073,0,2,7},set_target_range={2686,0,3,3},set_text={2181,0,0,7},set_visible_policy={2394,0,1,1},set_whitespace_back={2085,0,5,4},set_whitespace_fore={2084,0,5,4},set_x_caret_policy={2402,0,1,1},set_y_caret_policy={2403,0,1,1},show_lines={2226,0,3,3},start_record={3001,0,0,0},start_styling={2032,0,3,1},stop_record={3002,0,0,0},stuttered_page_down={2437,0,0,0},stuttered_page_down_extend={2438,0,0,0},stuttered_page_up={2435,0,0,0},stuttered_page_up_extend={2436,0,0,0},style_clear_all={2050,0,0,0},style_reset_default={2058,0,0,0},swap_main_anchor_caret={2607,0,0,0},tab={2327,0,0,0},tags_of_style={4031,0,3,8},target_as_utf8={2447,0,0,8},target_from_selection={2287,0,0,0},target_whole_document={2690,0,0,0},text_height={2279,1,3,0},text_width={2276,1,3,7},toggle_caret_sticky={2459,0,0,0},toggle_fold={2231,0,3,0},toggle_fold_show_text={2700,0,3,7},undo={2176,0,0,0},upper_case={2341,0,0,0},use_pop_up={2371,0,1,0},user_list_show={2117,0,1,7},vc_home={2331,0,0,0},vc_home_display={2652,0,0,0},vc_home_display_extend={2653,0,0,0},vc_home_extend={2332,0,0,0},vc_home_rect_extend={2431,0,0,0},vc_home_wrap={2453,0,0,0},vc_home_wrap_extend={2454,0,0,0},vertical_centre_caret={2619,0,0,0},visible_from_doc_line={2220,3,3,0},word_end_position={2267,3,3,5},word_left={2308,0,0,0},word_left_end={2439,0,0,0},word_left_end_extend={2440,0,0,0},word_left_extend={2309,0,0,0},word_part_left={2390,0,0,0},word_part_left_extend={2391,0,0,0},word_part_right={2392,0,0,0},word_part_right_extend={2393,0,0,0},word_right={2310,0,0,0},word_right_end={2441,0,0,0},word_right_end_extend={2442,0,0,0},word_right_extend={2311,0,0,0},word_start_position={2266,3,3,5},wrap_count={2235,1,3,0},zoom_in={2333,0,0,0},zoom_out={2334,0,0,0},}

---
-- Map of Scintilla property names to table values containing their "get"
-- function IDs, "set" function IDs, return types, and wParam types.
-- The wParam type will be non-zero if the property is indexable.
-- Types are the same as in the `functions` table.
-- @see functions
-- @class table
-- @name properties
M.properties = {accessibility={2703,2702,1,0},additional_caret_fore={2605,2604,4,0},additional_carets_blink={2568,2567,5,0},additional_carets_visible={2609,2608,5,0},additional_sel_alpha={2603,2602,1,0},additional_sel_back={0,2601,4,0},additional_sel_fore={0,2600,4,0},additional_selection_typing={2566,2565,5,0},all_lines_visible={2236,0,5,0},anchor={2009,2026,3,0},annotation_lines={2546,0,1,3},annotation_style={2543,2542,3,3},annotation_style_offset={2551,2550,3,0},annotation_styles={2545,2544,8,3},annotation_text={2541,2540,8,3},annotation_visible={2549,2548,1,0},auto_c_auto_hide={2119,2118,5,0},auto_c_cancel_at_start={2111,2110,5,0},auto_c_case_insensitive_behaviour={2635,2634,1,0},auto_c_choose_single={2114,2113,5,0},auto_c_current={2445,0,3,0},auto_c_current_text={2610,0,8,0},auto_c_drop_rest_of_word={2271,2270,5,0},auto_c_fill_ups={0,2112,7,0},auto_c_ignore_case={2116,2115,5,0},auto_c_max_height={2211,2210,1,0},auto_c_max_width={2209,2208,1,0},auto_c_multi={2637,2636,1,0},auto_c_order={2661,2660,1,0},auto_c_separator={2107,2106,1,0},auto_c_type_separator={2285,2286,1,0},automatic_fold={2664,2663,1,0},back_space_un_indents={2263,2262,5,0},buffered_draw={2034,2035,5,0},call_tip_back={0,2205,4,0},call_tip_fore={0,2206,4,0},call_tip_fore_hlt={0,2207,4,0},call_tip_pos_start={0,2214,3,0},call_tip_position={0,2213,5,0},call_tip_use_style={0,2212,1,0},caret_fore={2138,2069,4,0},caret_line_back={2097,2098,4,0},caret_line_back_alpha={2471,2470,1,0},caret_line_frame={2704,2705,1,0},caret_line_visible={2095,2096,5,0},caret_line_visible_always={2654,2655,5,0},caret_period={2075,2076,1,0},caret_sticky={2457,2458,1,0},caret_style={2513,2512,1,0},caret_width={2189,2188,1,0},char_at={2007,0,1,3},character_category_optimization={2721,2720,1,0},character_pointer={2520,0,1,0},code_page={2137,2037,1,0},column={2129,0,3,3},command_events={2718,2717,5,0},control_char_symbol={2389,2388,1,0},current_pos={2008,2141,3,0},cursor={2387,2386,1,0},direct_function={2184,0,1,0},direct_pointer={2185,0,1,0},distance_to_secondary_styles={4025,0,1,0},doc_pointer={2357,2358,1,0},document_options={2379,0,1,0},edge_colour={2364,2365,4,0},edge_column={2360,2361,1,0},edge_mode={2362,2363,1,0},end_at_last_line={2278,2277,5,0},end_styled={2028,0,3,0},eol_mode={2030,2031,1,0},extra_ascent={2526,2525,1,0},extra_descent={2528,2527,1,0},first_visible_line={2152,2613,3,0},focus={2381,2380,5,0},fold_display_text_style={2707,2701,1,0},fold_expanded={2230,2229,5,3},fold_flags={0,2233,1,0},fold_level={2223,2222,1,3},fold_parent={2225,0,3,3},font_quality={2612,2611,1,0},gap_position={2644,0,3,0},h_scroll_bar={2131,2130,5,0},highlight_guide={2135,2134,3,0},hotspot_active_underline={2496,2412,5,0},hotspot_single_line={2497,2421,5,0},identifier={2623,2622,1,0},identifiers={0,4024,7,3},idle_styling={2693,2692,1,0},ime_interaction={2678,2679,1,0},indent={2123,2122,1,0},indentation_guides={2133,2132,1,0},indic_alpha={2524,2523,1,3},indic_flags={2685,2684,1,3},indic_fore={2083,2082,4,3},indic_hover_fore={2683,2682,4,3},indic_hover_style={2681,2680,1,3},indic_outline_alpha={2559,2558,1,3},indic_style={2081,2080,1,3},indic_under={2511,2510,5,3},indicator_current={2501,2500,3,0},indicator_value={2503,2502,1,0},key_words={0,4005,7,1},last_child={2224,0,3,3},layout_cache={2273,2272,1,0},length={2006,0,1,0},lexer={4002,4001,1,0},lexer_language={4012,4006,8,0},line_count={2154,0,1,0},line_end_position={2136,0,3,3},line_end_types_active={2658,0,1,0},line_end_types_allowed={2657,2656,1,0},line_end_types_supported={4018,0,1,0},line_indent_position={2128,0,3,3},line_indentation={2127,2126,1,3},line_state={2093,2092,1,3},line_visible={2228,0,5,3},lines_on_screen={2370,0,1,0},main_selection={2575,2574,3,0},margin_back_n={2251,2250,4,3},margin_cursor_n={2249,2248,1,3},margin_left={2156,2155,1,0},margin_mask_n={2245,2244,1,3},margin_options={2557,2539,1,0},margin_right={2158,2157,1,0},margin_sensitive_n={2247,2246,5,3},margin_style={2533,2532,3,3},margin_style_offset={2538,2537,3,0},margin_styles={2535,2534,8,3},margin_text={2531,2530,8,3},margin_type_n={2241,2240,1,3},margin_width_n={2243,2242,1,3},margins={2253,2252,1,0},marker_alpha={0,2476,1,3},marker_back={0,2042,4,3},marker_back_selected={0,2292,4,3},marker_fore={0,2041,4,3},max_line_state={2094,0,1,0},mod_event_mask={2378,2359,1,0},modify={2159,0,5,0},mouse_down_captures={2385,2384,5,0},mouse_dwell_time={2265,2264,1,0},mouse_selection_rectangular_switch={2669,2668,5,0},mouse_wheel_captures={2697,2696,5,0},move_extends_selection={2706,0,5,0},multi_paste={2615,2614,1,0},multiple_selection={2564,2563,5,0},named_styles={4029,0,1,0},overtype={2187,2186,5,0},paste_convert_endings={2468,2467,5,0},phases_draw={2673,2674,1,0},position_cache={2515,2514,1,0},primary_style_from_style={4028,0,1,3},print_colour_mode={2149,2148,1,0},print_magnification={2147,2146,1,0},print_wrap_mode={2407,2406,1,0},property={4008,4004,8,7},property_expanded={4009,0,8,7},property_int={4010,0,1,7},punctuation_chars={2649,2648,8,0},range_pointer={2643,0,1,3},read_only={2140,2171,5,0},rectangular_selection_anchor={2591,2590,3,0},rectangular_selection_anchor_virtual_space={2595,2594,3,0},rectangular_selection_caret={2589,2588,3,0},rectangular_selection_caret_virtual_space={2593,2592,3,0},rectangular_selection_modifier={2599,2598,1,0},representation={2666,2665,8,7},rgba_image_height={0,2625,1,0},rgba_image_scale={0,2651,1,0},rgba_image_width={0,2624,1,0},scroll_width={2275,2274,1,0},scroll_width_tracking={2517,2516,5,0},search_flags={2199,2198,1,0},sel_alpha={2477,2478,1,0},sel_eol_filled={2479,2480,5,0},selection_empty={2650,0,5,0},selection_end={2145,2144,3,0},selection_is_rectangle={2372,0,5,0},selection_mode={2423,2422,1,0},selection_n_anchor={2579,2578,3,3},selection_n_anchor_virtual_space={2583,2582,3,3},selection_n_caret={2577,2576,3,3},selection_n_caret_virtual_space={2581,2580,3,3},selection_n_end={2587,2586,3,3},selection_n_end_virtual_space={2727,0,3,3},selection_n_start={2585,2584,3,3},selection_n_start_virtual_space={2726,0,3,3},selection_start={2143,2142,3,0},selections={2570,0,1,0},status={2383,2382,1,0},style_at={2010,0,3,3},style_back={2482,2052,4,3},style_bold={2483,2053,5,3},style_case={2489,2060,1,3},style_changeable={2492,2099,5,3},style_character_set={2490,2066,1,3},style_eol_filled={2487,2057,5,3},style_font={2486,2056,8,3},style_fore={2481,2051,4,3},style_from_sub_style={4027,0,1,1},style_hot_spot={2493,2409,5,3},style_italic={2484,2054,5,3},style_size={2485,2055,1,3},style_size_fractional={2062,2061,1,3},style_underline={2488,2059,5,3},style_visible={2491,2074,5,3},style_weight={2064,2063,1,3},sub_style_bases={4026,0,8,0},sub_styles_length={4022,0,1,1},sub_styles_start={4021,0,1,1},tab_draw_mode={2698,2699,1,0},tab_indents={2261,2260,5,0},tab_minimum_width={2725,2724,1,0},tab_width={2121,2036,1,0},tag={2616,0,8,1},target_end={2193,2192,3,0},target_end_virtual_space={2731,2730,3,0},target_start={2191,2190,3,0},target_start_virtual_space={2729,2728,3,0},target_text={2687,0,8,0},technology={2631,2630,1,0},text_length={2183,0,1,0},two_phase_draw={2283,2284,5,0},undo_collection={2019,2012,5,0},use_tabs={2125,2124,5,0},v_scroll_bar={2281,2280,5,0},view_eol={2355,2356,5,0},view_ws={2020,2021,1,0},virtual_space_options={2597,2596,1,0},whitespace_chars={2647,2443,8,0},whitespace_size={2087,2086,1,0},word_chars={2646,2077,8,0},wrap_indent_mode={2473,2472,1,0},wrap_mode={2269,2268,1,0},wrap_start_indent={2465,2464,1,0},wrap_visual_flags={2461,2460,1,0},wrap_visual_flags_location={2463,2462,1,0},x_offset={2398,2397,1,0},zoom={2374,2373,1,0},}

---
-- Map of Scintilla event IDs to tables of event names and event parameters.
-- @class table
-- @name events
M.events = {[2000]={"style_needed","position"},[2001]={"char_added","ch","character_source"},[2002]={"save_point_reached"},[2003]={"save_point_left"},[2004]={"modify_attempt_ro"},[2005]={"key","ch","modifiers"},[2006]={"double_click","position","line","modifiers"},[2007]={"update_ui","updated"},[2008]={"modified","position","modification_type","text","length","lines_added","line","fold_level_now","fold_level_prev","token","annotation_lines_added"},[2009]={"macro_record","message","w_param","l_param"},[2010]={"margin_click","margin","position","modifiers"},[2011]={"need_shown","position","length"},[2013]={"painted"},[2014]={"user_list_selection","list_type","text","position","ch","list_completion_method"},[2015]={"uri_dropped","text"},[2016]={"dwell_start","position","x","y"},[2017]={"dwell_end","position","x","y"},[2018]={"zoom"},[2019]={"hot_spot_click","position","modifiers"},[2020]={"hot_spot_double_click","position","modifiers"},[2021]={"call_tip_click","position"},[2022]={"auto_c_selection","text","position","ch","list_completion_method"},[2023]={"indicator_click","position","modifiers"},[2024]={"indicator_release","position","modifiers"},[2025]={"auto_c_cancelled"},[2026]={"auto_c_char_deleted"},[2027]={"hot_spot_release_click","position","modifiers"},[2028]={"focus_in"},[2029]={"focus_out"},[2030]={"auto_c_completed","text","position","ch","list_completion_method"},[2031]={"margin_right_click","margin","position","modifiers"},[2032]={"auto_c_selection_change","list_type","text","position"},}

local marker_number, indic_number, list_type, image_type = 0, 0, 0, 0

---
-- Returns a unique marker number for use with `buffer.marker_define()`.
-- Use this function for custom markers in order to prevent clashes with
-- identifiers of other custom markers.
-- @usage local marknum = _SCINTILLA.next_marker_number()
-- @see buffer.marker_define
-- @name next_marker_number
function M.next_marker_number()
  assert(marker_number < M.constants.MARKER_MAX, 'too many markers in use')
  marker_number = marker_number + 1
  return marker_number
end

---
-- Returns a unique indicator number for use with custom indicators.
-- Use this function for custom indicators in order to prevent clashes with
-- identifiers of other custom indicators.
-- @usage local indic_num = _SCINTILLA.next_indic_number()
-- @see buffer.indic_style
-- @name next_indic_number
function M.next_indic_number()
  assert(indic_number < M.constants.INDICATOR_MAX, 'too many indicators in use')
  indic_number = indic_number + 1
  return indic_number
end

---
-- Returns a unique user list identier number for use with
-- `buffer.user_list_show()`.
-- Use this function for custom user lists in order to prevent clashes with
-- list identifiers of other custom user lists.
-- @usage local list_type = _SCINTILLA.next_user_list_type()
-- @see buffer.user_list_show
-- @name next_user_list_type
function M.next_user_list_type()
  list_type = list_type + 1
  return list_type
end

---
-- Returns a unique image type identier number for use with
-- `buffer.register_image()` and `buffer.register_rgba_image()`.
-- Use this function for custom image types in order to prevent clashes with
-- identifiers of other custom image types.
-- @usage local image_type = _SCINTILLA.next_image_type()
-- @see buffer.register_image
-- @see buffer.register_rgba_image
-- @name next_image_type
function M.next_image_type()
  image_type = image_type + 1
  return image_type
end

return M

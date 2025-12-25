.class public final Lpubgm/loader/databinding/EspAimbotBinding;
.super Ljava/lang/Object;
.source "EspAimbotBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final Recoil:Landroid/widget/SeekBar;

.field public final Recoil2:Landroid/widget/SeekBar;

.field public final Recoils2:Landroid/widget/SeekBar;

.field public final Smoothness:Landroid/widget/SeekBar;

.field public final aimbot:Landroid/widget/RadioButton;

.field public final aimbotmode:Landroid/widget/RadioGroup;

.field public final aimby:Landroid/widget/RadioGroup;

.field public final aimignorebot:Landroid/widget/Switch;

.field public final aimingspeed:Landroid/widget/SeekBar;

.field public final aimingspeedtext:Landroid/widget/TextView;

.field public final aimknocked:Landroid/widget/Switch;

.field public final aimpre:Landroid/widget/TextView;

.field public final aimsec:Landroid/widget/LinearLayout;

.field public final aimspeedmenu:Landroid/widget/LinearLayout;

.field public final aimwhen:Landroid/widget/RadioGroup;

.field public final bulletspeed:Landroid/widget/SeekBar;

.field public final bulletspeedtext:Landroid/widget/TextView;

.field public final bullettrack:Landroid/widget/RadioButton;

.field public final disableaim:Landroid/widget/RadioButton;

.field public final distances:Landroid/widget/SeekBar;

.field public final distancetext:Landroid/widget/TextView;

.field public final grupaim:Landroid/widget/RadioGroup;

.field public final posXmenu:Landroid/widget/LinearLayout;

.field public final posYmenu:Landroid/widget/LinearLayout;

.field public final range:Landroid/widget/SeekBar;

.field public final rangetext:Landroid/widget/TextView;

.field public final recoilmenu:Landroid/widget/LinearLayout;

.field public final recoilmenus2:Landroid/widget/LinearLayout;

.field public final recoiltext:Landroid/widget/TextView;

.field public final recoiltext2:Landroid/widget/TextView;

.field public final recoiltexts2:Landroid/widget/TextView;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final rotationmenu:Landroid/widget/LinearLayout;

.field public final rotationscren:Landroid/widget/Switch;

.field public final smoothnessmenu:Landroid/widget/LinearLayout;

.field public final smoothtext:Landroid/widget/TextView;

.field public final texttouch:Landroid/widget/TextView;

.field public final touchPosX:Landroid/widget/SeekBar;

.field public final touchPosXtext:Landroid/widget/TextView;

.field public final touchPosY:Landroid/widget/SeekBar;

.field public final touchPosYtext:Landroid/widget/TextView;

.field public final touchlocation:Landroid/widget/Switch;

.field public final touchlocationmenu:Landroid/widget/LinearLayout;

.field public final touchsimulation:Landroid/widget/RadioButton;

.field public final touchsize:Landroid/widget/SeekBar;

.field public final touchsizemenu:Landroid/widget/LinearLayout;

.field public final touchsizetext:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/widget/Switch;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RadioGroup;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/Switch;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/Switch;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/SeekBar;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V
    .locals 16
    .param p1, "rootView"    # Landroid/widget/RelativeLayout;
    .param p2, "Recoil"    # Landroid/widget/SeekBar;
    .param p3, "Recoil2"    # Landroid/widget/SeekBar;
    .param p4, "Recoils2"    # Landroid/widget/SeekBar;
    .param p5, "Smoothness"    # Landroid/widget/SeekBar;
    .param p6, "aimbot"    # Landroid/widget/RadioButton;
    .param p7, "aimbotmode"    # Landroid/widget/RadioGroup;
    .param p8, "aimby"    # Landroid/widget/RadioGroup;
    .param p9, "aimignorebot"    # Landroid/widget/Switch;
    .param p10, "aimingspeed"    # Landroid/widget/SeekBar;
    .param p11, "aimingspeedtext"    # Landroid/widget/TextView;
    .param p12, "aimknocked"    # Landroid/widget/Switch;
    .param p13, "aimpre"    # Landroid/widget/TextView;
    .param p14, "aimsec"    # Landroid/widget/LinearLayout;
    .param p15, "aimspeedmenu"    # Landroid/widget/LinearLayout;
    .param p16, "aimwhen"    # Landroid/widget/RadioGroup;
    .param p17, "bulletspeed"    # Landroid/widget/SeekBar;
    .param p18, "bulletspeedtext"    # Landroid/widget/TextView;
    .param p19, "bullettrack"    # Landroid/widget/RadioButton;
    .param p20, "disableaim"    # Landroid/widget/RadioButton;
    .param p21, "distances"    # Landroid/widget/SeekBar;
    .param p22, "distancetext"    # Landroid/widget/TextView;
    .param p23, "grupaim"    # Landroid/widget/RadioGroup;
    .param p24, "posXmenu"    # Landroid/widget/LinearLayout;
    .param p25, "posYmenu"    # Landroid/widget/LinearLayout;
    .param p26, "range"    # Landroid/widget/SeekBar;
    .param p27, "rangetext"    # Landroid/widget/TextView;
    .param p28, "recoilmenu"    # Landroid/widget/LinearLayout;
    .param p29, "recoilmenus2"    # Landroid/widget/LinearLayout;
    .param p30, "recoiltext"    # Landroid/widget/TextView;
    .param p31, "recoiltext2"    # Landroid/widget/TextView;
    .param p32, "recoiltexts2"    # Landroid/widget/TextView;
    .param p33, "rotationmenu"    # Landroid/widget/LinearLayout;
    .param p34, "rotationscren"    # Landroid/widget/Switch;
    .param p35, "smoothnessmenu"    # Landroid/widget/LinearLayout;
    .param p36, "smoothtext"    # Landroid/widget/TextView;
    .param p37, "texttouch"    # Landroid/widget/TextView;
    .param p38, "touchPosX"    # Landroid/widget/SeekBar;
    .param p39, "touchPosXtext"    # Landroid/widget/TextView;
    .param p40, "touchPosY"    # Landroid/widget/SeekBar;
    .param p41, "touchPosYtext"    # Landroid/widget/TextView;
    .param p42, "touchlocation"    # Landroid/widget/Switch;
    .param p43, "touchlocationmenu"    # Landroid/widget/LinearLayout;
    .param p44, "touchsimulation"    # Landroid/widget/RadioButton;
    .param p45, "touchsize"    # Landroid/widget/SeekBar;
    .param p46, "touchsizemenu"    # Landroid/widget/LinearLayout;
    .param p47, "touchsizetext"    # Landroid/widget/TextView;

    .line 183
    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 184
    move-object/from16 v1, p1

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->rootView:Landroid/widget/RelativeLayout;

    .line 185
    move-object/from16 v2, p2

    iput-object v2, v0, Lpubgm/loader/databinding/EspAimbotBinding;->Recoil:Landroid/widget/SeekBar;

    .line 186
    move-object/from16 v3, p3

    iput-object v3, v0, Lpubgm/loader/databinding/EspAimbotBinding;->Recoil2:Landroid/widget/SeekBar;

    .line 187
    move-object/from16 v4, p4

    iput-object v4, v0, Lpubgm/loader/databinding/EspAimbotBinding;->Recoils2:Landroid/widget/SeekBar;

    .line 188
    move-object/from16 v5, p5

    iput-object v5, v0, Lpubgm/loader/databinding/EspAimbotBinding;->Smoothness:Landroid/widget/SeekBar;

    .line 189
    move-object/from16 v6, p6

    iput-object v6, v0, Lpubgm/loader/databinding/EspAimbotBinding;->aimbot:Landroid/widget/RadioButton;

    .line 190
    move-object/from16 v7, p7

    iput-object v7, v0, Lpubgm/loader/databinding/EspAimbotBinding;->aimbotmode:Landroid/widget/RadioGroup;

    .line 191
    move-object/from16 v8, p8

    iput-object v8, v0, Lpubgm/loader/databinding/EspAimbotBinding;->aimby:Landroid/widget/RadioGroup;

    .line 192
    move-object/from16 v9, p9

    iput-object v9, v0, Lpubgm/loader/databinding/EspAimbotBinding;->aimignorebot:Landroid/widget/Switch;

    .line 193
    move-object/from16 v10, p10

    iput-object v10, v0, Lpubgm/loader/databinding/EspAimbotBinding;->aimingspeed:Landroid/widget/SeekBar;

    .line 194
    move-object/from16 v11, p11

    iput-object v11, v0, Lpubgm/loader/databinding/EspAimbotBinding;->aimingspeedtext:Landroid/widget/TextView;

    .line 195
    move-object/from16 v12, p12

    iput-object v12, v0, Lpubgm/loader/databinding/EspAimbotBinding;->aimknocked:Landroid/widget/Switch;

    .line 196
    move-object/from16 v13, p13

    iput-object v13, v0, Lpubgm/loader/databinding/EspAimbotBinding;->aimpre:Landroid/widget/TextView;

    .line 197
    move-object/from16 v14, p14

    iput-object v14, v0, Lpubgm/loader/databinding/EspAimbotBinding;->aimsec:Landroid/widget/LinearLayout;

    .line 198
    move-object/from16 v15, p15

    iput-object v15, v0, Lpubgm/loader/databinding/EspAimbotBinding;->aimspeedmenu:Landroid/widget/LinearLayout;

    .line 199
    move-object/from16 v1, p16

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->aimwhen:Landroid/widget/RadioGroup;

    .line 200
    move-object/from16 v1, p17

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->bulletspeed:Landroid/widget/SeekBar;

    .line 201
    move-object/from16 v1, p18

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->bulletspeedtext:Landroid/widget/TextView;

    .line 202
    move-object/from16 v1, p19

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->bullettrack:Landroid/widget/RadioButton;

    .line 203
    move-object/from16 v1, p20

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->disableaim:Landroid/widget/RadioButton;

    .line 204
    move-object/from16 v1, p21

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->distances:Landroid/widget/SeekBar;

    .line 205
    move-object/from16 v1, p22

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->distancetext:Landroid/widget/TextView;

    .line 206
    move-object/from16 v1, p23

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->grupaim:Landroid/widget/RadioGroup;

    .line 207
    move-object/from16 v1, p24

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->posXmenu:Landroid/widget/LinearLayout;

    .line 208
    move-object/from16 v1, p25

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->posYmenu:Landroid/widget/LinearLayout;

    .line 209
    move-object/from16 v1, p26

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->range:Landroid/widget/SeekBar;

    .line 210
    move-object/from16 v1, p27

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->rangetext:Landroid/widget/TextView;

    .line 211
    move-object/from16 v1, p28

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->recoilmenu:Landroid/widget/LinearLayout;

    .line 212
    move-object/from16 v1, p29

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->recoilmenus2:Landroid/widget/LinearLayout;

    .line 213
    move-object/from16 v1, p30

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->recoiltext:Landroid/widget/TextView;

    .line 214
    move-object/from16 v1, p31

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->recoiltext2:Landroid/widget/TextView;

    .line 215
    move-object/from16 v1, p32

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->recoiltexts2:Landroid/widget/TextView;

    .line 216
    move-object/from16 v1, p33

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->rotationmenu:Landroid/widget/LinearLayout;

    .line 217
    move-object/from16 v1, p34

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->rotationscren:Landroid/widget/Switch;

    .line 218
    move-object/from16 v1, p35

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->smoothnessmenu:Landroid/widget/LinearLayout;

    .line 219
    move-object/from16 v1, p36

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->smoothtext:Landroid/widget/TextView;

    .line 220
    move-object/from16 v1, p37

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->texttouch:Landroid/widget/TextView;

    .line 221
    move-object/from16 v1, p38

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->touchPosX:Landroid/widget/SeekBar;

    .line 222
    move-object/from16 v1, p39

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->touchPosXtext:Landroid/widget/TextView;

    .line 223
    move-object/from16 v1, p40

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->touchPosY:Landroid/widget/SeekBar;

    .line 224
    move-object/from16 v1, p41

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->touchPosYtext:Landroid/widget/TextView;

    .line 225
    move-object/from16 v1, p42

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->touchlocation:Landroid/widget/Switch;

    .line 226
    move-object/from16 v1, p43

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->touchlocationmenu:Landroid/widget/LinearLayout;

    .line 227
    move-object/from16 v1, p44

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->touchsimulation:Landroid/widget/RadioButton;

    .line 228
    move-object/from16 v1, p45

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->touchsize:Landroid/widget/SeekBar;

    .line 229
    move-object/from16 v1, p46

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->touchsizemenu:Landroid/widget/LinearLayout;

    .line 230
    move-object/from16 v1, p47

    iput-object v1, v0, Lpubgm/loader/databinding/EspAimbotBinding;->touchsizetext:Landroid/widget/TextView;

    .line 231
    return-void
.end method

.method public static bind(Landroid/view/View;)Lpubgm/loader/databinding/EspAimbotBinding;
    .locals 97
    .param p0, "rootView"    # Landroid/view/View;

    .line 260
    move-object/from16 v0, p0

    const v1, 0x7f0a006b

    .line 261
    .local v1, "id":I
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    .line 262
    .local v2, "Recoil":Landroid/widget/SeekBar;
    if-eqz v2, :cond_2d

    .line 266
    const v1, 0x7f0a006c

    .line 267
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v51, v3

    check-cast v51, Landroid/widget/SeekBar;

    .line 268
    .local v51, "Recoil2":Landroid/widget/SeekBar;
    if-eqz v51, :cond_2c

    .line 272
    const v1, 0x7f0a006d

    .line 273
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v52, v3

    check-cast v52, Landroid/widget/SeekBar;

    .line 274
    .local v52, "Recoils2":Landroid/widget/SeekBar;
    if-eqz v52, :cond_2b

    .line 278
    const v1, 0x7f0a0080

    .line 279
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v53, v3

    check-cast v53, Landroid/widget/SeekBar;

    .line 280
    .local v53, "Smoothness":Landroid/widget/SeekBar;
    if-eqz v53, :cond_2a

    .line 284
    const v1, 0x7f0a00d6

    .line 285
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v54, v3

    check-cast v54, Landroid/widget/RadioButton;

    .line 286
    .local v54, "aimbot":Landroid/widget/RadioButton;
    if-eqz v54, :cond_29

    .line 290
    const v1, 0x7f0a00d7

    .line 291
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v55, v3

    check-cast v55, Landroid/widget/RadioGroup;

    .line 292
    .local v55, "aimbotmode":Landroid/widget/RadioGroup;
    if-eqz v55, :cond_28

    .line 296
    const v1, 0x7f0a00d8

    .line 297
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v56, v3

    check-cast v56, Landroid/widget/RadioGroup;

    .line 298
    .local v56, "aimby":Landroid/widget/RadioGroup;
    if-eqz v56, :cond_27

    .line 302
    const v1, 0x7f0a00d9

    .line 303
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v57, v3

    check-cast v57, Landroid/widget/Switch;

    .line 304
    .local v57, "aimignorebot":Landroid/widget/Switch;
    if-eqz v57, :cond_26

    .line 308
    const v1, 0x7f0a00da

    .line 309
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v58, v3

    check-cast v58, Landroid/widget/SeekBar;

    .line 310
    .local v58, "aimingspeed":Landroid/widget/SeekBar;
    if-eqz v58, :cond_25

    .line 314
    const v1, 0x7f0a00db

    .line 315
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v59, v3

    check-cast v59, Landroid/widget/TextView;

    .line 316
    .local v59, "aimingspeedtext":Landroid/widget/TextView;
    if-eqz v59, :cond_24

    .line 320
    const v1, 0x7f0a00dc

    .line 321
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v60, v3

    check-cast v60, Landroid/widget/Switch;

    .line 322
    .local v60, "aimknocked":Landroid/widget/Switch;
    if-eqz v60, :cond_23

    .line 326
    const v1, 0x7f0a00dd

    .line 327
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v61, v3

    check-cast v61, Landroid/widget/TextView;

    .line 328
    .local v61, "aimpre":Landroid/widget/TextView;
    if-eqz v61, :cond_22

    .line 332
    const v1, 0x7f0a00de

    .line 333
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v62, v3

    check-cast v62, Landroid/widget/LinearLayout;

    .line 334
    .local v62, "aimsec":Landroid/widget/LinearLayout;
    if-eqz v62, :cond_21

    .line 338
    const v1, 0x7f0a00df

    .line 339
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v63, v3

    check-cast v63, Landroid/widget/LinearLayout;

    .line 340
    .local v63, "aimspeedmenu":Landroid/widget/LinearLayout;
    if-eqz v63, :cond_20

    .line 344
    const v1, 0x7f0a00e0

    .line 345
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v64, v3

    check-cast v64, Landroid/widget/RadioGroup;

    .line 346
    .local v64, "aimwhen":Landroid/widget/RadioGroup;
    if-eqz v64, :cond_1f

    .line 350
    const v1, 0x7f0a0111

    .line 351
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v65, v3

    check-cast v65, Landroid/widget/SeekBar;

    .line 352
    .local v65, "bulletspeed":Landroid/widget/SeekBar;
    if-eqz v65, :cond_1e

    .line 356
    const v1, 0x7f0a0112

    .line 357
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v66, v3

    check-cast v66, Landroid/widget/TextView;

    .line 358
    .local v66, "bulletspeedtext":Landroid/widget/TextView;
    if-eqz v66, :cond_1d

    .line 362
    const v1, 0x7f0a0113

    .line 363
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v67, v3

    check-cast v67, Landroid/widget/RadioButton;

    .line 364
    .local v67, "bullettrack":Landroid/widget/RadioButton;
    if-eqz v67, :cond_1c

    .line 368
    const v1, 0x7f0a015f

    .line 369
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v68, v3

    check-cast v68, Landroid/widget/RadioButton;

    .line 370
    .local v68, "disableaim":Landroid/widget/RadioButton;
    if-eqz v68, :cond_1b

    .line 374
    const v1, 0x7f0a0161

    .line 375
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v69, v3

    check-cast v69, Landroid/widget/SeekBar;

    .line 376
    .local v69, "distances":Landroid/widget/SeekBar;
    if-eqz v69, :cond_1a

    .line 380
    const v1, 0x7f0a0162

    .line 381
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v70, v3

    check-cast v70, Landroid/widget/TextView;

    .line 382
    .local v70, "distancetext":Landroid/widget/TextView;
    if-eqz v70, :cond_19

    .line 386
    const v1, 0x7f0a01b5

    .line 387
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v71, v3

    check-cast v71, Landroid/widget/RadioGroup;

    .line 388
    .local v71, "grupaim":Landroid/widget/RadioGroup;
    if-eqz v71, :cond_18

    .line 392
    const v1, 0x7f0a02b2

    .line 393
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v72, v3

    check-cast v72, Landroid/widget/LinearLayout;

    .line 394
    .local v72, "posXmenu":Landroid/widget/LinearLayout;
    if-eqz v72, :cond_17

    .line 398
    const v1, 0x7f0a02b3

    .line 399
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v73, v3

    check-cast v73, Landroid/widget/LinearLayout;

    .line 400
    .local v73, "posYmenu":Landroid/widget/LinearLayout;
    if-eqz v73, :cond_16

    .line 404
    const v1, 0x7f0a02c8

    .line 405
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v74, v3

    check-cast v74, Landroid/widget/SeekBar;

    .line 406
    .local v74, "range":Landroid/widget/SeekBar;
    if-eqz v74, :cond_15

    .line 410
    const v1, 0x7f0a02c9

    .line 411
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v75, v3

    check-cast v75, Landroid/widget/TextView;

    .line 412
    .local v75, "rangetext":Landroid/widget/TextView;
    if-eqz v75, :cond_14

    .line 416
    const v1, 0x7f0a02cd

    .line 417
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v76, v3

    check-cast v76, Landroid/widget/LinearLayout;

    .line 418
    .local v76, "recoilmenu":Landroid/widget/LinearLayout;
    if-eqz v76, :cond_13

    .line 422
    const v1, 0x7f0a02ce

    .line 423
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v77, v3

    check-cast v77, Landroid/widget/LinearLayout;

    .line 424
    .local v77, "recoilmenus2":Landroid/widget/LinearLayout;
    if-eqz v77, :cond_12

    .line 428
    const v1, 0x7f0a02cf

    .line 429
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v78, v3

    check-cast v78, Landroid/widget/TextView;

    .line 430
    .local v78, "recoiltext":Landroid/widget/TextView;
    if-eqz v78, :cond_11

    .line 434
    const v1, 0x7f0a02d0

    .line 435
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v79, v3

    check-cast v79, Landroid/widget/TextView;

    .line 436
    .local v79, "recoiltext2":Landroid/widget/TextView;
    if-eqz v79, :cond_10

    .line 440
    const v1, 0x7f0a02d1

    .line 441
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v80, v3

    check-cast v80, Landroid/widget/TextView;

    .line 442
    .local v80, "recoiltexts2":Landroid/widget/TextView;
    if-eqz v80, :cond_f

    .line 446
    const v1, 0x7f0a02e7

    .line 447
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v81, v3

    check-cast v81, Landroid/widget/LinearLayout;

    .line 448
    .local v81, "rotationmenu":Landroid/widget/LinearLayout;
    if-eqz v81, :cond_e

    .line 452
    const v1, 0x7f0a02e8

    .line 453
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v82, v3

    check-cast v82, Landroid/widget/Switch;

    .line 454
    .local v82, "rotationscren":Landroid/widget/Switch;
    if-eqz v82, :cond_d

    .line 458
    const v1, 0x7f0a0328

    .line 459
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v83, v3

    check-cast v83, Landroid/widget/LinearLayout;

    .line 460
    .local v83, "smoothnessmenu":Landroid/widget/LinearLayout;
    if-eqz v83, :cond_c

    .line 464
    const v1, 0x7f0a0329

    .line 465
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v84, v3

    check-cast v84, Landroid/widget/TextView;

    .line 466
    .local v84, "smoothtext":Landroid/widget/TextView;
    if-eqz v84, :cond_b

    .line 470
    const v1, 0x7f0a038a

    .line 471
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v85, v3

    check-cast v85, Landroid/widget/TextView;

    .line 472
    .local v85, "texttouch":Landroid/widget/TextView;
    if-eqz v85, :cond_a

    .line 476
    const v1, 0x7f0a0399

    .line 477
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v86, v3

    check-cast v86, Landroid/widget/SeekBar;

    .line 478
    .local v86, "touchPosX":Landroid/widget/SeekBar;
    if-eqz v86, :cond_9

    .line 482
    const v1, 0x7f0a039a

    .line 483
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v87, v3

    check-cast v87, Landroid/widget/TextView;

    .line 484
    .local v87, "touchPosXtext":Landroid/widget/TextView;
    if-eqz v87, :cond_8

    .line 488
    const v1, 0x7f0a039b

    .line 489
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v88, v3

    check-cast v88, Landroid/widget/SeekBar;

    .line 490
    .local v88, "touchPosY":Landroid/widget/SeekBar;
    if-eqz v88, :cond_7

    .line 494
    const v1, 0x7f0a039c

    .line 495
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v89, v3

    check-cast v89, Landroid/widget/TextView;

    .line 496
    .local v89, "touchPosYtext":Landroid/widget/TextView;
    if-eqz v89, :cond_6

    .line 500
    const v1, 0x7f0a039e

    .line 501
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v90, v3

    check-cast v90, Landroid/widget/Switch;

    .line 502
    .local v90, "touchlocation":Landroid/widget/Switch;
    if-eqz v90, :cond_5

    .line 506
    const v1, 0x7f0a039f

    .line 507
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v91, v3

    check-cast v91, Landroid/widget/LinearLayout;

    .line 508
    .local v91, "touchlocationmenu":Landroid/widget/LinearLayout;
    if-eqz v91, :cond_4

    .line 512
    const v1, 0x7f0a03a0

    .line 513
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v92, v3

    check-cast v92, Landroid/widget/RadioButton;

    .line 514
    .local v92, "touchsimulation":Landroid/widget/RadioButton;
    if-eqz v92, :cond_3

    .line 518
    const v1, 0x7f0a03a1

    .line 519
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v93, v3

    check-cast v93, Landroid/widget/SeekBar;

    .line 520
    .local v93, "touchsize":Landroid/widget/SeekBar;
    if-eqz v93, :cond_2

    .line 524
    const v1, 0x7f0a03a2

    .line 525
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v94, v3

    check-cast v94, Landroid/widget/LinearLayout;

    .line 526
    .local v94, "touchsizemenu":Landroid/widget/LinearLayout;
    if-eqz v94, :cond_1

    .line 530
    const v1, 0x7f0a03a3

    .line 531
    invoke-static {v0, v1}, Landroidx/viewbinding/ViewBindings;->findChildViewById(Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v95, v3

    check-cast v95, Landroid/widget/TextView;

    .line 532
    .local v95, "touchsizetext":Landroid/widget/TextView;
    if-eqz v95, :cond_0

    .line 536
    new-instance v96, Lpubgm/loader/databinding/EspAimbotBinding;

    move-object/from16 v3, v96

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    move-object v5, v2

    move-object/from16 v6, v51

    move-object/from16 v7, v52

    move-object/from16 v8, v53

    move-object/from16 v9, v54

    move-object/from16 v10, v55

    move-object/from16 v11, v56

    move-object/from16 v12, v57

    move-object/from16 v13, v58

    move-object/from16 v14, v59

    move-object/from16 v15, v60

    move-object/from16 v16, v61

    move-object/from16 v17, v62

    move-object/from16 v18, v63

    move-object/from16 v19, v64

    move-object/from16 v20, v65

    move-object/from16 v21, v66

    move-object/from16 v22, v67

    move-object/from16 v23, v68

    move-object/from16 v24, v69

    move-object/from16 v25, v70

    move-object/from16 v26, v71

    move-object/from16 v27, v72

    move-object/from16 v28, v73

    move-object/from16 v29, v74

    move-object/from16 v30, v75

    move-object/from16 v31, v76

    move-object/from16 v32, v77

    move-object/from16 v33, v78

    move-object/from16 v34, v79

    move-object/from16 v35, v80

    move-object/from16 v36, v81

    move-object/from16 v37, v82

    move-object/from16 v38, v83

    move-object/from16 v39, v84

    move-object/from16 v40, v85

    move-object/from16 v41, v86

    move-object/from16 v42, v87

    move-object/from16 v43, v88

    move-object/from16 v44, v89

    move-object/from16 v45, v90

    move-object/from16 v46, v91

    move-object/from16 v47, v92

    move-object/from16 v48, v93

    move-object/from16 v49, v94

    move-object/from16 v50, v95

    invoke-direct/range {v3 .. v50}, Lpubgm/loader/databinding/EspAimbotBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/SeekBar;Landroid/widget/RadioButton;Landroid/widget/RadioGroup;Landroid/widget/RadioGroup;Landroid/widget/Switch;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/Switch;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/RadioGroup;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/RadioGroup;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/Switch;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/Switch;Landroid/widget/LinearLayout;Landroid/widget/RadioButton;Landroid/widget/SeekBar;Landroid/widget/LinearLayout;Landroid/widget/TextView;)V

    return-object v96

    .line 533
    :cond_0
    goto/16 :goto_0

    .line 527
    .end local v95    # "touchsizetext":Landroid/widget/TextView;
    :cond_1
    goto/16 :goto_0

    .line 521
    .end local v94    # "touchsizemenu":Landroid/widget/LinearLayout;
    :cond_2
    goto/16 :goto_0

    .line 515
    .end local v93    # "touchsize":Landroid/widget/SeekBar;
    :cond_3
    goto :goto_0

    .line 509
    .end local v92    # "touchsimulation":Landroid/widget/RadioButton;
    :cond_4
    goto :goto_0

    .line 503
    .end local v91    # "touchlocationmenu":Landroid/widget/LinearLayout;
    :cond_5
    goto :goto_0

    .line 497
    .end local v90    # "touchlocation":Landroid/widget/Switch;
    :cond_6
    goto :goto_0

    .line 491
    .end local v89    # "touchPosYtext":Landroid/widget/TextView;
    :cond_7
    goto :goto_0

    .line 485
    .end local v88    # "touchPosY":Landroid/widget/SeekBar;
    :cond_8
    goto :goto_0

    .line 479
    .end local v87    # "touchPosXtext":Landroid/widget/TextView;
    :cond_9
    goto :goto_0

    .line 473
    .end local v86    # "touchPosX":Landroid/widget/SeekBar;
    :cond_a
    goto :goto_0

    .line 467
    .end local v85    # "texttouch":Landroid/widget/TextView;
    :cond_b
    goto :goto_0

    .line 461
    .end local v84    # "smoothtext":Landroid/widget/TextView;
    :cond_c
    goto :goto_0

    .line 455
    .end local v83    # "smoothnessmenu":Landroid/widget/LinearLayout;
    :cond_d
    goto :goto_0

    .line 449
    .end local v82    # "rotationscren":Landroid/widget/Switch;
    :cond_e
    goto :goto_0

    .line 443
    .end local v81    # "rotationmenu":Landroid/widget/LinearLayout;
    :cond_f
    goto :goto_0

    .line 437
    .end local v80    # "recoiltexts2":Landroid/widget/TextView;
    :cond_10
    goto :goto_0

    .line 431
    .end local v79    # "recoiltext2":Landroid/widget/TextView;
    :cond_11
    goto :goto_0

    .line 425
    .end local v78    # "recoiltext":Landroid/widget/TextView;
    :cond_12
    goto :goto_0

    .line 419
    .end local v77    # "recoilmenus2":Landroid/widget/LinearLayout;
    :cond_13
    goto :goto_0

    .line 413
    .end local v76    # "recoilmenu":Landroid/widget/LinearLayout;
    :cond_14
    goto :goto_0

    .line 407
    .end local v75    # "rangetext":Landroid/widget/TextView;
    :cond_15
    goto :goto_0

    .line 401
    .end local v74    # "range":Landroid/widget/SeekBar;
    :cond_16
    goto :goto_0

    .line 395
    .end local v73    # "posYmenu":Landroid/widget/LinearLayout;
    :cond_17
    goto :goto_0

    .line 389
    .end local v72    # "posXmenu":Landroid/widget/LinearLayout;
    :cond_18
    goto :goto_0

    .line 383
    .end local v71    # "grupaim":Landroid/widget/RadioGroup;
    :cond_19
    goto :goto_0

    .line 377
    .end local v70    # "distancetext":Landroid/widget/TextView;
    :cond_1a
    goto :goto_0

    .line 371
    .end local v69    # "distances":Landroid/widget/SeekBar;
    :cond_1b
    goto :goto_0

    .line 365
    .end local v68    # "disableaim":Landroid/widget/RadioButton;
    :cond_1c
    goto :goto_0

    .line 359
    .end local v67    # "bullettrack":Landroid/widget/RadioButton;
    :cond_1d
    goto :goto_0

    .line 353
    .end local v66    # "bulletspeedtext":Landroid/widget/TextView;
    :cond_1e
    goto :goto_0

    .line 347
    .end local v65    # "bulletspeed":Landroid/widget/SeekBar;
    :cond_1f
    goto :goto_0

    .line 341
    .end local v64    # "aimwhen":Landroid/widget/RadioGroup;
    :cond_20
    goto :goto_0

    .line 335
    .end local v63    # "aimspeedmenu":Landroid/widget/LinearLayout;
    :cond_21
    goto :goto_0

    .line 329
    .end local v62    # "aimsec":Landroid/widget/LinearLayout;
    :cond_22
    goto :goto_0

    .line 323
    .end local v61    # "aimpre":Landroid/widget/TextView;
    :cond_23
    goto :goto_0

    .line 317
    .end local v60    # "aimknocked":Landroid/widget/Switch;
    :cond_24
    goto :goto_0

    .line 311
    .end local v59    # "aimingspeedtext":Landroid/widget/TextView;
    :cond_25
    goto :goto_0

    .line 305
    .end local v58    # "aimingspeed":Landroid/widget/SeekBar;
    :cond_26
    goto :goto_0

    .line 299
    .end local v57    # "aimignorebot":Landroid/widget/Switch;
    :cond_27
    goto :goto_0

    .line 293
    .end local v56    # "aimby":Landroid/widget/RadioGroup;
    :cond_28
    goto :goto_0

    .line 287
    .end local v55    # "aimbotmode":Landroid/widget/RadioGroup;
    :cond_29
    goto :goto_0

    .line 281
    .end local v54    # "aimbot":Landroid/widget/RadioButton;
    :cond_2a
    goto :goto_0

    .line 275
    .end local v53    # "Smoothness":Landroid/widget/SeekBar;
    :cond_2b
    goto :goto_0

    .line 269
    .end local v52    # "Recoils2":Landroid/widget/SeekBar;
    :cond_2c
    goto :goto_0

    .line 263
    .end local v51    # "Recoil2":Landroid/widget/SeekBar;
    :cond_2d
    nop

    .line 545
    .end local v2    # "Recoil":Landroid/widget/SeekBar;
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v2

    .line 546
    .local v2, "missingId":Ljava/lang/String;
    new-instance v3, Ljava/lang/NullPointerException;

    const-string v4, "Missing required view with ID: "

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static inflate(Landroid/view/LayoutInflater;)Lpubgm/loader/databinding/EspAimbotBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;

    .line 241
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lpubgm/loader/databinding/EspAimbotBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/EspAimbotBinding;

    move-result-object v0

    return-object v0
.end method

.method public static inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lpubgm/loader/databinding/EspAimbotBinding;
    .locals 2
    .param p0, "inflater"    # Landroid/view/LayoutInflater;
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "attachToParent"    # Z

    .line 247
    const v0, 0x7f0d003b

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 248
    .local v0, "root":Landroid/view/View;
    if-eqz p2, :cond_0

    .line 249
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 251
    :cond_0
    invoke-static {v0}, Lpubgm/loader/databinding/EspAimbotBinding;->bind(Landroid/view/View;)Lpubgm/loader/databinding/EspAimbotBinding;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lpubgm/loader/databinding/EspAimbotBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .locals 1

    .line 236
    iget-object v0, p0, Lpubgm/loader/databinding/EspAimbotBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

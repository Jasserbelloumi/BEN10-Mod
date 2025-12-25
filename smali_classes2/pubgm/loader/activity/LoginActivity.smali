.class public Lpubgm/loader/activity/LoginActivity;
.super Lpubgm/loader/utils/ActivityCompat;
.source "LoginActivity.java"


# static fields
.field private static ModeSelect:Ljava/lang/String;

.field private static final PASS:Ljava/lang/String;

.field public static PASSKEY:Ljava/lang/String;

.field private static final QUESTION:Ljava/lang/String;

.field public static REQUEST_OVERLAY_PERMISSION:I

.field private static final USER:Ljava/lang/String;

.field public static USERKEY:Ljava/lang/String;


# instance fields
.field private prefs:Lpubgm/loader/Component/Prefs;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x7c3d8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/activity/LoginActivity;->QUESTION:Ljava/lang/String;

    const-wide v0, -0x7c278c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/activity/LoginActivity;->USER:Ljava/lang/String;

    const-wide v0, -0x7c2a8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/activity/LoginActivity;->PASS:Ljava/lang/String;

    .line 54
    const-wide v0, -0x7c2d8c1d73e5L

    :try_start_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "w":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 62
    .end local v0    # "w":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    const/16 v0, 0x155d

    sput v0, Lpubgm/loader/activity/LoginActivity;->REQUEST_OVERLAY_PERMISSION:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lpubgm/loader/utils/ActivityCompat;-><init>()V

    return-void
.end method

.method private static Login(Lpubgm/loader/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "m_Context"    # Lpubgm/loader/activity/LoginActivity;
    .param p1, "userKey"    # Ljava/lang/String;
    .param p2, "modeSelect"    # Ljava/lang/String;

    .line 251
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 252
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f0d0023

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 253
    .local v1, "viewloading":Landroid/view/View;
    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v3, 0x5

    invoke-direct {v2, p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 254
    invoke-virtual {v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 255
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    .line 256
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v2

    .line 257
    .local v2, "dialogloading":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    new-instance v5, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v5, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 258
    invoke-virtual {v2}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 260
    new-instance v3, Lpubgm/loader/activity/LoginActivity$6;

    invoke-direct {v3, p0, v2}, Lpubgm/loader/activity/LoginActivity$6;-><init>(Lpubgm/loader/activity/LoginActivity;Landroidx/appcompat/app/AlertDialog;)V

    .line 286
    .local v3, "loginHandler":Landroid/os/Handler;
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lpubgm/loader/activity/LoginActivity$7;

    invoke-direct {v5, p0, p1, v3}, Lpubgm/loader/activity/LoginActivity$7;-><init>(Lpubgm/loader/activity/LoginActivity;Ljava/lang/String;Landroid/os/Handler;)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 301
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 302
    return-void
.end method

.method static synthetic access$000(Lpubgm/loader/activity/LoginActivity;)Lpubgm/loader/Component/Prefs;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/activity/LoginActivity;

    .line 50
    iget-object v0, p0, Lpubgm/loader/activity/LoginActivity;->prefs:Lpubgm/loader/Component/Prefs;

    return-object v0
.end method

.method static synthetic access$100(Lpubgm/loader/activity/LoginActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/activity/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0, p1}, Lpubgm/loader/activity/LoginActivity;->setLokasi(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 50
    sget-object v0, Lpubgm/loader/activity/LoginActivity;->ModeSelect:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lpubgm/loader/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/activity/LoginActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 50
    invoke-static {p0, p1, p2}, Lpubgm/loader/activity/LoginActivity;->Login(Lpubgm/loader/activity/LoginActivity;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/content/Context;
    .param p1, "x1"    # Ljava/lang/String;

    .line 50
    invoke-static {p0, p1}, Lpubgm/loader/activity/LoginActivity;->native_Check(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static goLogin(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 227
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpubgm/loader/activity/LoginActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 228
    .local v0, "i":Landroid/content/Intent;
    const v1, 0x10008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 230
    return-void
.end method

.method private loadbahasa()V
    .locals 4

    .line 342
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/activity/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 343
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-wide v1, -0x7c358c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x7c3e8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "bahasa":Ljava/lang/String;
    invoke-direct {p0, v1}, Lpubgm/loader/activity/LoginActivity;->setLokasi(Ljava/lang/String;)V

    .line 345
    return-void
.end method

.method private static native native_Check(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
.end method

.method private setLightStatusBar(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 222
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-wide v1, -0x7c1c8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 223
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-wide v1, -0x7c048c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 224
    return-void
.end method

.method private setLokasi(Ljava/lang/String;)V
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;

    .line 329
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 330
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 331
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 332
    .local v1, "config":Landroid/content/res/Configuration;
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 333
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 335
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lpubgm/loader/activity/LoginActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 336
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 337
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-wide v4, -0x7c0c8c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 338
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 339
    return-void
.end method


# virtual methods
.method public OverlayPermision()V
    .locals 3

    .line 234
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 235
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    goto :cond_0

    .line 236
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 237
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const v1, 0x7f1301d9

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 238
    const v1, 0x7f130240

    new-instance v2, Lpubgm/loader/activity/LoginActivity$5;

    invoke-direct {v2, p0}, Lpubgm/loader/activity/LoginActivity$5;-><init>(Lpubgm/loader/activity/LoginActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 245
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 246
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 249
    .end local v0    # "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    :cond_0
    return-void
.end method

.method public initDesign()V
    .locals 14

    .line 86
    invoke-static {p0}, Lpubgm/loader/Component/Prefs;->with(Landroid/content/Context;)Lpubgm/loader/Component/Prefs;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/activity/LoginActivity;->prefs:Lpubgm/loader/Component/Prefs;

    .line 87
    move-object v0, p0

    .line 88
    .local v0, "m_Context":Landroid/content/Context;
    const v1, 0x7f0a037a

    invoke-virtual {p0, v1}, Lpubgm/loader/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 89
    .local v1, "textUsername":Landroid/widget/TextView;
    const v2, 0x7f0a022a

    invoke-virtual {p0, v2}, Lpubgm/loader/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    .line 90
    .local v2, "btnSignIn":Lcom/google/android/material/button/MaterialButton;
    iget-object v3, p0, Lpubgm/loader/activity/LoginActivity;->prefs:Lpubgm/loader/Component/Prefs;

    const-wide v4, -0x7c7c8c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    const-wide v5, -0x7c678c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lpubgm/loader/Component/Prefs;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    const v3, 0x7f0a02dd

    invoke-virtual {p0, v3}, Lpubgm/loader/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 94
    .local v3, "reset_key_text":Landroid/widget/ImageView;
    new-instance v4, Lpubgm/loader/activity/LoginActivity$1;

    invoke-direct {v4, p0}, Lpubgm/loader/activity/LoginActivity$1;-><init>(Lpubgm/loader/activity/LoginActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v4, 0x7f0a0337

    invoke-virtual {p0, v4}, Lpubgm/loader/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Spinner;

    .line 107
    .local v4, "languageSpinner":Landroid/widget/Spinner;
    const/high16 v5, 0x7f030000

    const v6, 0x1090008

    invoke-static {p0, v5, v6}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v5

    .line 109
    .local v5, "adapter":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/CharSequence;>;"
    const v6, 0x1090009

    invoke-virtual {v5, v6}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 110
    invoke-virtual {v4, v5}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 113
    iget-object v6, p0, Lpubgm/loader/activity/LoginActivity;->prefs:Lpubgm/loader/Component/Prefs;

    const-wide v7, -0x7c668c1d73e5L

    invoke-static {v7, v8}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v7

    const-wide v8, -0x7c6f8c1d73e5L

    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lpubgm/loader/Component/Prefs;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 114
    .local v6, "savedLanguage":Ljava/lang/String;
    const/4 v7, 0x0

    .line 115
    .local v7, "position":I
    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x0

    sparse-switch v8, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-wide v10, -0x7c6c8c1d73e5L

    invoke-static {v10, v11}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    move v8, v9

    goto :goto_1

    :sswitch_1
    const-wide v10, -0x7c168c1d73e5L

    invoke-static {v10, v11}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x2

    goto :goto_1

    :sswitch_2
    const-wide v10, -0x7c118c1d73e5L

    invoke-static {v10, v11}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_1

    :goto_0
    const/4 v8, -0x1

    :goto_1
    packed-switch v8, :pswitch_data_0

    goto :goto_2

    .line 123
    :pswitch_0
    const/4 v7, 0x2

    goto :goto_2

    .line 120
    :pswitch_1
    const/4 v7, 0x1

    .line 121
    goto :goto_2

    .line 117
    :pswitch_2
    const/4 v7, 0x0

    .line 118
    nop

    .line 126
    :goto_2
    invoke-virtual {v4, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 128
    new-instance v8, Lpubgm/loader/activity/LoginActivity$2;

    invoke-direct {v8, p0}, Lpubgm/loader/activity/LoginActivity$2;-><init>(Lpubgm/loader/activity/LoginActivity;)V

    invoke-virtual {v4, v8}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 156
    new-instance v8, Lpubgm/loader/activity/LoginActivity$3;

    invoke-direct {v8, p0}, Lpubgm/loader/activity/LoginActivity$3;-><init>(Lpubgm/loader/activity/LoginActivity;)V

    invoke-virtual {v2, v8}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    const v8, 0x7f0a02a4

    invoke-virtual {p0, v8}, Lpubgm/loader/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    .line 187
    .local v8, "pasteIcon":Landroid/widget/ImageView;
    if-eqz v8, :cond_1

    .line 188
    new-instance v10, Lpubgm/loader/activity/LoginActivity$4;

    invoke-direct {v10, p0, v1, v0}, Lpubgm/loader/activity/LoginActivity$4;-><init>(Lpubgm/loader/activity/LoginActivity;Landroid/widget/TextView;Landroid/content/Context;)V

    invoke-virtual {v8, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    :cond_1
    const v10, 0x7f0a000a

    invoke-virtual {p0, v10}, Lpubgm/loader/activity/LoginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 207
    .local v10, "AppVersion":Landroid/widget/TextView;
    :try_start_0
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 208
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v9

    iget-object v9, v9, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 210
    .local v9, "versionName":Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v12, -0x7c1b8c1d73e5L

    invoke-static {v12, v13}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    .end local v9    # "versionName":Ljava/lang/String;
    goto :goto_3

    .line 211
    :catch_0
    move-exception v9

    .line 212
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v9}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 213
    const-wide v11, -0x7c198c1d73e5L

    invoke-static {v11, v12}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0xc31 -> :sswitch_2
        0xca9 -> :sswitch_1
        0xf2e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 316
    invoke-super {p0, p1, p2, p3}, Lpubgm/loader/utils/ActivityCompat;->onActivityResult(IILandroid/content/Intent;)V

    .line 317
    sget v0, Lpubgm/loader/activity/LoginActivity;->REQUEST_OVERLAY_PERMISSION:I

    if-ne p1, v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->InstllUnknownApp()V

    goto :goto_0

    .line 319
    :cond_0
    sget v0, Lpubgm/loader/activity/LoginActivity;->REQUEST_MANAGE_UNKNOWN_APP_SOURCES:I

    if-ne p1, v0, :cond_2

    .line 320
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->isPermissionGaranted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->takeFilePermissions()V

    goto :goto_0

    .line 323
    :cond_1
    invoke-static {p0}, Lpubgm/loader/activity/LoginActivity;->requestIgnoreBatteryOptimization(Landroid/content/Context;)V

    .line 326
    :cond_2
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 71
    invoke-super {p0, p1}, Lpubgm/loader/utils/ActivityCompat;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-direct {p0, p0}, Lpubgm/loader/activity/LoginActivity;->setLightStatusBar(Landroid/app/Activity;)V

    .line 73
    const v0, 0x7f0d005b

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/LoginActivity;->setContentView(I)V

    .line 74
    sget-boolean v0, Lpubgm/loader/activity/SplashActivity;->mahyong:Z

    if-nez v0, :cond_0

    .line 75
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->finish()V

    .line 76
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/LoginActivity;->finishActivity(I)V

    .line 78
    :cond_0
    invoke-direct {p0}, Lpubgm/loader/activity/LoginActivity;->loadbahasa()V

    .line 79
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->initDesign()V

    .line 80
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->OverlayPermision()V

    .line 81
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .line 308
    invoke-super {p0, p1, p2, p3}, Lpubgm/loader/utils/ActivityCompat;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    .line 309
    sget v0, Lpubgm/loader/activity/LoginActivity;->PERMISSION_REQUEST_STORAGE:I

    if-ne p1, v0, :cond_0

    .line 310
    invoke-virtual {p0}, Lpubgm/loader/activity/LoginActivity;->OverlayPermision()V

    .line 312
    :cond_0
    return-void
.end method

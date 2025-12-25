.class public Lpubgm/loader/utils/ActivityCompat;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ActivityCompat.java"


# static fields
.field public static PERMISSION_REQUEST_STORAGE:I

.field public static REQUEST_MANAGE_UNKNOWN_APP_SOURCES:I

.field public static REQUEST_OVERLAY_PERMISSION:I

.field private static activityCompat:Lpubgm/loader/utils/ActivityCompat;

.field private static executorService:Ljava/util/concurrent/ExecutorService;

.field public static gamename:Ljava/lang/String;

.field public static name:Ljava/lang/String;

.field public static url:Ljava/lang/String;

.field public static version:I


# instance fields
.field private backPressedTime:J

.field private bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

.field public isLogin:Z

.field public prefs:Lpubgm/loader/utils/FPrefs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/16 v0, 0x155d

    sput v0, Lpubgm/loader/utils/ActivityCompat;->REQUEST_OVERLAY_PERMISSION:I

    .line 50
    const/16 v0, 0x64

    sput v0, Lpubgm/loader/utils/ActivityCompat;->PERMISSION_REQUEST_STORAGE:I

    .line 51
    const/16 v0, 0xc8

    sput v0, Lpubgm/loader/utils/ActivityCompat;->REQUEST_MANAGE_UNKNOWN_APP_SOURCES:I

    .line 59
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lpubgm/loader/utils/ActivityCompat;->executorService:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 47
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpubgm/loader/utils/ActivityCompat;->isLogin:Z

    .line 269
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lpubgm/loader/utils/ActivityCompat;->backPressedTime:J

    return-void
.end method

.method public static getActivityCompat()Lpubgm/loader/utils/ActivityCompat;
    .locals 1

    .line 62
    sget-object v0, Lpubgm/loader/utils/ActivityCompat;->activityCompat:Lpubgm/loader/utils/ActivityCompat;

    return-object v0
.end method

.method private hideSystemUI()V
    .locals 2

    .line 296
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 297
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0xf06

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 304
    return-void
.end method

.method public static isBatteryOptimized(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 233
    const-wide v0, -0x68928c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 234
    .local v0, "powerManager":Landroid/os/PowerManager;
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result v2

    xor-int/2addr v1, v2

    return v1

    .line 237
    :cond_0
    return v1
.end method

.method static synthetic lambda$launch$3(Landroidx/appcompat/app/AlertDialog;)V
    .locals 8
    .param p0, "dialog"    # Landroidx/appcompat/app/AlertDialog;

    .line 318
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 319
    .local v0, "startTime":J
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 321
    .local v2, "elapsedTime":J
    const-wide/16 v4, 0x1f4

    sub-long/2addr v4, v2

    .line 322
    .local v4, "delta":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 323
    invoke-static {v4, v5}, Lpubgm/loader/utils/UiKit;->sleep(J)V

    .line 325
    :cond_0
    return-void
.end method

.method static synthetic lambda$launch$4(Ljava/lang/String;Ljava/lang/Void;)V
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "ree"    # Ljava/lang/Void;

    .line 326
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, p0}, Lpubgm/loader/libhelper/ApkEnv;->launchApk(Ljava/lang/String;)V

    .line 327
    return-void
.end method

.method static synthetic lambda$launchSplash$5()V
    .locals 8

    .line 346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 348
    .local v0, "startTime":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 349
    .local v2, "elapsedTime":J
    const-wide/16 v4, 0x1388

    sub-long/2addr v4, v2

    .line 350
    .local v4, "delta":J
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_0

    .line 351
    invoke-static {v4, v5}, Lpubgm/loader/utils/UiKit;->sleep(J)V

    .line 353
    :cond_0
    return-void
.end method

.method static synthetic lambda$launchSplash$7(Landroidx/appcompat/app/AlertDialog;Ljava/lang/Throwable;)V
    .locals 0
    .param p0, "dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p1, "fa"    # Ljava/lang/Throwable;

    .line 353
    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    return-void
.end method

.method public static requestIgnoreBatteryOptimization(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 241
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-wide v1, -0x68948c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v2, -0x68ae8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 243
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 244
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 246
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 250
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 247
    :catch_0
    move-exception v0

    .line 249
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->make()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setBgColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v1

    const v2, 0x106000c

    invoke-virtual {v1, v2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setTextColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setNotUseSystemToast()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v1

    const-wide v2, -0x68558c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 251
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method protected static requestPermissions(Lpubgm/loader/activity/MainActivity;[Ljava/lang/String;I)V
    .locals 0
    .param p0, "mainActivity"    # Lpubgm/loader/activity/MainActivity;
    .param p1, "strings"    # [Ljava/lang/String;
    .param p2, "requestPermissions"    # I

    .line 66
    return-void
.end method

.method private showSystemUI()V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 308
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x700

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 312
    return-void
.end method

.method public static toastImage(ILjava/lang/CharSequence;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 112
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->make()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v0

    .line 113
    .local v0, "_toast":Lcom/blankj/molihuan/utilcode/util/ToastUtils;
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setBgColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 114
    invoke-virtual {v0, p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setLeftIcon(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 115
    const v1, 0x106000c

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setTextColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 116
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setNotUseSystemToast()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 117
    invoke-virtual {v0, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 118
    return-void
.end method


# virtual methods
.method public InstllUnknownApp()V
    .locals 3

    .line 188
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_2

    .line 189
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->canRequestPackageInstalls()Z

    move-result v0

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 191
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-wide v1, -0x6f228c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 192
    const-wide v1, -0x68ca8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lpubgm/loader/utils/ActivityCompat$1;

    invoke-direct {v2, p0}, Lpubgm/loader/utils/ActivityCompat$1;-><init>(Lpubgm/loader/utils/ActivityCompat;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 199
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 200
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 201
    .end local v0    # "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->isPermissionGaranted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->takeFilePermissions()V

    goto :goto_0

    .line 205
    :cond_1
    invoke-static {p0}, Lpubgm/loader/utils/ActivityCompat;->isBatteryOptimized(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-static {p0}, Lpubgm/loader/utils/ActivityCompat;->requestIgnoreBatteryOptimization(Landroid/content/Context;)V

    .line 211
    :cond_2
    :goto_0
    return-void
.end method

.method public ManageFiles()V
    .locals 4

    .line 253
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 254
    const-wide v0, -0x68638c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 256
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-wide v2, -0x68098c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget v1, Lpubgm/loader/utils/ActivityCompat;->PERMISSION_REQUEST_STORAGE:I

    invoke-static {p0, v0, v1}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 260
    :cond_0
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->OverlayPermision()V

    .line 263
    :cond_1
    :goto_0
    return-void
.end method

.method public OverlayPermision()V
    .locals 3

    .line 214
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 215
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 217
    .local v0, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const-wide v1, -0x68ce8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 218
    const-wide v1, -0x68ee8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lpubgm/loader/utils/ActivityCompat$2;

    invoke-direct {v2, p0}, Lpubgm/loader/utils/ActivityCompat$2;-><init>(Lpubgm/loader/utils/ActivityCompat;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 225
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 226
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 227
    .end local v0    # "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    goto :goto_0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->InstllUnknownApp()V

    .line 231
    :cond_1
    :goto_0
    return-void
.end method

.method public RestartAppp()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 122
    .local v0, "pm":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 123
    .local v1, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 124
    const v2, 0x14008000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v1}, Lpubgm/loader/utils/ActivityCompat;->startActivity(Landroid/content/Intent;)V

    .line 127
    :cond_0
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->finish()V

    .line 128
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->killProcess(I)V

    .line 129
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 130
    return-void
.end method

.method public ShowRestartApp()V
    .locals 9

    .line 133
    nop

    .line 134
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0800e8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const-wide v0, -0x6f888c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    const-wide v0, -0x6faf8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda7;

    invoke-direct {v7, p0}, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda7;-><init>(Lpubgm/loader/utils/ActivityCompat;)V

    .line 133
    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lpubgm/loader/utils/ActivityCompat;->showBottomSheetDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 144
    return-void
.end method

.method protected defer()Lorg/jdeferred/android/AndroidDeferredManager;
    .locals 1

    .line 266
    invoke-static {}, Lpubgm/loader/utils/UiKit;->defer()Lorg/jdeferred/android/AndroidDeferredManager;

    move-result-object v0

    return-object v0
.end method

.method public dismissBottomSheetDialog()V
    .locals 2

    .line 468
    :try_start_0
    iget-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->dismiss()V

    .line 470
    const/4 v0, 0x0

    iput-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 474
    :cond_0
    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 473
    .local v0, "err":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 475
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public getPref()Lpubgm/loader/utils/FPrefs;
    .locals 1

    .line 69
    invoke-static {p0}, Lpubgm/loader/utils/FPrefs;->with(Landroid/content/Context;)Lpubgm/loader/utils/FPrefs;

    move-result-object v0

    return-object v0
.end method

.method public isPermissionGaranted()Z
    .locals 2

    .line 180
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 181
    invoke-static {}, Landroid/os/Environment;->isExternalStorageManager()Z

    move-result v0

    return v0

    .line 183
    :cond_0
    const-wide v0, -0x6f1b8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method synthetic lambda$ShowRestartApp$0$pubgm-loader-utils-ActivityCompat(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 139
    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lpubgm/loader/activity/MainActivity;->doShowProgress(Z)V

    .line 140
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->RestartAppp()V

    .line 141
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->dismissBottomSheetDialog()V

    .line 142
    return-void
.end method

.method synthetic lambda$launchSplash$6$pubgm-loader-utils-ActivityCompat(Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;Ljava/lang/Void;)V
    .locals 0
    .param p1, "dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "ree"    # Ljava/lang/Void;

    .line 353
    invoke-virtual {p0, p1, p2}, Lpubgm/loader/utils/ActivityCompat;->launch(Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V

    return-void
.end method

.method synthetic lambda$takeFilePermissions$1$pubgm-loader-utils-ActivityCompat(Landroid/content/DialogInterface;I)V
    .locals 4
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 154
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 155
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    const-wide v1, -0x69ce8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 157
    const-wide v1, -0x69868c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 158
    .local v1, "uri":Landroid/net/Uri;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 159
    invoke-virtual {p0, v0}, Lpubgm/loader/utils/ActivityCompat;->startActivity(Landroid/content/Intent;)V

    .line 160
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    .line 161
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-wide v2, -0x698e8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-wide v1, -0x69558c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p0, v0, v2}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 169
    :goto_0
    return-void
.end method

.method synthetic lambda$takeFilePermissions$2$pubgm-loader-utils-ActivityCompat(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "d"    # Landroid/content/DialogInterface;
    .param p2, "w"    # I

    .line 173
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->finish()V

    .line 174
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 175
    return-void
.end method

.method public launch(Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V
    .locals 2
    .param p1, "dialog"    # Landroidx/appcompat/app/AlertDialog;
    .param p2, "pkg"    # Ljava/lang/String;

    .line 317
    invoke-static {}, Lpubgm/loader/utils/UiKit;->defer()Lorg/jdeferred/android/AndroidDeferredManager;

    move-result-object v0

    new-instance v1, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda2;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-virtual {v0, v1}, Lorg/jdeferred/android/AndroidDeferredManager;->when(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    move-result-object v0

    new-instance v1, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-interface {v0, v1}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    .line 328
    return-void
.end method

.method public launchSplash(Ljava/lang/String;)V
    .locals 7
    .param p1, "pkg"    # Ljava/lang/String;

    .line 332
    :try_start_0
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0053

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 333
    .local v0, "view":Landroid/view/View;
    const v1, 0x7f0a0146

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/cardview/widget/CardView;

    .line 334
    .local v1, "cv":Landroidx/cardview/widget/CardView;
    const v2, 0x7f0a0346

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 337
    .local v2, "txt":Landroid/widget/TextView;
    new-instance v3, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v3, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 338
    .local v3, "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v4

    .line 339
    invoke-virtual {v4, v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setView(Landroid/view/View;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v4

    .line 340
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f080081

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setBackground(Landroid/graphics/drawable/Drawable;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    .line 342
    invoke-virtual {v3}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object v4

    .line 343
    .local v4, "dialog":Landroidx/appcompat/app/AlertDialog;
    invoke-virtual {v4}, Landroidx/appcompat/app/AlertDialog;->show()V

    .line 345
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->defer()Lorg/jdeferred/android/AndroidDeferredManager;

    move-result-object v5

    new-instance v6, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v5, v6}, Lorg/jdeferred/android/AndroidDeferredManager;->when(Ljava/lang/Runnable;)Lorg/jdeferred/Promise;

    move-result-object v5

    new-instance v6, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda5;

    invoke-direct {v6, p0, v4, p1}, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda5;-><init>(Lpubgm/loader/utils/ActivityCompat;Landroidx/appcompat/app/AlertDialog;Ljava/lang/String;)V

    .line 353
    invoke-interface {v5, v6}, Lorg/jdeferred/Promise;->done(Lorg/jdeferred/DoneCallback;)Lorg/jdeferred/Promise;

    move-result-object v5

    new-instance v6, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda6;

    invoke-direct {v6, v4}, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda6;-><init>(Landroidx/appcompat/app/AlertDialog;)V

    invoke-interface {v5, v6}, Lorg/jdeferred/Promise;->fail(Lorg/jdeferred/FailCallback;)Lorg/jdeferred/Promise;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    nop

    .end local v0    # "view":Landroid/view/View;
    .end local v1    # "cv":Landroidx/cardview/widget/CardView;
    .end local v2    # "txt":Landroid/widget/TextView;
    .end local v3    # "builder":Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;
    .end local v4    # "dialog":Landroidx/appcompat/app/AlertDialog;
    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "err":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 358
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 6

    .line 273
    iget-boolean v0, p0, Lpubgm/loader/utils/ActivityCompat;->isLogin:Z

    if-eqz v0, :cond_1

    .line 274
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 275
    .local v0, "t":J
    iget-wide v2, p0, Lpubgm/loader/utils/ActivityCompat;->backPressedTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x7d0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 276
    iput-wide v0, p0, Lpubgm/loader/utils/ActivityCompat;->backPressedTime:J

    .line 277
    const-wide v2, -0x69d78c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lpubgm/loader/utils/ActivityCompat;->toast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 279
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 282
    .end local v0    # "t":J
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 73
    sput-object p0, Lpubgm/loader/utils/ActivityCompat;->activityCompat:Lpubgm/loader/utils/ActivityCompat;

    .line 74
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 75
    new-instance v0, Lpubgm/loader/activity/CrashHandler;

    invoke-direct {v0, p0}, Lpubgm/loader/activity/CrashHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 76
    const v0, 0x7f06001e

    invoke-virtual {p0, v0}, Lpubgm/loader/utils/ActivityCompat;->setNavBar(I)V

    .line 78
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getPref()Lpubgm/loader/utils/FPrefs;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->prefs:Lpubgm/loader/utils/FPrefs;

    .line 80
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->ManageFiles()V

    .line 81
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .line 286
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onWindowFocusChanged(Z)V

    .line 287
    if-eqz p1, :cond_0

    .line 288
    invoke-direct {p0}, Lpubgm/loader/utils/ActivityCompat;->hideSystemUI()V

    goto :goto_0

    .line 290
    :cond_0
    invoke-direct {p0}, Lpubgm/loader/utils/ActivityCompat;->showSystemUI()V

    .line 292
    :goto_0
    return-void
.end method

.method public restartApp(Ljava/lang/String;)V
    .locals 3
    .param p1, "clazz"    # Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    .local v0, "lauchIntent":Landroid/content/Intent;
    const v1, 0x14008000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 94
    const-wide v1, -0x6f838c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p0, v0}, Lpubgm/loader/utils/ActivityCompat;->startActivity(Landroid/content/Intent;)V

    .line 96
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exit(I)V

    .line 97
    return-void
.end method

.method public setNavBar(I)V
    .locals 2
    .param p1, "color"    # I

    .line 84
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 85
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 86
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 87
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 88
    invoke-virtual {p0}, Lpubgm/loader/utils/ActivityCompat;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 89
    return-void
.end method

.method public showBottomSheetDialog(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "cancelable"    # Z
    .param p5, "listener"    # Landroid/view/View$OnClickListener;
    .param p6, "listenerCancle"    # Landroid/view/View$OnClickListener;

    .line 366
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 367
    invoke-virtual {v0, p4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 368
    iget-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v1, 0x7f0d0025

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(I)V

    .line 370
    iget-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 371
    .local v0, "img":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 372
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 374
    :cond_0
    iget-object v1, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v2, 0x7f0a038e

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 375
    .local v1, "title_tv":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    iget-object v2, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v3, 0x7f0a0263

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 377
    .local v2, "msg_tv":Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 379
    iget-object v3, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v4, 0x7f0a010f

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 380
    .local v3, "download":Lcom/google/android/material/button/MaterialButton;
    if-eqz p5, :cond_1

    .line 381
    invoke-virtual {v3, p5}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 384
    :cond_1
    iget-object v4, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v5, 0x7f0a0110

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 385
    .local v4, "cancle":Lcom/google/android/material/button/MaterialButton;
    if-eqz p6, :cond_2

    .line 386
    invoke-virtual {v4, p6}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 388
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    .line 391
    :goto_0
    iget-object v5, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 392
    return-void
.end method

.method public showBottomSheetDialog2(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 7
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "cancelable"    # Z
    .param p5, "listener"    # Landroid/view/View$OnClickListener;
    .param p6, "updates"    # Landroid/view/View$OnClickListener;
    .param p7, "listenerCancle"    # Landroid/view/View$OnClickListener;

    .line 398
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 399
    invoke-virtual {v0, p4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 400
    iget-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v1, 0x7f0d0026

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(I)V

    .line 402
    iget-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 403
    .local v0, "img":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 404
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    :cond_0
    iget-object v1, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v2, 0x7f0a038e

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 407
    .local v1, "title_tv":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 408
    iget-object v2, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v3, 0x7f0a0263

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 409
    .local v2, "msg_tv":Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v3, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v4, 0x7f0a010f

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 412
    .local v3, "download":Lcom/google/android/material/button/MaterialButton;
    if-eqz p5, :cond_1

    .line 413
    invoke-virtual {v3, p5}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 416
    :cond_1
    iget-object v4, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v5, 0x7f0a03bd

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 417
    .local v4, "updatess":Lcom/google/android/material/button/MaterialButton;
    if-eqz p6, :cond_2

    .line 418
    invoke-virtual {v4, p6}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 422
    :cond_2
    iget-object v5, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v6, 0x7f0a0110

    invoke-virtual {v5, v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/google/android/material/button/MaterialButton;

    .line 423
    .local v5, "cancle":Lcom/google/android/material/button/MaterialButton;
    if-eqz p7, :cond_3

    .line 424
    invoke-virtual {v5, p7}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 426
    :cond_3
    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    .line 429
    :goto_0
    iget-object v6, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v6}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 430
    return-void
.end method

.method public showBottomSheetDialog3(Landroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 6
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "cancelable"    # Z
    .param p5, "listener"    # Landroid/view/View$OnClickListener;
    .param p6, "updates"    # Landroid/view/View$OnClickListener;
    .param p7, "listenerCancle"    # Landroid/view/View$OnClickListener;

    .line 436
    new-instance v0, Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-direct {v0, p0}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    .line 437
    invoke-virtual {v0, p4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setCancelable(Z)V

    .line 438
    iget-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v1, 0x7f0d0024

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->setContentView(I)V

    .line 440
    iget-object v0, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v1, 0x7f0a01c6

    invoke-virtual {v0, v1}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 441
    .local v0, "img":Landroid/widget/ImageView;
    if-eqz p1, :cond_0

    .line 442
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 444
    :cond_0
    iget-object v1, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v2, 0x7f0a038e

    invoke-virtual {v1, v2}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 445
    .local v1, "title_tv":Landroid/widget/TextView;
    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 446
    iget-object v2, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v3, 0x7f0a0263

    invoke-virtual {v2, v3}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 447
    .local v2, "msg_tv":Landroid/widget/TextView;
    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 450
    iget-object v3, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v4, 0x7f0a03bd

    invoke-virtual {v3, v4}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    .line 451
    .local v3, "updatess":Lcom/google/android/material/button/MaterialButton;
    if-eqz p6, :cond_1

    .line 452
    invoke-virtual {v3, p6}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 456
    :cond_1
    iget-object v4, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    const v5, 0x7f0a0110

    invoke-virtual {v4, v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/google/android/material/button/MaterialButton;

    .line 457
    .local v4, "cancle":Lcom/google/android/material/button/MaterialButton;
    if-eqz p7, :cond_2

    .line 458
    invoke-virtual {v4, p7}, Lcom/google/android/material/button/MaterialButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 460
    :cond_2
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Lcom/google/android/material/button/MaterialButton;->setVisibility(I)V

    .line 463
    :goto_0
    iget-object v5, p0, Lpubgm/loader/utils/ActivityCompat;->bottomSheetDialog:Lcom/google/android/material/bottomsheet/BottomSheetDialog;

    invoke-virtual {v5}, Lcom/google/android/material/bottomsheet/BottomSheetDialog;->show()V

    .line 464
    return-void
.end method

.method public takeFilePermissions()V
    .locals 3

    .line 147
    new-instance v0, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    invoke-direct {v0, p0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    .line 148
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setCancelable(Z)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 149
    const v1, 0x7f130128

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setTitle(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 150
    const v1, 0x7f130127

    invoke-virtual {v0, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setMessage(I)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda0;-><init>(Lpubgm/loader/utils/ActivityCompat;)V

    .line 151
    const v2, 0x7f13012e

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    new-instance v1, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lpubgm/loader/utils/ActivityCompat$$ExternalSyntheticLambda1;-><init>(Lpubgm/loader/utils/ActivityCompat;)V

    .line 170
    const v2, 0x7f13011e

    invoke-virtual {v0, v2, v1}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;

    move-result-object v0

    .line 176
    invoke-virtual {v0}, Lcom/google/android/material/dialog/MaterialAlertDialogBuilder;->show()Landroidx/appcompat/app/AlertDialog;

    .line 177
    return-void
.end method

.method public toast(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 100
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->make()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v0

    .line 101
    .local v0, "_toast":Lcom/blankj/molihuan/utilcode/util/ToastUtils;
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setBgColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 102
    const v1, 0x7f080113

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setLeftIcon(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 104
    const v1, 0x106000c

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setTextColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 105
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setNotUseSystemToast()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 107
    invoke-virtual {v0, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

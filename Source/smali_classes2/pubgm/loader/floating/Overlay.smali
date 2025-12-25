.class public Lpubgm/loader/floating/Overlay;
.super Landroid/app/Service;
.source "Overlay.java"


# static fields
.field public static ctx:Landroid/content/Context;


# instance fields
.field private Instance:Lpubgm/loader/floating/Overlay;

.field private overlayView:Lpubgm/loader/floating/ESPView;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 26
    :try_start_0
    const-string v0, "JungliCheatz"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "w":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 30
    .end local v0    # "w":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private native Close()V
.end method

.method private DrawCanvas()V
    .locals 10

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 100
    const/16 v0, 0x7f6

    .local v0, "LAYOUT_FLAG":I
    goto :goto_0

    .line 102
    .end local v0    # "LAYOUT_FLAG":I
    :cond_0
    const/16 v0, 0x7d6

    .line 105
    .restart local v0    # "LAYOUT_FLAG":I
    :goto_0
    new-instance v9, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 106
    invoke-direct {p0}, Lpubgm/loader/floating/Overlay;->getNavigationBarHeight()I

    move-result v5

    const/16 v7, 0x518

    const/4 v8, 0x1

    move-object v1, v9

    move v6, v0

    invoke-direct/range {v1 .. v8}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    .line 110
    .local v1, "params":Landroid/view/WindowManager$LayoutParams;
    const-string v2, "espValue"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lpubgm/loader/floating/Overlay;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 111
    const-string v4, "hiderecord"

    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 113
    .local v2, "isHideRecordEnabled":Z
    if-eqz v2, :cond_1

    .line 114
    invoke-static {v1}, Lpubgm/loader/floating/HideRecorder;->setFakeRecorderWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 117
    :cond_1
    const v4, 0x800033

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 118
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 119
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 122
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_2

    .line 123
    const/4 v3, 0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 125
    :cond_2
    iget-object v3, p0, Lpubgm/loader/floating/Overlay;->windowManager:Landroid/view/WindowManager;

    iget-object v4, p0, Lpubgm/loader/floating/Overlay;->overlayView:Lpubgm/loader/floating/ESPView;

    invoke-interface {v3, v4, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 126
    return-void
.end method

.method public static native DrawOn(Lpubgm/loader/floating/ESPView;Landroid/graphics/Canvas;)V
.end method

.method private Shell(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 139
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    goto :goto_0

    .line 141
    :catch_0
    move-exception v0

    .line 142
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 144
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method private Start()V
    .locals 2

    .line 74
    iget-object v0, p0, Lpubgm/loader/floating/Overlay;->Instance:Lpubgm/loader/floating/Overlay;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lpubgm/loader/floating/Overlay$1;

    invoke-direct {v1, p0}, Lpubgm/loader/floating/Overlay$1;-><init>(Lpubgm/loader/floating/Overlay;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 82
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lpubgm/loader/floating/Overlay$2;

    invoke-direct {v1, p0}, Lpubgm/loader/floating/Overlay$2;-><init>(Lpubgm/loader/floating/Overlay;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 93
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 95
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lpubgm/loader/floating/Overlay;)Z
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/Overlay;

    .line 22
    invoke-direct {p0}, Lpubgm/loader/floating/Overlay;->getReady()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lpubgm/loader/floating/Overlay;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/Overlay;
    .param p1, "x1"    # Ljava/lang/String;

    .line 22
    invoke-direct {p0, p1}, Lpubgm/loader/floating/Overlay;->Shell(Ljava/lang/String;)V

    return-void
.end method

.method public static getConfig(Ljava/lang/String;)Z
    .locals 3
    .param p0, "key"    # Ljava/lang/String;

    .line 147
    sget-object v0, Lpubgm/loader/floating/Overlay;->ctx:Landroid/content/Context;

    const-string v1, "espValue"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 148
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private getNavigationBarHeight()I
    .locals 5

    .line 129
    invoke-static {p0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    .line 130
    .local v0, "hasMenuKey":Z
    invoke-virtual {p0}, Lpubgm/loader/floating/Overlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "navigation_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 131
    .local v1, "resourceId":I
    if-lez v1, :cond_0

    if-nez v0, :cond_0

    .line 132
    invoke-virtual {p0}, Lpubgm/loader/floating/Overlay;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    return v2

    .line 134
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private native getReady()Z
.end method


# virtual methods
.method public getPref()Lpubgm/loader/utils/FPrefs;
    .locals 1

    .line 33
    invoke-static {p0}, Lpubgm/loader/utils/FPrefs;->with(Landroid/content/Context;)Lpubgm/loader/utils/FPrefs;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 56
    sput-object p0, Lpubgm/loader/floating/Overlay;->ctx:Landroid/content/Context;

    .line 57
    invoke-direct {p0}, Lpubgm/loader/floating/Overlay;->Start()V

    .line 58
    sget-object v0, Lpubgm/loader/floating/Overlay;->ctx:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lpubgm/loader/floating/Overlay;->windowManager:Landroid/view/WindowManager;

    .line 59
    new-instance v0, Lpubgm/loader/floating/ESPView;

    sget-object v1, Lpubgm/loader/floating/Overlay;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lpubgm/loader/floating/ESPView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lpubgm/loader/floating/Overlay;->overlayView:Lpubgm/loader/floating/ESPView;

    .line 60
    invoke-direct {p0}, Lpubgm/loader/floating/Overlay;->DrawCanvas()V

    .line 61
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 65
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 66
    invoke-direct {p0}, Lpubgm/loader/floating/Overlay;->Close()V

    .line 67
    iget-object v0, p0, Lpubgm/loader/floating/Overlay;->overlayView:Lpubgm/loader/floating/ESPView;

    if-eqz v0, :cond_0

    .line 68
    iget-object v1, p0, Lpubgm/loader/floating/Overlay;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lpubgm/loader/floating/Overlay;->overlayView:Lpubgm/loader/floating/ESPView;

    .line 71
    :cond_0
    return-void
.end method

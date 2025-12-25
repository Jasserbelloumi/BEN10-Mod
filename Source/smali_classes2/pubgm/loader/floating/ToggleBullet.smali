.class public Lpubgm/loader/floating/ToggleBullet;
.super Landroid/app/Service;
.source "ToggleBullet.java"


# instance fields
.field private checkStatus:Z

.field private mainView:Landroid/view/View;

.field private miniFloatView:Landroid/widget/RelativeLayout;

.field private paramsView:Landroid/view/WindowManager$LayoutParams;

.field private windowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    :try_start_0
    const-string v0, "JungliCheatz"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    goto :goto_0

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "w":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 54
    .end local v0    # "w":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private InitShowMainView()V
    .locals 3

    .line 108
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet;->mainView:Landroid/view/View;

    const v1, 0x7f0a0259

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lpubgm/loader/floating/ToggleBullet;->miniFloatView:Landroid/widget/RelativeLayout;

    .line 109
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet;->mainView:Landroid/view/View;

    const v1, 0x7f0a020c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 110
    .local v0, "layoutView":Landroid/widget/RelativeLayout;
    iget-object v1, p0, Lpubgm/loader/floating/ToggleBullet;->mainView:Landroid/view/View;

    const v2, 0x7f0a01d0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 112
    .local v1, "myImageView":Landroid/widget/ImageView;
    new-instance v2, Lpubgm/loader/floating/ToggleBullet$1;

    invoke-direct {v2, p0, v1}, Lpubgm/loader/floating/ToggleBullet$1;-><init>(Lpubgm/loader/floating/ToggleBullet;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 159
    return-void
.end method

.method private ShowMainView()V
    .locals 3

    .line 68
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d00a8

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ToggleBullet;->mainView:Landroid/view/View;

    .line 69
    invoke-direct {p0}, Lpubgm/loader/floating/ToggleBullet;->getParaams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/ToggleBullet;->paramsView:Landroid/view/WindowManager$LayoutParams;

    .line 70
    const-string v0, "window"

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/ToggleBullet;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lpubgm/loader/floating/ToggleBullet;->windowManager:Landroid/view/WindowManager;

    .line 71
    iget-object v1, p0, Lpubgm/loader/floating/ToggleBullet;->mainView:Landroid/view/View;

    iget-object v2, p0, Lpubgm/loader/floating/ToggleBullet;->paramsView:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    invoke-direct {p0}, Lpubgm/loader/floating/ToggleBullet;->InitShowMainView()V

    .line 73
    return-void
.end method

.method static synthetic access$000(Lpubgm/loader/floating/ToggleBullet;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/ToggleBullet;

    .line 38
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet;->paramsView:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$100(Lpubgm/loader/floating/ToggleBullet;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/ToggleBullet;

    .line 38
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet;->miniFloatView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lpubgm/loader/floating/ToggleBullet;)Z
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/ToggleBullet;

    .line 38
    iget-boolean v0, p0, Lpubgm/loader/floating/ToggleBullet;->checkStatus:Z

    return v0
.end method

.method static synthetic access$202(Lpubgm/loader/floating/ToggleBullet;Z)Z
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/ToggleBullet;
    .param p1, "x1"    # Z

    .line 38
    iput-boolean p1, p0, Lpubgm/loader/floating/ToggleBullet;->checkStatus:Z

    return p1
.end method

.method static synthetic access$300(Lpubgm/loader/floating/ToggleBullet;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/ToggleBullet;

    .line 38
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet;->mainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lpubgm/loader/floating/ToggleBullet;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/ToggleBullet;

    .line 38
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet;->windowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private static getLayoutType()I
    .locals 2

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 96
    const/16 v0, 0x7f6

    .local v0, "LAYOUT_FLAG":I
    goto :goto_0

    .line 97
    .end local v0    # "LAYOUT_FLAG":I
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 98
    const/16 v0, 0x7d2

    .restart local v0    # "LAYOUT_FLAG":I
    goto :goto_0

    .line 99
    .end local v0    # "LAYOUT_FLAG":I
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 100
    const/16 v0, 0x7d5

    .restart local v0    # "LAYOUT_FLAG":I
    goto :goto_0

    .line 102
    .end local v0    # "LAYOUT_FLAG":I
    :cond_2
    const/16 v0, 0x7d3

    .line 104
    .restart local v0    # "LAYOUT_FLAG":I
    :goto_0
    return v0
.end method

.method private getParaams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 78
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 80
    invoke-static {}, Lpubgm/loader/floating/ToggleBullet;->getLayoutType()I

    move-result v3

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/16 v4, 0x8

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 81
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const-string v1, "espValue"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lpubgm/loader/floating/ToggleBullet;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 82
    const-string v3, "hiderecord"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 84
    .local v1, "isHideRecordEnabled":Z
    if-eqz v1, :cond_0

    .line 85
    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->setFakeRecorderWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 87
    :cond_0
    const/16 v3, 0x11

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 88
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 89
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 90
    return-object v0
.end method


# virtual methods
.method public native ToggleBullet(Z)V
.end method

.method public getPref()Lpubgm/loader/utils/FPrefs;
    .locals 1

    .line 75
    invoke-static {p0}, Lpubgm/loader/utils/FPrefs;->with(Landroid/content/Context;)Lpubgm/loader/utils/FPrefs;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 64
    invoke-direct {p0}, Lpubgm/loader/floating/ToggleBullet;->ShowMainView()V

    .line 65
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 163
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 164
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpubgm/loader/floating/ToggleBullet;->checkStatus:Z

    .line 165
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/ToggleBullet;->ToggleBullet(Z)V

    .line 166
    iget-object v0, p0, Lpubgm/loader/floating/ToggleBullet;->mainView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lpubgm/loader/floating/ToggleBullet;->windowManager:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 168
    :cond_0
    return-void
.end method

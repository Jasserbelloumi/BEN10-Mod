.class public Lpubgm/loader/floating/FloatService;
.super Landroid/app/Service;
.source "FloatService.java"


# static fields
.field public static typelogin:Ljava/lang/String;


# instance fields
.field ctx:Landroid/content/Context;

.field private isSelected:Z

.field private layout_icon_control_view:Landroid/widget/RelativeLayout;

.field private layout_main_view:Landroid/widget/LinearLayout;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mainView:Landroid/view/View;

.field private paramsMainView:Landroid/view/WindowManager$LayoutParams;

.field private windowManagerMainView:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    const-wide v0, -0x6c158c1d73e5L

    :try_start_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v0

    .line 58
    .local v0, "w":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 60
    .end local v0    # "w":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 893
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpubgm/loader/floating/FloatService;->isSelected:Z

    return-void
.end method

.method private DrawESP()V
    .locals 3

    .line 743
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 744
    const-wide v0, -0x6c988c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpubgm/loader/utils/FLog;->info(Ljava/lang/String;)V

    .line 745
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x6c8b8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lpubgm/loader/activity/MainActivity;->daemonPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/activity/MainActivity;->socket:Ljava/lang/String;

    .line 746
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpubgm/loader/floating/Overlay;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 748
    :cond_0
    const-wide v0, -0x6c8c8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpubgm/loader/utils/FLog;->info(Ljava/lang/String;)V

    .line 749
    sget-object v0, Lpubgm/loader/activity/MainActivity;->daemonPath:Ljava/lang/String;

    sput-object v0, Lpubgm/loader/activity/MainActivity;->socket:Ljava/lang/String;

    .line 750
    new-instance v0, Landroid/content/Intent;

    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/Overlay;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 752
    :goto_0
    return-void
.end method

.method private ExecuteElf(Ljava/lang/String;)V
    .locals 2
    .param p1, "shell"    # Ljava/lang/String;

    .line 775
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;[Ljava/lang/String;Ljava/io/File;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    goto :goto_0

    .line 776
    :catch_0
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 779
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private InitShowMainView()V
    .locals 7

    .line 194
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f14000b

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 195
    .local v0, "themedContext":Landroid/content/Context;
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 197
    .local v1, "themedInflater":Landroid/view/LayoutInflater;
    const v2, 0x7f0d0042

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    .line 198
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->getparams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, p0, Lpubgm/loader/floating/FloatService;->paramsMainView:Landroid/view/WindowManager$LayoutParams;

    .line 199
    const-wide v2, -0x71698c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lpubgm/loader/floating/FloatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    iput-object v2, p0, Lpubgm/loader/floating/FloatService;->windowManagerMainView:Landroid/view/WindowManager;

    .line 200
    iget-object v3, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    iget-object v4, p0, Lpubgm/loader/floating/FloatService;->paramsMainView:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v2, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    const v3, 0x7f0a020d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lpubgm/loader/floating/FloatService;->layout_icon_control_view:Landroid/widget/RelativeLayout;

    .line 202
    iget-object v2, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    const v3, 0x7f0a020e

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lpubgm/loader/floating/FloatService;->layout_main_view:Landroid/widget/LinearLayout;

    .line 203
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->adjustLayoutWidth()V

    .line 205
    iget-object v2, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    const v3, 0x7f0a012d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 206
    .local v2, "layout_close_main_view":Landroid/widget/ImageView;
    new-instance v3, Lpubgm/loader/floating/FloatService$1;

    invoke-direct {v3, p0}, Lpubgm/loader/floating/FloatService$1;-><init>(Lpubgm/loader/floating/FloatService;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 214
    iget-object v3, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    const v4, 0x7f0a020f

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 215
    .local v3, "layout_view":Landroid/widget/LinearLayout;
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->onTouchListener()Landroid/view/View$OnTouchListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 216
    iget-object v4, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    const v5, 0x7f0a0180

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lnl/joery/animatedbottombar/AnimatedBottomBar;

    .line 217
    .local v4, "esp_tabbar":Lnl/joery/animatedbottombar/AnimatedBottomBar;
    new-instance v5, Lpubgm/loader/floating/FloatService$2;

    invoke-direct {v5, p0}, Lpubgm/loader/floating/FloatService$2;-><init>(Lpubgm/loader/floating/FloatService;)V

    invoke-virtual {v4, v5}, Lnl/joery/animatedbottombar/AnimatedBottomBar;->setOnTabSelectListener(Lnl/joery/animatedbottombar/AnimatedBottomBar$OnTabSelectListener;)V

    .line 273
    iget-object v5, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    const v6, 0x7f0a0250

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 274
    .local v5, "menuf1":Landroid/widget/LinearLayout;
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 275
    iget-object v6, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    invoke-direct {p0, v6}, Lpubgm/loader/floating/FloatService;->visual(Landroid/view/View;)V

    .line 278
    return-void
.end method

.method private StartAimBulletFloat()V
    .locals 3

    .line 122
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleBullet;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 123
    return-void
.end method

.method private StartAimFloat()V
    .locals 3

    .line 114
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleAim;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 115
    return-void
.end method

.method private StartAimTouch()V
    .locals 3

    .line 106
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleSimulation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 107
    return-void
.end method

.method private StopAimBulletFloat()V
    .locals 3

    .line 126
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleBullet;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->stopService(Landroid/content/Intent;)Z

    .line 127
    return-void
.end method

.method private StopAimFloat()V
    .locals 3

    .line 118
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleAim;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->stopService(Landroid/content/Intent;)Z

    .line 119
    return-void
.end method

.method private StopAimTouch()V
    .locals 3

    .line 110
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lpubgm/loader/floating/ToggleSimulation;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->stopService(Landroid/content/Intent;)Z

    .line 111
    return-void
.end method

.method private StopESP()V
    .locals 2

    .line 783
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lpubgm/loader/floating/Overlay;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->stopService(Landroid/content/Intent;)Z

    .line 784
    return-void
.end method

.method static synthetic access$000(Lpubgm/loader/floating/FloatService;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    iget-object v0, p0, Lpubgm/loader/floating/FloatService;->layout_main_view:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$100(Lpubgm/loader/floating/FloatService;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    iget-object v0, p0, Lpubgm/loader/floating/FloatService;->layout_icon_control_view:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1000(Lpubgm/loader/floating/FloatService;)Landroid/view/WindowManager;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    iget-object v0, p0, Lpubgm/loader/floating/FloatService;->windowManagerMainView:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$1100(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 52
    invoke-direct {p0, p1, p2}, Lpubgm/loader/floating/FloatService;->setValue(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1200(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->DrawESP()V

    return-void
.end method

.method static synthetic access$1300(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->StopESP()V

    return-void
.end method

.method static synthetic access$1400(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->StopAimFloat()V

    return-void
.end method

.method static synthetic access$1500(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->StopAimBulletFloat()V

    return-void
.end method

.method static synthetic access$1600(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->StopAimTouch()V

    return-void
.end method

.method static synthetic access$1700(Lpubgm/loader/floating/FloatService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FloatService;->ExecuteElf(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lpubgm/loader/floating/FloatService;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FloatService;->eval(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lpubgm/loader/floating/FloatService;)Z
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    iget-boolean v0, p0, Lpubgm/loader/floating/FloatService;->isSelected:Z

    return v0
.end method

.method static synthetic access$1902(Lpubgm/loader/floating/FloatService;Z)Z
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # Z

    .line 52
    iput-boolean p1, p0, Lpubgm/loader/floating/FloatService;->isSelected:Z

    return p1
.end method

.method static synthetic access$200(Lpubgm/loader/floating/FloatService;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    iget-object v0, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Z)Z
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 52
    invoke-direct {p0, p1, p2}, Lpubgm/loader/floating/FloatService;->getConfigitem(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .line 52
    invoke-direct {p0, p1, p2}, Lpubgm/loader/floating/FloatService;->setConfigitem(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$2200(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->StartAimFloat()V

    return-void
.end method

.method static synthetic access$2300(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->StartAimTouch()V

    return-void
.end method

.method static synthetic access$2400(Lpubgm/loader/floating/FloatService;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->StartAimBulletFloat()V

    return-void
.end method

.method static synthetic access$2500(Lpubgm/loader/floating/FloatService;I)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # I

    .line 52
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FloatService;->getwideview(I)V

    return-void
.end method

.method static synthetic access$300(Lpubgm/loader/floating/FloatService;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FloatService;->visual(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$400(Lpubgm/loader/floating/FloatService;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FloatService;->items(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lpubgm/loader/floating/FloatService;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FloatService;->setupVehicleMenu(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$600(Lpubgm/loader/floating/FloatService;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FloatService;->aimbot(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lpubgm/loader/floating/FloatService;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;
    .param p1, "x1"    # Landroid/view/View;

    .line 52
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FloatService;->memory(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$800(Lpubgm/loader/floating/FloatService;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    iget-object v0, p0, Lpubgm/loader/floating/FloatService;->paramsMainView:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$900(Lpubgm/loader/floating/FloatService;)Z
    .locals 1
    .param p0, "x0"    # Lpubgm/loader/floating/FloatService;

    .line 52
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->isViewCollapsed()Z

    move-result v0

    return v0
.end method

.method private adjustLayoutWidth()V
    .locals 10

    .line 281
    const-wide v0, -0x71128c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 282
    .local v0, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 285
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 286
    .local v2, "size":Landroid/graphics/Point;
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 287
    iget v3, v2, Landroid/graphics/Point;->x:I

    .line 290
    .local v3, "screenWidth":I
    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->orientation:I

    .line 292
    .local v4, "orientation":I
    iget-object v5, p0, Lpubgm/loader/floating/FloatService;->layout_main_view:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 294
    .local v5, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/4 v6, 0x1

    if-ne v4, v6, :cond_0

    .line 296
    int-to-double v6, v3

    const-wide v8, 0x3feccccccccccccdL    # 0.9

    mul-double/2addr v6, v8

    double-to-int v6, v6

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 300
    .local v6, "density":F
    const/high16 v7, 0x43c80000    # 400.0f

    mul-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 304
    .end local v6    # "density":F
    :goto_0
    iget-object v6, p0, Lpubgm/loader/floating/FloatService;->layout_main_view:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 305
    return-void
.end method

.method private aimbot(Landroid/view/View;)V
    .locals 58
    .param p1, "aimbot"    # Landroid/view/View;

    .line 1294
    move-object/from16 v12, p0

    move-object/from16 v13, p1

    const v0, 0x7f0a038a

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/widget/TextView;

    .line 1295
    .local v14, "menutextaimtouch":Landroid/widget/TextView;
    const v0, 0x7f0a00dd

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Landroid/widget/TextView;

    .line 1296
    .local v15, "aimpre":Landroid/widget/TextView;
    const v0, 0x7f0a00de

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1297
    .local v11, "aimsec":Landroid/widget/LinearLayout;
    const v0, 0x7f0a02e7

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1298
    .local v10, "menurotation":Landroid/widget/LinearLayout;
    const v0, 0x7f0a00df

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1299
    .local v9, "aimspeedmenu":Landroid/widget/LinearLayout;
    const v0, 0x7f0a02cd

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1300
    .local v8, "recoilmenu":Landroid/widget/LinearLayout;
    const v0, 0x7f0a02ce

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1301
    .local v7, "recoilmenus2":Landroid/widget/LinearLayout;
    const v0, 0x7f0a0328

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/widget/LinearLayout;

    .line 1302
    .local v6, "smoothnessmenu":Landroid/widget/LinearLayout;
    const v0, 0x7f0a03a0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/widget/RadioButton;

    .line 1303
    .local v5, "touchsimulation":Landroid/widget/RadioButton;
    const v0, 0x7f0a0113

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/widget/RadioButton;

    .line 1304
    .local v4, "bullettrack":Landroid/widget/RadioButton;
    const v0, 0x7f0a00d6

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RadioButton;

    .line 1305
    .local v3, "aimbottt":Landroid/widget/RadioButton;
    const v0, 0x7f0a039f

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v16, v0

    check-cast v16, Landroid/widget/LinearLayout;

    .line 1306
    .local v16, "touchLocationmenu":Landroid/widget/LinearLayout;
    const v0, 0x7f0a03a2

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Landroid/widget/LinearLayout;

    .line 1307
    .local v17, "touchsizemenu":Landroid/widget/LinearLayout;
    const v0, 0x7f0a02b2

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v18, v0

    check-cast v18, Landroid/widget/LinearLayout;

    .line 1308
    .local v18, "posXmenu":Landroid/widget/LinearLayout;
    const v0, 0x7f0a02b3

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Landroid/widget/LinearLayout;

    .line 1309
    .local v19, "posYmenu":Landroid/widget/LinearLayout;
    const/16 v0, 0x8

    invoke-virtual {v15, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1310
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1311
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v10, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1312
    invoke-virtual {v9, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1313
    invoke-virtual {v8, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1314
    invoke-virtual {v7, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1315
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1316
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1317
    invoke-virtual {v5, v2}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 1318
    invoke-virtual {v4, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1319
    invoke-virtual {v4, v2}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 1320
    sget-boolean v21, Lpubgm/loader/activity/MainActivity;->modestatus:Z

    if-nez v21, :cond_0

    .line 1321
    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1322
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    goto :goto_0

    .line 1324
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1325
    invoke-virtual {v4, v0}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1327
    :goto_0
    invoke-virtual {v3, v1}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 1328
    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 1331
    iget-object v0, v12, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    const v1, 0x7f0a00d8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/widget/RadioGroup;

    .line 1332
    .local v2, "aimby":Landroid/widget/RadioGroup;
    iget-object v0, v12, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    const v1, 0x7f0a00e0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/RadioGroup;

    .line 1333
    .local v1, "aimwhen":Landroid/widget/RadioGroup;
    iget-object v0, v12, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    move-object/from16 v20, v3

    .end local v3    # "aimbottt":Landroid/widget/RadioButton;
    .local v20, "aimbottt":Landroid/widget/RadioButton;
    const v3, 0x7f0a00d7

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/widget/RadioGroup;

    .line 1334
    .local v3, "aimbotmode":Landroid/widget/RadioGroup;
    new-instance v0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda12;

    invoke-direct {v0, v12}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda12;-><init>(Lpubgm/loader/floating/FloatService;)V

    invoke-direct {v12, v2, v0}, Lpubgm/loader/floating/FloatService;->setupRadioGroup(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1335
    new-instance v0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda17;

    invoke-direct {v0, v12}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda17;-><init>(Lpubgm/loader/floating/FloatService;)V

    invoke-direct {v12, v1, v0}, Lpubgm/loader/floating/FloatService;->setupRadioGroup(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1336
    new-instance v0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda1;

    invoke-direct {v0, v12}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda1;-><init>(Lpubgm/loader/floating/FloatService;)V

    invoke-direct {v12, v3, v0}, Lpubgm/loader/floating/FloatService;->setupRadioGroup(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1339
    const v0, 0x7f0a02c8

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 1340
    .local v0, "rangeSeekBar":Landroid/widget/SeekBar;
    move-object/from16 v21, v1

    .end local v1    # "aimwhen":Landroid/widget/RadioGroup;
    .local v21, "aimwhen":Landroid/widget/RadioGroup;
    const v1, 0x7f0a02c9

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1341
    .local v1, "rangeText":Landroid/widget/TextView;
    move-object/from16 v22, v2

    .end local v2    # "aimby":Landroid/widget/RadioGroup;
    .local v22, "aimby":Landroid/widget/RadioGroup;
    invoke-direct/range {p0 .. p0}, Lpubgm/loader/floating/FloatService;->getrangeAim()I

    move-result v2

    move-object/from16 v23, v3

    .end local v3    # "aimbotmode":Landroid/widget/RadioGroup;
    .local v23, "aimbotmode":Landroid/widget/RadioGroup;
    new-instance v3, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda2;

    invoke-direct {v3, v12, v0}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda2;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v0, v1, v2, v3}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1349
    const v2, 0x7f0a0161

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/SeekBar;

    .line 1350
    .local v3, "distanceSeekBar":Landroid/widget/SeekBar;
    const v2, 0x7f0a0162

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1351
    .local v2, "distanceText":Landroid/widget/TextView;
    move-object/from16 v24, v0

    .end local v0    # "rangeSeekBar":Landroid/widget/SeekBar;
    .local v24, "rangeSeekBar":Landroid/widget/SeekBar;
    invoke-direct/range {p0 .. p0}, Lpubgm/loader/floating/FloatService;->getDistances()I

    move-result v0

    move-object/from16 v25, v1

    .end local v1    # "rangeText":Landroid/widget/TextView;
    .local v25, "rangeText":Landroid/widget/TextView;
    new-instance v1, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda3;

    invoke-direct {v1, v12, v3}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda3;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v3, v2, v0, v1}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1359
    const v0, 0x7f0a0111

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/SeekBar;

    .line 1360
    .local v1, "bulletSpeedSeekBar":Landroid/widget/SeekBar;
    const v0, 0x7f0a0112

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1361
    .local v0, "bulletSpeedText":Landroid/widget/TextView;
    move-object/from16 v26, v2

    .end local v2    # "distanceText":Landroid/widget/TextView;
    .local v26, "distanceText":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lpubgm/loader/floating/FloatService;->getbulletspeedAim()I

    move-result v2

    move-object/from16 v27, v3

    .end local v3    # "distanceSeekBar":Landroid/widget/SeekBar;
    .local v27, "distanceSeekBar":Landroid/widget/SeekBar;
    new-instance v3, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda4;

    invoke-direct {v3, v12, v1}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda4;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v1, v0, v2, v3}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1369
    const v2, 0x7f0a006b

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/SeekBar;

    .line 1370
    .local v3, "recoilSeekBar":Landroid/widget/SeekBar;
    const v2, 0x7f0a02cf

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1371
    .local v2, "recoilText":Landroid/widget/TextView;
    move-object/from16 v28, v0

    .end local v0    # "bulletSpeedText":Landroid/widget/TextView;
    .local v28, "bulletSpeedText":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lpubgm/loader/floating/FloatService;->getrecoilAim()I

    move-result v0

    move-object/from16 v29, v1

    .end local v1    # "bulletSpeedSeekBar":Landroid/widget/SeekBar;
    .local v29, "bulletSpeedSeekBar":Landroid/widget/SeekBar;
    new-instance v1, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda5;

    invoke-direct {v1, v12, v3}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda5;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v3, v2, v0, v1}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1378
    const v0, 0x7f0a006c

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/SeekBar;

    .line 1379
    .local v1, "recoilSeekBar2":Landroid/widget/SeekBar;
    const v0, 0x7f0a02d0

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1380
    .local v0, "recoilText2":Landroid/widget/TextView;
    move-object/from16 v30, v2

    .end local v2    # "recoilText":Landroid/widget/TextView;
    .local v30, "recoilText":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lpubgm/loader/floating/FloatService;->getrecoilAim2()I

    move-result v2

    move-object/from16 v31, v3

    .end local v3    # "recoilSeekBar":Landroid/widget/SeekBar;
    .local v31, "recoilSeekBar":Landroid/widget/SeekBar;
    new-instance v3, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda6;

    invoke-direct {v3, v12, v1}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda6;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v1, v0, v2, v3}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1387
    const v2, 0x7f0a006d

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/SeekBar;

    .line 1388
    .local v3, "recoilSeekBar3":Landroid/widget/SeekBar;
    const v2, 0x7f0a02d1

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1389
    .local v2, "recoilText3":Landroid/widget/TextView;
    move-object/from16 v32, v0

    .end local v0    # "recoilText2":Landroid/widget/TextView;
    .local v32, "recoilText2":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lpubgm/loader/floating/FloatService;->getrecoilAim3()I

    move-result v0

    move-object/from16 v33, v1

    .end local v1    # "recoilSeekBar2":Landroid/widget/SeekBar;
    .local v33, "recoilSeekBar2":Landroid/widget/SeekBar;
    new-instance v1, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda7;

    invoke-direct {v1, v12, v3}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda7;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v3, v2, v0, v1}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1394
    const v0, 0x7f0a03a1

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/SeekBar;

    .line 1395
    .local v1, "touchSizeSeekBar":Landroid/widget/SeekBar;
    const v0, 0x7f0a03a3

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1396
    .local v0, "touchSizeText":Landroid/widget/TextView;
    move-object/from16 v34, v2

    .end local v2    # "recoilText3":Landroid/widget/TextView;
    .local v34, "recoilText3":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/floating/FloatService;->getTouchSize()I

    move-result v2

    move-object/from16 v35, v3

    .end local v3    # "recoilSeekBar3":Landroid/widget/SeekBar;
    .local v35, "recoilSeekBar3":Landroid/widget/SeekBar;
    new-instance v3, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda8;

    invoke-direct {v3, v12, v1}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda8;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v1, v0, v2, v3}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1401
    const v2, 0x7f0a0399

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/SeekBar;

    .line 1402
    .local v3, "touchPosXSeekBar":Landroid/widget/SeekBar;
    const v2, 0x7f0a039a

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1403
    .local v2, "touchPosXText":Landroid/widget/TextView;
    move-object/from16 v36, v0

    .end local v0    # "touchSizeText":Landroid/widget/TextView;
    .local v36, "touchSizeText":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/floating/FloatService;->getTouchPosX()I

    move-result v0

    move-object/from16 v37, v1

    .end local v1    # "touchSizeSeekBar":Landroid/widget/SeekBar;
    .local v37, "touchSizeSeekBar":Landroid/widget/SeekBar;
    new-instance v1, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda13;

    invoke-direct {v1, v12, v3}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda13;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v3, v2, v0, v1}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1411
    const v0, 0x7f0a039b

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/SeekBar;

    .line 1412
    .local v1, "touchPosYSeekBar":Landroid/widget/SeekBar;
    const v0, 0x7f0a039c

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1413
    .local v0, "touchPosYText":Landroid/widget/TextView;
    move-object/from16 v38, v2

    .end local v2    # "touchPosXText":Landroid/widget/TextView;
    .local v38, "touchPosXText":Landroid/widget/TextView;
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/floating/FloatService;->getTouchPosY()I

    move-result v2

    move-object/from16 v39, v3

    .end local v3    # "touchPosXSeekBar":Landroid/widget/SeekBar;
    .local v39, "touchPosXSeekBar":Landroid/widget/SeekBar;
    new-instance v3, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda14;

    invoke-direct {v3, v12, v1}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda14;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v1, v0, v2, v3}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1421
    const v2, 0x7f0a0080

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/SeekBar;

    .line 1422
    .local v3, "smoothnessSeekBar":Landroid/widget/SeekBar;
    const v2, 0x7f0a0329

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1423
    .local v2, "smoothnessText":Landroid/widget/TextView;
    move-object/from16 v40, v0

    .end local v0    # "touchPosYText":Landroid/widget/TextView;
    .local v40, "touchPosYText":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lpubgm/loader/floating/FloatService;->getSmoothness()I

    move-result v0

    move-object/from16 v41, v1

    .end local v1    # "touchPosYSeekBar":Landroid/widget/SeekBar;
    .local v41, "touchPosYSeekBar":Landroid/widget/SeekBar;
    new-instance v1, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda15;

    invoke-direct {v1, v12, v3}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda15;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v3, v2, v0, v1}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1431
    const v0, 0x7f0a00da

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/SeekBar;

    .line 1432
    .local v1, "aimingSpeedSeekBar":Landroid/widget/SeekBar;
    const v0, 0x7f0a00db

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1433
    .local v0, "aimingSpeedText":Landroid/widget/TextView;
    move-object/from16 v42, v2

    .end local v2    # "smoothnessText":Landroid/widget/TextView;
    .local v42, "smoothnessText":Landroid/widget/TextView;
    invoke-direct/range {p0 .. p0}, Lpubgm/loader/floating/FloatService;->getAimSpeed()I

    move-result v2

    move-object/from16 v43, v3

    .end local v3    # "smoothnessSeekBar":Landroid/widget/SeekBar;
    .local v43, "smoothnessSeekBar":Landroid/widget/SeekBar;
    new-instance v3, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda16;

    invoke-direct {v3, v12, v1}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda16;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {v12, v1, v0, v2, v3}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1441
    const v2, 0x7f0a00dc

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Landroid/widget/Switch;

    .line 1443
    .local v3, "aimKnocked":Landroid/widget/Switch;
    const/4 v2, 0x3

    invoke-virtual {v12, v3, v2}, Lpubgm/loader/floating/FloatService;->setaim(Landroid/widget/Switch;I)V

    .line 1446
    const v2, 0x7f0a00d9

    invoke-virtual {v13, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 1447
    .local v2, "aimignore":Landroid/widget/Switch;
    move-object/from16 v44, v0

    .end local v0    # "aimingSpeedText":Landroid/widget/TextView;
    .local v44, "aimingSpeedText":Landroid/widget/TextView;
    const/4 v0, 0x4

    invoke-virtual {v12, v2, v0}, Lpubgm/loader/floating/FloatService;->setaim(Landroid/widget/Switch;I)V

    .line 1450
    const v0, 0x7f0a02e8

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 1452
    .local v0, "changerotation":Landroid/widget/Switch;
    move-object/from16 v45, v1

    .end local v1    # "aimingSpeedSeekBar":Landroid/widget/SeekBar;
    .local v45, "aimingSpeedSeekBar":Landroid/widget/SeekBar;
    const/4 v1, 0x5

    invoke-virtual {v12, v0, v1}, Lpubgm/loader/floating/FloatService;->setaim(Landroid/widget/Switch;I)V

    .line 1455
    const v1, 0x7f0a039e

    invoke-virtual {v13, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 1456
    .local v1, "touchlocation":Landroid/widget/Switch;
    move-object/from16 v46, v0

    .end local v0    # "changerotation":Landroid/widget/Switch;
    .local v46, "changerotation":Landroid/widget/Switch;
    const/4 v0, 0x6

    invoke-virtual {v12, v1, v0}, Lpubgm/loader/floating/FloatService;->setaim(Landroid/widget/Switch;I)V

    .line 1460
    const v0, 0x7f0a01b5

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    .line 1461
    .local v0, "aimgrup":Landroid/widget/RadioGroup;
    new-instance v12, Lpubgm/loader/floating/FloatService$19;

    move-object v13, v0

    .end local v0    # "aimgrup":Landroid/widget/RadioGroup;
    .local v13, "aimgrup":Landroid/widget/RadioGroup;
    move-object v0, v12

    move-object/from16 v47, v1

    .end local v1    # "touchlocation":Landroid/widget/Switch;
    .local v47, "touchlocation":Landroid/widget/Switch;
    move-object/from16 v1, p0

    move-object/from16 v48, v2

    .end local v2    # "aimignore":Landroid/widget/Switch;
    .local v48, "aimignore":Landroid/widget/Switch;
    move-object v2, v14

    move-object/from16 v49, v3

    .end local v3    # "aimKnocked":Landroid/widget/Switch;
    .local v49, "aimKnocked":Landroid/widget/Switch;
    move-object v3, v10

    move-object/from16 v50, v4

    .end local v4    # "bullettrack":Landroid/widget/RadioButton;
    .local v50, "bullettrack":Landroid/widget/RadioButton;
    move-object v4, v9

    move-object/from16 v51, v5

    .end local v5    # "touchsimulation":Landroid/widget/RadioButton;
    .local v51, "touchsimulation":Landroid/widget/RadioButton;
    move-object v5, v6

    move-object/from16 v52, v6

    .end local v6    # "smoothnessmenu":Landroid/widget/LinearLayout;
    .local v52, "smoothnessmenu":Landroid/widget/LinearLayout;
    move-object/from16 v6, v16

    move-object/from16 v53, v7

    .end local v7    # "recoilmenus2":Landroid/widget/LinearLayout;
    .local v53, "recoilmenus2":Landroid/widget/LinearLayout;
    move-object/from16 v7, v17

    move-object/from16 v54, v8

    .end local v8    # "recoilmenu":Landroid/widget/LinearLayout;
    .local v54, "recoilmenu":Landroid/widget/LinearLayout;
    move-object/from16 v55, v9

    .end local v9    # "aimspeedmenu":Landroid/widget/LinearLayout;
    .local v55, "aimspeedmenu":Landroid/widget/LinearLayout;
    move-object/from16 v9, v18

    move-object/from16 v56, v10

    .end local v10    # "menurotation":Landroid/widget/LinearLayout;
    .local v56, "menurotation":Landroid/widget/LinearLayout;
    move-object/from16 v10, v19

    move-object/from16 v57, v11

    .end local v11    # "aimsec":Landroid/widget/LinearLayout;
    .local v57, "aimsec":Landroid/widget/LinearLayout;
    move-object/from16 v11, v53

    invoke-direct/range {v0 .. v11}, Lpubgm/loader/floating/FloatService$19;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;)V

    invoke-virtual {v13, v12}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1525
    return-void
.end method

.method private eval(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "cmd"    # Ljava/lang/String;

    .line 386
    const-wide v0, -0x710f8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "Buff":Ljava/lang/String;
    const-wide v1, -0x710e8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 390
    .local v1, "newline":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    .line 391
    .local v2, "run":Ljava/lang/Runtime;
    invoke-virtual {v2, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 392
    .local v3, "pr":Ljava/lang/Process;
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I

    .line 393
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 394
    .local v4, "buf":Ljava/io/BufferedReader;
    const-wide v5, -0x713f8c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    .line 395
    .local v5, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    if-eqz v6, :cond_0

    .line 397
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_0

    .line 403
    .end local v2    # "run":Ljava/lang/Runtime;
    .end local v3    # "pr":Ljava/lang/Process;
    .end local v4    # "buf":Ljava/io/BufferedReader;
    .end local v5    # "line":Ljava/lang/String;
    :cond_0
    nop

    .line 404
    return-object v0

    .line 400
    :catch_0
    move-exception v2

    .line 402
    .local v2, "error":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getAimSpeed()I
    .locals 3

    .line 609
    const-wide v0, -0x732a8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 610
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v1, -0x6cd18c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x12

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getConfigitem(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "a"    # Z

    .line 585
    const-wide v0, -0x73068c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 586
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private getDistances()I
    .locals 4

    .line 477
    const-wide v0, -0x72ba8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 478
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v2, -0x72a18c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getEspValue(Ljava/lang/String;I)I
    .locals 2
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # I

    .line 597
    const-wide v0, -0x73348c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 598
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getFlagsType()I
    .locals 1

    .line 376
    const/16 v0, 0x8

    .line 378
    .local v0, "LAYOUT_FLAG":I
    return v0
.end method

.method private getFps()I
    .locals 3

    .line 433
    const-wide v0, -0x71258c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 434
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v1, -0x712c8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x64

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getLayoutType()I
    .locals 2

    .line 93
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 94
    const/16 v0, 0x7f6

    .local v0, "LAYOUT_FLAG":I
    goto :goto_0

    .line 95
    .end local v0    # "LAYOUT_FLAG":I
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 96
    const/16 v0, 0x7d2

    .restart local v0    # "LAYOUT_FLAG":I
    goto :goto_0

    .line 97
    .end local v0    # "LAYOUT_FLAG":I
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 98
    const/16 v0, 0x7d5

    .restart local v0    # "LAYOUT_FLAG":I
    goto :goto_0

    .line 100
    .end local v0    # "LAYOUT_FLAG":I
    :cond_2
    const/16 v0, 0x7d3

    .line 102
    .restart local v0    # "LAYOUT_FLAG":I
    :goto_0
    return v0
.end method

.method private getSmoothness()I
    .locals 3

    .line 621
    const-wide v0, -0x6cf08c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 622
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v1, -0x6cff8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getbulletspeedAim()I
    .locals 4

    .line 525
    const-wide v0, -0x73c48c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 526
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v2, -0x73f38c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getbulletspeedAim(I)V
    .locals 4
    .param p1, "getbulletspeedAim"    # I

    .line 530
    const-wide v0, -0x73e18c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 531
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 532
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x73e88c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 533
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 534
    return-void
.end method

.method private getparams()Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 356
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 359
    invoke-static {}, Lpubgm/loader/floating/FloatService;->getLayoutType()I

    move-result v3

    .line 360
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->getFlagsType()I

    move-result v4

    const/4 v1, -0x2

    const/4 v2, -0x2

    const/4 v5, -0x3

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 362
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    const-wide v1, -0x711b8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-wide v3, -0x71028c1d73e5L

    invoke-static {v3, v4}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 365
    .local v1, "isHideRecordEnabled":Z
    if-eqz v1, :cond_0

    .line 366
    invoke-static {v0}, Lpubgm/loader/floating/HideRecorder;->setFakeRecorderWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    .line 368
    :cond_0
    const/16 v3, 0x33

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 369
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 370
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 372
    return-object v0
.end method

.method private getradarSize()I
    .locals 4

    .line 460
    const-wide v0, -0x72ff8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 461
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v2, -0x72e68c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getrangeAim()I
    .locals 4

    .line 465
    const-wide v0, -0x72ec8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 466
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v2, -0x729b8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getrangeAim(I)V
    .locals 4
    .param p1, "getrangeAim"    # I

    .line 470
    const-wide v0, -0x72878c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 471
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 472
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x728e8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 473
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 474
    return-void
.end method

.method private getrecoilAim()I
    .locals 4

    .line 489
    const-wide v0, -0x725c8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 490
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v2, -0x724b8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getrecoilAim(I)V
    .locals 4
    .param p1, "getrecoilAim"    # I

    .line 494
    const-wide v0, -0x72768c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 495
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 496
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x727d8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 497
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 498
    return-void
.end method

.method private getrecoilAim2()I
    .locals 4

    .line 501
    const-wide v0, -0x72688c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 502
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v2, -0x72178c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getrecoilAim2(I)V
    .locals 4
    .param p1, "getrecoilAim"    # I

    .line 506
    const-wide v0, -0x72018c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 507
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 508
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x72088c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 509
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 510
    return-void
.end method

.method private getrecoilAim3()I
    .locals 4

    .line 513
    const-wide v0, -0x723a8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 514
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v2, -0x72218c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getrecoilAim3(I)V
    .locals 4
    .param p1, "getrecoilAim"    # I

    .line 518
    const-wide v0, -0x73d38c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 519
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 520
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x73da8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 521
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 522
    return-void
.end method

.method private getwideview()I
    .locals 4

    .line 537
    const-wide v0, -0x739e8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 538
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v2, -0x73858c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private getwideview(I)V
    .locals 4
    .param p1, "getwideview"    # I

    .line 542
    const-wide v0, -0x73b18c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 543
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 544
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x73b88c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 545
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 546
    return-void
.end method

.method private hideAllContentViews(Landroid/view/View;)V
    .locals 6
    .param p1, "rootView"    # Landroid/view/View;

    .line 1257
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1265
    .local v0, "contentIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1266
    .local v3, "id":I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 1267
    .local v4, "view":Landroid/view/View;
    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 1265
    .end local v3    # "id":I
    .end local v4    # "view":Landroid/view/View;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1270
    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f0a0335
        0x7f0a02f5
        0x7f0a00ee
        0x7f0a0045
        0x7f0a0079
        0x7f0a007a
        0x7f0a007e
        0x7f0a0062
        0x7f0a0055
        0x7f0a008c
        0x7f0a0008
        0x7f0a0039
        0x7f0a0137
        0x7f0a00f1
        0x7f0a0234
        0x7f0a01b1
        0x7f0a0298
    .end array-data
.end method

.method private isViewCollapsed()Z
    .locals 1

    .line 352
    iget-object v0, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lpubgm/loader/floating/FloatService;->layout_icon_control_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private items(Landroid/view/View;)V
    .locals 9
    .param p1, "items"    # Landroid/view/View;

    .line 994
    const v0, 0x7f0a0200

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 995
    .local v0, "menui1":Landroid/widget/LinearLayout;
    const v1, 0x7f0a0231

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 996
    .local v1, "menui2":Landroid/widget/LinearLayout;
    const v2, 0x7f0a0109

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 997
    .local v2, "bottomi1":Landroid/view/View;
    const v3, 0x7f0a010a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 1000
    .local v3, "bottomi2":Landroid/view/View;
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FloatService;->setupVerticalTabBar(Landroid/view/View;)V

    .line 1003
    const v4, 0x7f0a0335

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1004
    .local v4, "specialItems":Landroid/widget/LinearLayout;
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1007
    const v5, 0x7f0a0353

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    .line 1008
    .local v5, "firstTab":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060037

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1012
    new-instance v6, Lpubgm/loader/floating/FloatService$18;

    invoke-direct {v6, p0}, Lpubgm/loader/floating/FloatService$18;-><init>(Lpubgm/loader/floating/FloatService;)V

    .line 1031
    .local v6, "toggleListener":Landroid/view/View$OnClickListener;
    new-instance v7, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda11;

    invoke-direct {v7, p0, p1, v6}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda11;-><init>(Lpubgm/loader/floating/FloatService;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 1048
    .local v7, "setupView":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Integer;>;"
    const v8, 0x7f0a001e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1049
    const v8, 0x7f0a0007

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1050
    const v8, 0x7f0a0026

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1051
    const v8, 0x7f0a0031

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1052
    const v8, 0x7f0a022e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1055
    const v8, 0x7f0a0024

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1056
    const v8, 0x7f0a0233

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1057
    const v8, 0x7f0a0064

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1058
    const v8, 0x7f0a0072

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1059
    const v8, 0x7f0a0001

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1060
    const v8, 0x7f0a004a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1061
    const v8, 0x7f0a0005

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1062
    const v8, 0x7f0a004c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1063
    const v8, 0x7f0a0037

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1064
    const v8, 0x7f0a0052

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1065
    const v8, 0x7f0a004d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1066
    const v8, 0x7f0a0035

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1067
    const v8, 0x7f0a0023

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1068
    const v8, 0x7f0a004f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1069
    const v8, 0x7f0a002f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1070
    const v8, 0x7f0a003a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1071
    const/high16 v8, 0x7f0a0000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1072
    const v8, 0x7f0a0091

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1073
    const v8, 0x7f0a0103

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1074
    const v8, 0x7f0a0053

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1075
    const v8, 0x7f0a008e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1076
    const v8, 0x7f0a03c3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1077
    const v8, 0x7f0a005f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1078
    const v8, 0x7f0a0093

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1079
    const v8, 0x7f0a0006

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1080
    const v8, 0x7f0a0063

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1081
    const v8, 0x7f0a0044

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1082
    const v8, 0x7f0a004b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1083
    const v8, 0x7f0a0078

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1084
    const v8, 0x7f0a0077

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1085
    const v8, 0x7f0a0051

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1086
    const v8, 0x7f0a0056

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1087
    const v8, 0x7f0a0059

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1088
    const v8, 0x7f0a0094

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1089
    const v8, 0x7f0a0003

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1090
    const v8, 0x7f0a0096

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1091
    const v8, 0x7f0a0050

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1092
    const v8, 0x7f0a03db

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1093
    const v8, 0x7f0a03dc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1094
    const v8, 0x7f0a03dd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1095
    const v8, 0x7f0a03de

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1096
    const v8, 0x7f0a03df

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1097
    const v8, 0x7f0a011a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1098
    const v8, 0x7f0a01bf

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1099
    const v8, 0x7f0a02d9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1100
    const v8, 0x7f0a00f9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1101
    const v8, 0x7f0a00fa

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1102
    const v8, 0x7f0a00fb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1103
    const v8, 0x7f0a01ba

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1104
    const v8, 0x7f0a01bb

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1105
    const v8, 0x7f0a01bc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1106
    const v8, 0x7f0a03c6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1107
    const v8, 0x7f0a03c7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1108
    const v8, 0x7f0a03c8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1109
    const v8, 0x7f0a009c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1110
    const v8, 0x7f0a009b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1111
    const v8, 0x7f0a009a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1112
    const v8, 0x7f0a0098

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1113
    const v8, 0x7f0a0099

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1115
    const v8, 0x7f0a000d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1116
    const v8, 0x7f0a0097

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1117
    const v8, 0x7f0a0022

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1118
    const v8, 0x7f0a005c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1119
    const v8, 0x7f0a0071

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1120
    const v8, 0x7f0a02f2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1121
    const v8, 0x7f0a0049

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1122
    const v8, 0x7f0a0070

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1123
    const v8, 0x7f0a006f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1124
    const v8, 0x7f0a01b0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1125
    const v8, 0x7f0a025b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1126
    const v8, 0x7f0a034d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1127
    const v8, 0x7f0a0327

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1128
    const v8, 0x7f0a029d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1129
    const v8, 0x7f0a024f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1130
    const v8, 0x7f0a018d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1131
    const v8, 0x7f0a00fc

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1132
    const v8, 0x7f0a01e1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1133
    const v8, 0x7f0a017a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1134
    const v8, 0x7f0a0061

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1135
    const v8, 0x7f0a0020

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1136
    const v8, 0x7f0a007f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1137
    const v8, 0x7f0a0054

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1138
    const v8, 0x7f0a001f

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1139
    const v8, 0x7f0a002e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1140
    const v8, 0x7f0a0060

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1141
    const v8, 0x7f0a006a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1142
    const v8, 0x7f0a005d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1143
    const v8, 0x7f0a005e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1144
    const v8, 0x7f0a0069

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1145
    const v8, 0x7f0a007d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1146
    const v8, 0x7f0a001a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1147
    const v8, 0x7f0a001b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1148
    const v8, 0x7f0a0085

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1149
    const v8, 0x7f0a001c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1150
    const v8, 0x7f0a0033

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1151
    const v8, 0x7f0a0032

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1152
    const v8, 0x7f0a000b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1153
    const v8, 0x7f0a008a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1154
    const v8, 0x7f0a0027

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1155
    const v8, 0x7f0a0034

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1156
    const v8, 0x7f0a0038

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1157
    const v8, 0x7f0a0083

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1158
    const v8, 0x7f0a0086

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1159
    const v8, 0x7f0a0084

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1160
    const v8, 0x7f0a002b

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1161
    const v8, 0x7f0a0066

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1162
    const v8, 0x7f0a002c

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1163
    const v8, 0x7f0a0067

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1164
    const v8, 0x7f0a002d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1165
    const v8, 0x7f0a0028

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1166
    const v8, 0x7f0a0029

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1167
    const v8, 0x7f0a0065

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1168
    const v8, 0x7f0a002a

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1169
    const v8, 0x7f0a0068

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1170
    const v8, 0x7f0a0017

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1171
    const v8, 0x7f0a008d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1172
    const v8, 0x7f0a0047

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1173
    const v8, 0x7f0a0009

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1174
    const v8, 0x7f0a0048

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1175
    const v8, 0x7f0a0095

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1176
    const v8, 0x7f0a0036

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1177
    return-void
.end method

.method private loadbahasa()V
    .locals 4

    .line 86
    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 87
    .local v0, "sharedPreferences":Landroid/content/SharedPreferences;
    const-wide v1, -0x71618c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const-wide v2, -0x716a8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    .local v1, "bahasa":Ljava/lang/String;
    invoke-direct {p0, v1}, Lpubgm/loader/floating/FloatService;->setLokasi(Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method private memory(Landroid/view/View;)V
    .locals 8
    .param p1, "memory"    # Landroid/view/View;

    .line 1613
    const v0, 0x7f0a01f3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 1614
    .local v0, "less":Landroid/widget/Switch;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->memory(Landroid/widget/Switch;I)V

    .line 1615
    const v1, 0x7f0a01f5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 1616
    .local v1, "Cross":Landroid/widget/Switch;
    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Lpubgm/loader/floating/FloatService;->memory(Landroid/widget/Switch;I)V

    .line 1617
    const v2, 0x7f0a01e7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 1618
    .local v2, "amms":Landroid/widget/Switch;
    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Lpubgm/loader/floating/FloatService;->memory(Landroid/widget/Switch;I)V

    .line 1619
    const v3, 0x7f0a01f1

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Switch;

    .line 1620
    .local v3, "magic":Landroid/widget/Switch;
    new-instance v4, Lpubgm/loader/floating/FloatService$21;

    invoke-direct {v4, p0}, Lpubgm/loader/floating/FloatService$21;-><init>(Lpubgm/loader/floating/FloatService;)V

    invoke-virtual {v3, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1629
    const v4, 0x7f0a02cb

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    .line 1630
    .local v4, "wideviewSeekBar":Landroid/widget/SeekBar;
    const v5, 0x7f0a02ca

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1631
    .local v5, "wideviewText":Landroid/widget/TextView;
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->getwideview()I

    move-result v6

    new-instance v7, Lpubgm/loader/floating/FloatService$22;

    invoke-direct {v7, p0, v4}, Lpubgm/loader/floating/FloatService$22;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/SeekBar;)V

    invoke-virtual {p0, v4, v5, v6, v7}, Lpubgm/loader/floating/FloatService;->setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V

    .line 1638
    return-void
.end method

.method private onTouchListener()Landroid/view/View$OnTouchListener;
    .locals 1

    .line 308
    new-instance v0, Lpubgm/loader/floating/FloatService$3;

    invoke-direct {v0, p0}, Lpubgm/loader/floating/FloatService$3;-><init>(Lpubgm/loader/floating/FloatService;)V

    return-object v0
.end method

.method private setAimSpeed(I)V
    .locals 4
    .param p1, "AimingSpeed"    # I

    .line 614
    const-wide v0, -0x6cdd8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 615
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 616
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x6cc48c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 617
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 618
    return-void
.end method

.method private setConfigitem(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .line 590
    const-wide v0, -0x730d8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 591
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 592
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 593
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 594
    return-void
.end method

.method private setDistances(I)V
    .locals 4
    .param p1, "Distances"    # I

    .line 482
    const-wide v0, -0x72af8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 483
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 484
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x72568c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 485
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 486
    return-void
.end method

.method private setEspValue(Ljava/lang/String;I)V
    .locals 2
    .param p1, "a"    # Ljava/lang/String;
    .param p2, "b"    # I

    .line 602
    const-wide v0, -0x73238c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 603
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 604
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 605
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 606
    return-void
.end method

.method private setFps(I)V
    .locals 4
    .param p1, "fps"    # I

    .line 438
    const-wide v0, -0x72d08c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 439
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 440
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x72df8c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 441
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 442
    return-void
.end method

.method private setLokasi(Ljava/lang/String;)V
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;

    .line 72
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p1}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 73
    .local v0, "locale":Ljava/util/Locale;
    invoke-static {v0}, Ljava/util/Locale;->setDefault(Ljava/util/Locale;)V

    .line 74
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    .line 75
    .local v1, "config":Landroid/content/res/Configuration;
    iput-object v0, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 76
    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getBaseContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 78
    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 79
    .local v2, "sharedPreferences":Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 80
    .local v3, "editor":Landroid/content/SharedPreferences$Editor;
    const-wide v4, -0x71788c1d73e5L

    invoke-static {v4, v5}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 83
    return-void
.end method

.method private setSmoothness(I)V
    .locals 4
    .param p1, "smoothness"    # I

    .line 626
    const-wide v0, -0x6ce48c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 627
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 628
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x6c938c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 629
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 630
    return-void
.end method

.method private setValue(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "b"    # Z

    .line 445
    const-wide v0, -0x72c38c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 446
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 447
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 448
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 450
    return-void
.end method

.method private setradarSize(I)V
    .locals 4
    .param p1, "radarSize"    # I

    .line 453
    const-wide v0, -0x72ca8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 454
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 455
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x72f18c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 456
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 457
    return-void
.end method

.method private setupFpsRadioButton(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;I)V
    .locals 1
    .param p1, "button"    # Landroid/widget/RadioButton;
    .param p2, "other1"    # Landroid/widget/RadioButton;
    .param p3, "other2"    # Landroid/widget/RadioButton;
    .param p4, "fps"    # I

    .line 980
    new-instance v0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda9;

    invoke-direct {v0, p0, p2, p3, p4}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda9;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/RadioButton;Landroid/widget/RadioButton;I)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 989
    return-void
.end method

.method private setupFpsRadioButtons(Landroid/view/View;)V
    .locals 10
    .param p1, "visual"    # Landroid/view/View;

    .line 953
    const v0, 0x7f0a019b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 954
    .local v0, "fps3":Landroid/widget/RadioButton;
    const v1, 0x7f0a0199

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 955
    .local v1, "fps4":Landroid/widget/RadioButton;
    const v2, 0x7f0a019a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RadioButton;

    .line 957
    .local v2, "fps5":Landroid/widget/RadioButton;
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->getFps()I

    move-result v3

    .line 958
    .local v3, "CheckFps":I
    const/16 v4, 0x78

    const-wide/16 v5, 0x10

    const/16 v7, 0x5a

    const/16 v8, 0x3c

    const/4 v9, 0x1

    if-ne v3, v8, :cond_0

    .line 959
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 960
    sput-wide v5, Lpubgm/loader/floating/ESPView;->sleepTime:J

    goto :goto_0

    .line 961
    :cond_0
    if-ne v3, v7, :cond_1

    .line 962
    invoke-virtual {v1, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 963
    const-wide/16 v5, 0xb

    sput-wide v5, Lpubgm/loader/floating/ESPView;->sleepTime:J

    goto :goto_0

    .line 964
    :cond_1
    if-ne v3, v4, :cond_2

    .line 965
    invoke-virtual {v2, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 966
    const-wide/16 v5, 0x8

    sput-wide v5, Lpubgm/loader/floating/ESPView;->sleepTime:J

    goto :goto_0

    .line 968
    :cond_2
    invoke-virtual {v0, v9}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 969
    sput-wide v5, Lpubgm/loader/floating/ESPView;->sleepTime:J

    .line 972
    :goto_0
    invoke-direct {p0, v0, v1, v2, v8}, Lpubgm/loader/floating/FloatService;->setupFpsRadioButton(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;I)V

    .line 973
    invoke-direct {p0, v1, v0, v2, v7}, Lpubgm/loader/floating/FloatService;->setupFpsRadioButton(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;I)V

    .line 974
    invoke-direct {p0, v2, v0, v1, v4}, Lpubgm/loader/floating/FloatService;->setupFpsRadioButton(Landroid/widget/RadioButton;Landroid/widget/RadioButton;Landroid/widget/RadioButton;I)V

    .line 976
    return-void
.end method

.method private setupPlayerNationItem(Landroid/view/View;I)V
    .locals 2
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "viewId"    # I

    .line 896
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 899
    .local v0, "item":Landroid/widget/TextView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 900
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 903
    iget-boolean v1, p0, Lpubgm/loader/floating/FloatService;->isSelected:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0800d9

    goto :goto_0

    :cond_0
    const v1, 0x7f0800da

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 906
    new-instance v1, Lpubgm/loader/floating/FloatService$16;

    invoke-direct {v1, p0}, Lpubgm/loader/floating/FloatService$16;-><init>(Lpubgm/loader/floating/FloatService;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 924
    return-void
.end method

.method private setupRadioGroup(Landroid/widget/RadioGroup;Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 1
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "listener"    # Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1641
    new-instance v0, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda0;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    invoke-virtual {p1, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1650
    return-void
.end method

.method private setupTabButton(Landroid/view/View;ILandroid/view/View;)V
    .locals 2
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "tabId"    # I
    .param p3, "contentView"    # Landroid/view/View;

    .line 1240
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 1242
    .local v0, "tabButton":Landroid/widget/ImageView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 1243
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 1245
    new-instance v1, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p3, p2}, Lpubgm/loader/floating/FloatService$$ExternalSyntheticLambda10;-><init>(Lpubgm/loader/floating/FloatService;Landroid/view/View;Landroid/view/View;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1254
    return-void
.end method

.method private setupVehicleMenu(Landroid/view/View;)V
    .locals 25
    .param p1, "vehicle"    # Landroid/view/View;

    .line 1529
    move-object/from16 v0, p0

    new-instance v1, Lpubgm/loader/floating/FloatService$20;

    invoke-direct {v1, v0}, Lpubgm/loader/floating/FloatService$20;-><init>(Lpubgm/loader/floating/FloatService;)V

    .line 1544
    .local v1, "toggleListener":Landroid/view/View$OnClickListener;
    iget-object v2, v0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    const v3, 0x7f0a0252

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1546
    .local v2, "vehicleMenu":Landroid/widget/LinearLayout;
    const v3, 0x7f0a0092

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1547
    .local v3, "UTV":Landroid/widget/TextView;
    invoke-virtual {v0, v3}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1549
    const v4, 0x7f0a0011

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1550
    .local v4, "BUGGY":Landroid/widget/TextView;
    invoke-virtual {v0, v4}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1552
    const v5, 0x7f0a0090

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 1553
    .local v5, "UAZ":Landroid/widget/TextView;
    invoke-virtual {v0, v5}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1555
    const v6, 0x7f0a0089

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1556
    .local v6, "TRIKE":Landroid/widget/TextView;
    invoke-virtual {v0, v6}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1558
    const v7, 0x7f0a000c

    invoke-virtual {v2, v7}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1559
    .local v7, "BIKE":Landroid/widget/TextView;
    invoke-virtual {v0, v7}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1561
    const v8, 0x7f0a0021

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1562
    .local v8, "DACIA":Landroid/widget/TextView;
    invoke-virtual {v0, v8}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1564
    const v9, 0x7f0a0043

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1565
    .local v9, "JET":Landroid/widget/TextView;
    invoke-virtual {v0, v9}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1567
    const v10, 0x7f0a0016

    invoke-virtual {v2, v10}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 1568
    .local v10, "Boat":Landroid/widget/TextView;
    invoke-virtual {v0, v10}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1570
    const v11, 0x7f0a007c

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 1571
    .local v11, "Scooter":Landroid/widget/TextView;
    invoke-virtual {v0, v11}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1573
    const v12, 0x7f0a0018

    invoke-virtual {v2, v12}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1574
    .local v12, "Bus":Landroid/widget/TextView;
    invoke-virtual {v0, v12}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1576
    const v13, 0x7f0a0057

    invoke-virtual {v2, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1577
    .local v13, "Mirado":Landroid/widget/TextView;
    invoke-virtual {v0, v13}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1579
    const v14, 0x7f0a006e

    invoke-virtual {v2, v14}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1580
    .local v14, "Rony":Landroid/widget/TextView;
    invoke-virtual {v0, v14}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1582
    const v15, 0x7f0a0081

    invoke-virtual {v2, v15}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    .line 1583
    .local v15, "Snowbike":Landroid/widget/TextView;
    invoke-virtual {v0, v15}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1585
    move-object/from16 v16, v1

    .end local v1    # "toggleListener":Landroid/view/View$OnClickListener;
    .local v16, "toggleListener":Landroid/view/View$OnClickListener;
    const v1, 0x7f0a0082

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1586
    .local v1, "Snowmobile":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1588
    move-object/from16 v17, v1

    .end local v1    # "Snowmobile":Landroid/widget/TextView;
    .local v17, "Snowmobile":Landroid/widget/TextView;
    const v1, 0x7f0a008b

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1589
    .local v1, "Tempo":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1591
    move-object/from16 v18, v1

    .end local v1    # "Tempo":Landroid/widget/TextView;
    .local v18, "Tempo":Landroid/widget/TextView;
    const v1, 0x7f0a008f

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1592
    .local v1, "Truck":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1594
    move-object/from16 v19, v1

    .end local v1    # "Truck":Landroid/widget/TextView;
    .local v19, "Truck":Landroid/widget/TextView;
    const v1, 0x7f0a0058

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1595
    .local v1, "MonsterTruck":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1597
    move-object/from16 v20, v1

    .end local v1    # "MonsterTruck":Landroid/widget/TextView;
    .local v20, "MonsterTruck":Landroid/widget/TextView;
    const v1, 0x7f0a0010

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1598
    .local v1, "BRDM":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1600
    move-object/from16 v21, v1

    .end local v1    # "BRDM":Landroid/widget/TextView;
    .local v21, "BRDM":Landroid/widget/TextView;
    const v1, 0x7f0a0004

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1601
    .local v1, "ATV":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1603
    move-object/from16 v22, v1

    .end local v1    # "ATV":Landroid/widget/TextView;
    .local v22, "ATV":Landroid/widget/TextView;
    const v1, 0x7f0a0046

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1604
    .local v1, "LadaNiva":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1606
    move-object/from16 v23, v1

    .end local v1    # "LadaNiva":Landroid/widget/TextView;
    .local v23, "LadaNiva":Landroid/widget/TextView;
    const v1, 0x7f0a005a

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1607
    .local v1, "Motorglider":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1609
    move-object/from16 v24, v1

    .end local v1    # "Motorglider":Landroid/widget/TextView;
    .local v24, "Motorglider":Landroid/widget/TextView;
    const v1, 0x7f0a001d

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1610
    .local v1, "CoupeRB":Landroid/widget/TextView;
    invoke-virtual {v0, v1}, Lpubgm/loader/floating/FloatService;->vehicless(Landroid/widget/TextView;)V

    .line 1611
    return-void
.end method

.method private setupVerticalTabBar(Landroid/view/View;)V
    .locals 22
    .param p1, "rootView"    # Landroid/view/View;

    .line 1180
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const v2, 0x7f0a03c4

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1181
    .local v2, "verticalTabBar":Landroid/widget/LinearLayout;
    const v3, 0x7f0a0335

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    .line 1182
    .local v3, "specialItems":Landroid/widget/LinearLayout;
    const v4, 0x7f0a02f5

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 1183
    .local v4, "scope":Landroid/widget/LinearLayout;
    const v5, 0x7f0a00ee

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 1184
    .local v5, "arWeapons":Landroid/widget/LinearLayout;
    const v6, 0x7f0a0045

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    .line 1185
    .local v6, "lmgWeapons":Landroid/widget/LinearLayout;
    const v7, 0x7f0a0079

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    .line 1186
    .local v7, "smgWeapons":Landroid/widget/LinearLayout;
    const v8, 0x7f0a007a

    invoke-virtual {v1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 1187
    .local v8, "srWeapons":Landroid/widget/LinearLayout;
    const v9, 0x7f0a007e

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    .line 1188
    .local v9, "shotGuns":Landroid/widget/LinearLayout;
    const v10, 0x7f0a0062

    invoke-virtual {v1, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 1189
    .local v10, "pistols":Landroid/widget/LinearLayout;
    const v11, 0x7f0a0055

    invoke-virtual {v1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    .line 1190
    .local v11, "milliWeapons":Landroid/widget/LinearLayout;
    const v12, 0x7f0a008c

    invoke-virtual {v1, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    .line 1191
    .local v12, "throwables":Landroid/widget/LinearLayout;
    const v13, 0x7f0a0008

    invoke-virtual {v1, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 1192
    .local v13, "ammo":Landroid/widget/LinearLayout;
    const v14, 0x7f0a0039

    invoke-virtual {v1, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/LinearLayout;

    .line 1193
    .local v14, "helmetBag":Landroid/widget/LinearLayout;
    const v15, 0x7f0a0137

    invoke-virtual {v1, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    .line 1194
    .local v15, "consumables":Landroid/widget/LinearLayout;
    move-object/from16 v16, v2

    .end local v2    # "verticalTabBar":Landroid/widget/LinearLayout;
    .local v16, "verticalTabBar":Landroid/widget/LinearLayout;
    const v2, 0x7f0a00f1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1195
    .local v2, "attachments":Landroid/widget/LinearLayout;
    const v0, 0x7f0a0234

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1196
    .local v0, "magazines":Landroid/widget/LinearLayout;
    move-object/from16 v17, v0

    .end local v0    # "magazines":Landroid/widget/LinearLayout;
    .local v17, "magazines":Landroid/widget/LinearLayout;
    const v0, 0x7f0a01b1

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1197
    .local v0, "grips":Landroid/widget/LinearLayout;
    move-object/from16 v18, v0

    .end local v0    # "grips":Landroid/widget/LinearLayout;
    .local v18, "grips":Landroid/widget/LinearLayout;
    const v0, 0x7f0a0298

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1199
    .local v0, "others":Landroid/widget/LinearLayout;
    const/16 v1, 0x8

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1200
    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1201
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1202
    invoke-virtual {v6, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1203
    invoke-virtual {v7, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1204
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1205
    invoke-virtual {v9, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1206
    invoke-virtual {v10, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1207
    invoke-virtual {v11, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1208
    invoke-virtual {v12, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1209
    invoke-virtual {v13, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1210
    invoke-virtual {v14, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1211
    invoke-virtual {v15, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1212
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1213
    move-object/from16 v19, v2

    move-object/from16 v2, v17

    .end local v17    # "magazines":Landroid/widget/LinearLayout;
    .local v2, "magazines":Landroid/widget/LinearLayout;
    .local v19, "attachments":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1214
    move-object/from16 v2, v18

    .end local v18    # "grips":Landroid/widget/LinearLayout;
    .local v2, "grips":Landroid/widget/LinearLayout;
    .restart local v17    # "magazines":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1215
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1216
    const/4 v1, 0x0

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1220
    const v1, 0x7f0a0353

    move-object/from16 v18, v0

    move-object/from16 v20, v2

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .end local v0    # "others":Landroid/widget/LinearLayout;
    .end local v2    # "grips":Landroid/widget/LinearLayout;
    .local v18, "others":Landroid/widget/LinearLayout;
    .local v20, "grips":Landroid/widget/LinearLayout;
    invoke-direct {v0, v2, v1, v3}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1221
    const v1, 0x7f0a035c

    invoke-direct {v0, v2, v1, v4}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1222
    const v1, 0x7f0a035d

    invoke-direct {v0, v2, v1, v5}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1223
    const v1, 0x7f0a035e

    invoke-direct {v0, v2, v1, v6}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1224
    const v1, 0x7f0a035f

    invoke-direct {v0, v2, v1, v7}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1225
    const v1, 0x7f0a0360

    invoke-direct {v0, v2, v1, v8}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1226
    const v1, 0x7f0a0361

    invoke-direct {v0, v2, v1, v9}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1227
    const v1, 0x7f0a0362

    invoke-direct {v0, v2, v1, v10}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1228
    const v1, 0x7f0a0363

    invoke-direct {v0, v2, v1, v11}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1229
    const v1, 0x7f0a0354

    invoke-direct {v0, v2, v1, v12}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1230
    const v1, 0x7f0a0355

    invoke-direct {v0, v2, v1, v13}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1231
    const v1, 0x7f0a0356

    invoke-direct {v0, v2, v1, v14}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1232
    const v1, 0x7f0a0357

    invoke-direct {v0, v2, v1, v15}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1233
    const v1, 0x7f0a0358

    move-object/from16 v21, v3

    move-object/from16 v3, v19

    .end local v19    # "attachments":Landroid/widget/LinearLayout;
    .local v3, "attachments":Landroid/widget/LinearLayout;
    .local v21, "specialItems":Landroid/widget/LinearLayout;
    invoke-direct {v0, v2, v1, v3}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1234
    const v1, 0x7f0a0359

    move-object/from16 v3, v17

    .end local v17    # "magazines":Landroid/widget/LinearLayout;
    .local v3, "magazines":Landroid/widget/LinearLayout;
    .restart local v19    # "attachments":Landroid/widget/LinearLayout;
    invoke-direct {v0, v2, v1, v3}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1235
    const v1, 0x7f0a035a

    move-object/from16 v3, v20

    .end local v20    # "grips":Landroid/widget/LinearLayout;
    .local v3, "grips":Landroid/widget/LinearLayout;
    .restart local v17    # "magazines":Landroid/widget/LinearLayout;
    invoke-direct {v0, v2, v1, v3}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1236
    const v1, 0x7f0a035b

    move-object/from16 v3, v18

    .end local v18    # "others":Landroid/widget/LinearLayout;
    .local v3, "others":Landroid/widget/LinearLayout;
    .restart local v20    # "grips":Landroid/widget/LinearLayout;
    invoke-direct {v0, v2, v1, v3}, Lpubgm/loader/floating/FloatService;->setupTabButton(Landroid/view/View;ILandroid/view/View;)V

    .line 1237
    return-void
.end method

.method private setupVisualItem(Landroid/view/View;II)V
    .locals 4
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "code"    # I

    .line 926
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 929
    .local v0, "item":Landroid/widget/TextView;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 930
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 933
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 934
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lpubgm/loader/floating/FloatService;->getConfig(Ljava/lang/String;)Z

    move-result v2

    .line 935
    .local v2, "isSelected":Z
    if-eqz v2, :cond_0

    const v3, 0x7f0800d9

    goto :goto_0

    :cond_0
    const v3, 0x7f0800da

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 936
    invoke-virtual {p0, p3, v2}, Lpubgm/loader/floating/FloatService;->SettingValue(IZ)V

    .line 939
    new-instance v3, Lpubgm/loader/floating/FloatService$17;

    invoke-direct {v3, p0, p3}, Lpubgm/loader/floating/FloatService$17;-><init>(Lpubgm/loader/floating/FloatService;I)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 950
    return-void
.end method

.method private updateTabAppearance(Landroid/view/View;I)V
    .locals 7
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "selectedTabId"    # I

    .line 1273
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1280
    .local v0, "tabIds":[I
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget v3, v0, v2

    .line 1281
    .local v3, "id":I
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 1282
    .local v4, "tab":Landroid/widget/ImageView;
    if-ne v3, p2, :cond_0

    .line 1283
    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060037

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_1

    .line 1285
    :cond_0
    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f06006e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 1280
    .end local v3    # "id":I
    .end local v4    # "tab":Landroid/widget/ImageView;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1289
    :cond_1
    return-void

    :array_0
    .array-data 4
        0x7f0a0353
        0x7f0a035c
        0x7f0a035d
        0x7f0a035e
        0x7f0a035f
        0x7f0a0360
        0x7f0a0361
        0x7f0a0362
        0x7f0a0363
        0x7f0a0354
        0x7f0a0355
        0x7f0a0356
        0x7f0a0357
        0x7f0a0358
        0x7f0a0359
        0x7f0a035a
        0x7f0a035b
    .end array-data
.end method

.method private visual(Landroid/view/View;)V
    .locals 7
    .param p1, "visual"    # Landroid/view/View;

    .line 807
    const v0, 0x7f0a01ea

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    .line 808
    .local v0, "drawesp":Landroid/widget/Switch;
    new-instance v1, Lpubgm/loader/floating/FloatService$12;

    invoke-direct {v1, p0}, Lpubgm/loader/floating/FloatService$12;-><init>(Lpubgm/loader/floating/FloatService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 824
    const v1, 0x7f0a01ee

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    .line 825
    .local v1, "islandbypass":Landroid/widget/Switch;
    new-instance v2, Lpubgm/loader/floating/FloatService$13;

    invoke-direct {v2, p0}, Lpubgm/loader/floating/FloatService$13;-><init>(Lpubgm/loader/floating/FloatService;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 837
    const v2, 0x7f0a022c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    .line 838
    .local v2, "logobypass":Landroid/widget/Switch;
    new-instance v3, Lpubgm/loader/floating/FloatService$14;

    invoke-direct {v3, p0}, Lpubgm/loader/floating/FloatService$14;-><init>(Lpubgm/loader/floating/FloatService;)V

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 853
    iget-object v3, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    const v4, 0x7f0a0228

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 854
    .local v3, "lobbytxt":Landroid/widget/TextView;
    const v4, 0x7f0a0227

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Switch;

    .line 855
    .local v4, "lobbybypass":Landroid/widget/Switch;
    new-instance v5, Lpubgm/loader/floating/FloatService$15;

    invoke-direct {v5, p0, v3}, Lpubgm/loader/floating/FloatService$15;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/TextView;)V

    invoke-virtual {v4, v5}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 870
    const v5, 0x7f0a01ef

    const/4 v6, 0x2

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 871
    const v5, 0x7f0a01e5

    const/4 v6, 0x3

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 872
    const v5, 0x7f0a01f4

    const/4 v6, 0x4

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 873
    const v5, 0x7f0a01e9

    const/4 v6, 0x5

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 874
    const v5, 0x7f0a01ed

    const/4 v6, 0x6

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 875
    const v5, 0x7f0a01e6

    const/4 v6, 0x7

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 876
    const v5, 0x7f0a01ec

    const/16 v6, 0x8

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 877
    const v5, 0x7f0a01e8

    const/16 v6, 0x9

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 878
    const v5, 0x7f0a01f8

    const/16 v6, 0xa

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 879
    const v5, 0x7f0a01f7

    const/16 v6, 0xb

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 880
    const v5, 0x7f0a01f2

    const/16 v6, 0xf

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 881
    const v5, 0x7f0a01f9

    const/16 v6, 0x10

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 882
    const v5, 0x7f0a01f0

    const/16 v6, 0xe

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 883
    const v5, 0x7f0a02b0

    const/16 v6, 0x6f

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 884
    const v5, 0x7f0a02b1

    const/16 v6, 0xde

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 885
    const v5, 0x7f0a01f6

    const/16 v6, 0x71

    invoke-direct {p0, p1, v5, v6}, Lpubgm/loader/floating/FloatService;->setupVisualItem(Landroid/view/View;II)V

    .line 886
    const v5, 0x7f0a01eb

    invoke-direct {p0, p1, v5}, Lpubgm/loader/floating/FloatService;->setupPlayerNationItem(Landroid/view/View;I)V

    .line 888
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FloatService;->setupFpsRadioButtons(Landroid/view/View;)V

    .line 889
    return-void
.end method


# virtual methods
.method public native AimBy(I)V
.end method

.method public native AimWhen(I)V
.end method

.method public native AimingSpeed(I)V
.end method

.method public native Bulletspeed(I)V
.end method

.method public Exec(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "toast"    # Ljava/lang/String;

    .line 764
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x6c488c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x6c7f8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->ExecuteElf(Ljava/lang/String;)V

    .line 765
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x6c7d8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x6c668c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->ExecuteElf(Ljava/lang/String;)V

    .line 766
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x6c648c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x6c118c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->ExecuteElf(Ljava/lang/String;)V

    .line 767
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x6c178c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->ExecuteElf(Ljava/lang/String;)V

    .line 768
    const v0, 0x7f0800e8

    invoke-static {v0, p2}, Lpubgm/loader/utils/ActivityCompat;->toastImage(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    goto :goto_0

    .line 769
    :catch_0
    move-exception v0

    .line 771
    :goto_0
    return-void
.end method

.method public Execc(Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 755
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x6ca38c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x6c528c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->ExecuteElf(Ljava/lang/String;)V

    .line 756
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x6c508c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x6c598c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->ExecuteElf(Ljava/lang/String;)V

    .line 757
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x6c5f8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x6c448c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->ExecuteElf(Ljava/lang/String;)V

    .line 758
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x6c4a8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->ExecuteElf(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 760
    goto :goto_0

    .line 759
    :catch_0
    move-exception v0

    .line 761
    :goto_0
    return-void
.end method

.method public native RadarSize(I)V
.end method

.method public native Range(I)V
.end method

.method public native SettingAim(IZ)V
.end method

.method public native SettingMemory(IZ)V
.end method

.method public native SettingValue(IZ)V
.end method

.method public Skin(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .line 787
    const v0, 0x7f0a02ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 788
    .local v0, "pharaoh":Landroid/widget/TextView;
    const v1, 0x7f0a0105

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 789
    .local v1, "bloodreven":Landroid/widget/TextView;
    const v2, 0x7f0a02b5

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 790
    .local v2, "posreidon":Landroid/widget/TextView;
    const v3, 0x7f0a00f7

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 791
    .local v3, "avalache":Landroid/widget/TextView;
    const v4, 0x7f0a0322

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 792
    .local v4, "silvanus":Landroid/widget/TextView;
    const v5, 0x7f0a01e4

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 793
    .local v5, "iridescense":Landroid/widget/TextView;
    const v6, 0x7f0a00ec

    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 796
    .local v6, "aracane":Landroid/widget/TextView;
    const/4 v7, 0x1

    invoke-virtual {p0, v0, v7}, Lpubgm/loader/floating/FloatService;->skinvisual(Landroid/widget/TextView;I)V

    .line 797
    const/4 v7, 0x2

    invoke-virtual {p0, v1, v7}, Lpubgm/loader/floating/FloatService;->skinvisual(Landroid/widget/TextView;I)V

    .line 798
    const/4 v7, 0x3

    invoke-virtual {p0, v2, v7}, Lpubgm/loader/floating/FloatService;->skinvisual(Landroid/widget/TextView;I)V

    .line 799
    const/4 v7, 0x4

    invoke-virtual {p0, v3, v7}, Lpubgm/loader/floating/FloatService;->skinvisual(Landroid/widget/TextView;I)V

    .line 800
    const/4 v7, 0x5

    invoke-virtual {p0, v4, v7}, Lpubgm/loader/floating/FloatService;->skinvisual(Landroid/widget/TextView;I)V

    .line 801
    const/4 v7, 0x6

    invoke-virtual {p0, v5, v7}, Lpubgm/loader/floating/FloatService;->skinvisual(Landroid/widget/TextView;I)V

    .line 802
    const/4 v7, 0x7

    invoke-virtual {p0, v6, v7}, Lpubgm/loader/floating/FloatService;->skinvisual(Landroid/widget/TextView;I)V

    .line 803
    return-void
.end method

.method public native SkinHack(I)V
.end method

.method public native Smoothness(I)V
.end method

.method public native Target(I)V
.end method

.method public native TouchPosX(I)V
.end method

.method public native TouchPosY(I)V
.end method

.method public native TouchSize(I)V
.end method

.method public native WideView(I)V
.end method

.method public native distances(I)V
.end method

.method getConfig(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 428
    const-wide v0, -0x713e8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 429
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method getTouchPosX()I
    .locals 3

    .line 568
    const-wide v0, -0x73788c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 569
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v1, -0x73678c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x28a

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method getTouchPosY()I
    .locals 3

    .line 580
    const-wide v0, -0x73148c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 581
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v1, -0x73038c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x578

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method getTouchSize()I
    .locals 3

    .line 556
    const-wide v0, -0x73598c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 557
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-wide v1, -0x73408c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x258

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public itemss(Landroid/widget/CheckBox;)V
    .locals 1
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .line 679
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->getConfig(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 680
    new-instance v0, Lpubgm/loader/floating/FloatService$8;

    invoke-direct {v0, p0, p1}, Lpubgm/loader/floating/FloatService$8;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 686
    return-void
.end method

.method synthetic lambda$aimbot$10$pubgm-loader-floating-FloatService(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "recoilSeekBar2"    # Landroid/widget/SeekBar;

    .line 1381
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1382
    .local v0, "recoil":I
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->recoil2(I)V

    .line 1383
    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->getrecoilAim2(I)V

    .line 1384
    return-void
.end method

.method synthetic lambda$aimbot$11$pubgm-loader-floating-FloatService(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "recoilSeekBar3"    # Landroid/widget/SeekBar;

    .line 1390
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1391
    .local v0, "recoil":I
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->recoil3(I)V

    .line 1392
    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->getrecoilAim3(I)V

    .line 1393
    return-void
.end method

.method synthetic lambda$aimbot$12$pubgm-loader-floating-FloatService(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "touchSizeSeekBar"    # Landroid/widget/SeekBar;

    .line 1397
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1398
    .local v0, "size":I
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->setTouchSize(I)V

    .line 1399
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->TouchSize(I)V

    .line 1400
    return-void
.end method

.method synthetic lambda$aimbot$13$pubgm-loader-floating-FloatService(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "touchPosXSeekBar"    # Landroid/widget/SeekBar;

    .line 1404
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1405
    .local v0, "posX":I
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->setTouchPosX(I)V

    .line 1406
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->TouchPosX(I)V

    .line 1407
    return-void
.end method

.method synthetic lambda$aimbot$14$pubgm-loader-floating-FloatService(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "touchPosYSeekBar"    # Landroid/widget/SeekBar;

    .line 1414
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1415
    .local v0, "posY":I
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->setTouchPosY(I)V

    .line 1416
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->TouchPosY(I)V

    .line 1417
    return-void
.end method

.method synthetic lambda$aimbot$15$pubgm-loader-floating-FloatService(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "smoothnessSeekBar"    # Landroid/widget/SeekBar;

    .line 1424
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1425
    .local v0, "smoothness":I
    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->setSmoothness(I)V

    .line 1426
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->Smoothness(I)V

    .line 1427
    return-void
.end method

.method synthetic lambda$aimbot$16$pubgm-loader-floating-FloatService(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "aimingSpeedSeekBar"    # Landroid/widget/SeekBar;

    .line 1434
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1435
    .local v0, "speed":I
    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->setAimSpeed(I)V

    .line 1436
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->AimingSpeed(I)V

    .line 1437
    return-void
.end method

.method synthetic lambda$aimbot$3$pubgm-loader-floating-FloatService(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "value"    # I

    .line 1334
    invoke-virtual {p0, p2}, Lpubgm/loader/floating/FloatService;->AimBy(I)V

    return-void
.end method

.method synthetic lambda$aimbot$4$pubgm-loader-floating-FloatService(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "value"    # I

    .line 1335
    invoke-virtual {p0, p2}, Lpubgm/loader/floating/FloatService;->AimWhen(I)V

    return-void
.end method

.method synthetic lambda$aimbot$5$pubgm-loader-floating-FloatService(Landroid/widget/RadioGroup;I)V
    .locals 0
    .param p1, "group"    # Landroid/widget/RadioGroup;
    .param p2, "value"    # I

    .line 1336
    invoke-virtual {p0, p2}, Lpubgm/loader/floating/FloatService;->Target(I)V

    return-void
.end method

.method synthetic lambda$aimbot$6$pubgm-loader-floating-FloatService(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "rangeSeekBar"    # Landroid/widget/SeekBar;

    .line 1342
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1343
    .local v0, "range":I
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->Range(I)V

    .line 1344
    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->getrangeAim(I)V

    .line 1345
    return-void
.end method

.method synthetic lambda$aimbot$7$pubgm-loader-floating-FloatService(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "distanceSeekBar"    # Landroid/widget/SeekBar;

    .line 1352
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1353
    .local v0, "distance":I
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->distances(I)V

    .line 1354
    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->setDistances(I)V

    .line 1355
    return-void
.end method

.method synthetic lambda$aimbot$8$pubgm-loader-floating-FloatService(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "bulletSpeedSeekBar"    # Landroid/widget/SeekBar;

    .line 1362
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1363
    .local v0, "speed":I
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->Bulletspeed(I)V

    .line 1364
    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->getbulletspeedAim(I)V

    .line 1365
    return-void
.end method

.method synthetic lambda$aimbot$9$pubgm-loader-floating-FloatService(Landroid/widget/SeekBar;)V
    .locals 1
    .param p1, "recoilSeekBar"    # Landroid/widget/SeekBar;

    .line 1372
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    .line 1373
    .local v0, "recoil":I
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->recoil(I)V

    .line 1374
    invoke-direct {p0, v0}, Lpubgm/loader/floating/FloatService;->getrecoilAim(I)V

    .line 1375
    return-void
.end method

.method synthetic lambda$items$1$pubgm-loader-floating-FloatService(Landroid/view/View;Landroid/view/View$OnClickListener;Ljava/lang/Integer;)V
    .locals 4
    .param p1, "items"    # Landroid/view/View;
    .param p2, "toggleListener"    # Landroid/view/View$OnClickListener;
    .param p3, "id"    # Ljava/lang/Integer;

    .line 1032
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1034
    .local v0, "view":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1035
    .local v1, "key":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lpubgm/loader/floating/FloatService;->getConfigitem(Ljava/lang/String;Z)Z

    move-result v2

    .line 1036
    .local v2, "isSelected":Z
    if-eqz v2, :cond_0

    const v3, 0x7f0800d9

    goto :goto_0

    :cond_0
    const v3, 0x7f0800da

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 1039
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 1040
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 1043
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1045
    return-void
.end method

.method synthetic lambda$setupFpsRadioButton$0$pubgm-loader-floating-FloatService(Landroid/widget/RadioButton;Landroid/widget/RadioButton;ILandroid/widget/CompoundButton;Z)V
    .locals 1
    .param p1, "other1"    # Landroid/widget/RadioButton;
    .param p2, "other2"    # Landroid/widget/RadioButton;
    .param p3, "fps"    # I
    .param p4, "buttonView"    # Landroid/widget/CompoundButton;
    .param p5, "isChecked"    # Z

    .line 981
    if-eqz p5, :cond_0

    .line 982
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 983
    invoke-virtual {p2, v0}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 984
    invoke-direct {p0, p3}, Lpubgm/loader/floating/FloatService;->setFps(I)V

    .line 985
    invoke-static {p3}, Lpubgm/loader/floating/ESPView;->ChangeFps(I)V

    .line 987
    :cond_0
    return-void
.end method

.method synthetic lambda$setupRadioGroup$17$pubgm-loader-floating-FloatService(Landroid/widget/RadioGroup$OnCheckedChangeListener;Landroid/widget/RadioGroup;I)V
    .locals 2
    .param p1, "listener"    # Landroid/widget/RadioGroup$OnCheckedChangeListener;
    .param p2, "group"    # Landroid/widget/RadioGroup;
    .param p3, "checkedId"    # I

    .line 1642
    const/4 v0, -0x1

    if-eq p3, v0, :cond_0

    .line 1643
    iget-object v0, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    .line 1644
    .local v0, "selectedButton":Landroid/widget/RadioButton;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1645
    invoke-virtual {v0}, Landroid/widget/RadioButton;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1646
    .local v1, "value":I
    invoke-interface {p1, p2, v1}, Landroid/widget/RadioGroup$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/RadioGroup;I)V

    .line 1649
    .end local v0    # "selectedButton":Landroid/widget/RadioButton;
    .end local v1    # "value":I
    :cond_0
    return-void
.end method

.method synthetic lambda$setupTabButton$2$pubgm-loader-floating-FloatService(Landroid/view/View;Landroid/view/View;ILandroid/view/View;)V
    .locals 1
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "contentView"    # Landroid/view/View;
    .param p3, "tabId"    # I
    .param p4, "v"    # Landroid/view/View;

    .line 1247
    invoke-direct {p0, p1}, Lpubgm/loader/floating/FloatService;->hideAllContentViews(Landroid/view/View;)V

    .line 1249
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1251
    invoke-direct {p0, p1, p3}, Lpubgm/loader/floating/FloatService;->updateTabAppearance(Landroid/view/View;I)V

    .line 1252
    return-void
.end method

.method public memory(Landroid/widget/Switch;I)V
    .locals 1
    .param p1, "a"    # Landroid/widget/Switch;
    .param p2, "b"    # I

    .line 689
    new-instance v0, Lpubgm/loader/floating/FloatService$9;

    invoke-direct {v0, p0, p1, p2}, Lpubgm/loader/floating/FloatService$9;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/Switch;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 696
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .line 173
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .line 178
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 179
    invoke-virtual {p0}, Lpubgm/loader/floating/FloatService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lpubgm/loader/floating/FloatService;->ctx:Landroid/content/Context;

    .line 180
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->InitShowMainView()V

    .line 181
    invoke-direct {p0}, Lpubgm/loader/floating/FloatService;->loadbahasa()V

    .line 191
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 410
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 411
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lpubgm/loader/floating/FloatService$4;

    invoke-direct {v1, p0}, Lpubgm/loader/floating/FloatService$4;-><init>(Lpubgm/loader/floating/FloatService;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 416
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 417
    iget-object v0, p0, Lpubgm/loader/floating/FloatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 418
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 419
    const/4 v0, 0x0

    iput-object v0, p0, Lpubgm/loader/floating/FloatService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 422
    :cond_0
    iget-object v0, p0, Lpubgm/loader/floating/FloatService;->mainView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 423
    iget-object v1, p0, Lpubgm/loader/floating/FloatService;->windowManagerMainView:Landroid/view/WindowManager;

    invoke-interface {v1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 425
    :cond_1
    return-void
.end method

.method public native recoil(I)V
.end method

.method public native recoil2(I)V
.end method

.method public native recoil3(I)V
.end method

.method setTouchPosX(I)V
    .locals 4
    .param p1, "posX"    # I

    .line 561
    const-wide v0, -0x734e8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 562
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 563
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x73758c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 564
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 565
    return-void
.end method

.method setTouchPosY(I)V
    .locals 4
    .param p1, "posY"    # I

    .line 573
    const-wide v0, -0x736a8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 574
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 575
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x73118c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 576
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 577
    return-void
.end method

.method setTouchSize(I)V
    .locals 4
    .param p1, "touchsize"    # I

    .line 549
    const-wide v0, -0x73a48c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lpubgm/loader/floating/FloatService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 550
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 551
    .local v1, "ed":Landroid/content/SharedPreferences$Editor;
    const-wide v2, -0x73538c1d73e5L

    invoke-static {v2, v3}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 552
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 553
    return-void
.end method

.method public setaim(Landroid/widget/Switch;I)V
    .locals 1
    .param p1, "a"    # Landroid/widget/Switch;
    .param p2, "b"    # I

    .line 659
    new-instance v0, Lpubgm/loader/floating/FloatService$6;

    invoke-direct {v0, p0, p1, p2}, Lpubgm/loader/floating/FloatService$6;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/Switch;I)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 666
    return-void
.end method

.method setupSeekBar(Landroid/widget/SeekBar;Landroid/widget/TextView;ILjava/lang/Runnable;)V
    .locals 1
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "textView"    # Landroid/widget/TextView;
    .param p3, "initialValue"    # I
    .param p4, "onChangeFunction"    # Ljava/lang/Runnable;

    .line 722
    invoke-virtual {p1, p3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 723
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 724
    invoke-interface {p4}, Ljava/lang/Runnable;->run()V

    .line 725
    new-instance v0, Lpubgm/loader/floating/FloatService$11;

    invoke-direct {v0, p0, p2, p4}, Lpubgm/loader/floating/FloatService$11;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 740
    return-void
.end method

.method public setupVehicleCheckbox(Landroid/widget/CheckBox;)V
    .locals 1
    .param p1, "checkBox"    # Landroid/widget/CheckBox;

    .line 669
    invoke-virtual {p1}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->getConfig(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 670
    new-instance v0, Lpubgm/loader/floating/FloatService$7;

    invoke-direct {v0, p0, p1}, Lpubgm/loader/floating/FloatService$7;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/CheckBox;)V

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 676
    return-void
.end method

.method public skinvisual(Landroid/widget/TextView;I)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "code"    # I

    .line 635
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 636
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->getConfig(Ljava/lang/String;)Z

    move-result v1

    .line 637
    .local v1, "isSelected":Z
    if-eqz v1, :cond_0

    const v2, 0x7f0800d9

    goto :goto_0

    :cond_0
    const v2, 0x7f0800da

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 638
    invoke-virtual {p0, p2}, Lpubgm/loader/floating/FloatService;->SkinHack(I)V

    .line 641
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setClickable(Z)V

    .line 642
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 645
    new-instance v2, Lpubgm/loader/floating/FloatService$5;

    invoke-direct {v2, p0, v0, p1, p2}, Lpubgm/loader/floating/FloatService$5;-><init>(Lpubgm/loader/floating/FloatService;Ljava/lang/String;Landroid/widget/TextView;I)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    return-void
.end method

.method public vehicless(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .line 701
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setClickable(Z)V

    .line 702
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 705
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 706
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lpubgm/loader/floating/FloatService;->getConfig(Ljava/lang/String;)Z

    move-result v1

    .line 707
    .local v1, "isSelected":Z
    if-eqz v1, :cond_0

    const v2, 0x7f0800d9

    goto :goto_0

    :cond_0
    const v2, 0x7f0800da

    :goto_0
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 710
    new-instance v2, Lpubgm/loader/floating/FloatService$10;

    invoke-direct {v2, p0, p1}, Lpubgm/loader/floating/FloatService$10;-><init>(Lpubgm/loader/floating/FloatService;Landroid/widget/TextView;)V

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 720
    return-void
.end method

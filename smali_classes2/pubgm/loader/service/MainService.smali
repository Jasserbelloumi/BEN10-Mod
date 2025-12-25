.class public Lpubgm/loader/service/MainService;
.super Landroid/app/Service;
.source "MainService.java"


# static fields
.field private static instance:Lpubgm/loader/service/MainService;

.field public static isRunning:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    const/4 v0, 0x0

    sput-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    .line 20
    const-wide v0, -0x6ea88c1d73e5L

    :try_start_0
    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    goto :goto_0

    .line 21
    :catch_0
    move-exception v0

    .line 22
    .local v0, "w":Ljava/lang/UnsatisfiedLinkError;
    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 24
    .end local v0    # "w":Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static native InitBase()Ljava/lang/String;
.end method

.method private static RunServer()V
    .locals 4

    .line 69
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lpubgm/loader/service/MainService$1;

    invoke-direct {v1}, Lpubgm/loader/service/MainService$1;-><init>()V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "err":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 83
    invoke-static {}, Lpubgm/loader/service/MainService;->stopService()V

    .line 85
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method static synthetic access$000(ILjava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .line 14
    invoke-static {p0, p1}, Lpubgm/loader/service/MainService;->toast(ILjava/lang/CharSequence;)V

    return-void
.end method

.method public static native closeSocket()V
.end method

.method public static get()Lpubgm/loader/service/MainService;
    .locals 1

    .line 30
    sget-object v0, Lpubgm/loader/service/MainService;->instance:Lpubgm/loader/service/MainService;

    return-object v0
.end method

.method public static startService(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .line 34
    nop

    .line 39
    return-void
.end method

.method public static stopService()V
    .locals 1

    .line 42
    sget-object v0, Lpubgm/loader/service/MainService;->instance:Lpubgm/loader/service/MainService;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lpubgm/loader/service/MainService;->onDestroy()V

    .line 45
    :cond_0
    return-void
.end method

.method private static toast(ILjava/lang/CharSequence;)V
    .locals 2
    .param p0, "id"    # I
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 97
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->make()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v0

    .line 98
    .local v0, "_toast":Lcom/blankj/molihuan/utilcode/util/ToastUtils;
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setBgColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 99
    invoke-virtual {v0, p0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setLeftIcon(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 100
    const v1, 0x106000c

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setTextColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 101
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setNotUseSystemToast()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 102
    invoke-virtual {v0, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 103
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "arg0"    # Landroid/content/Intent;

    .line 49
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    .line 54
    sput-object p0, Lpubgm/loader/service/MainService;->instance:Lpubgm/loader/service/MainService;

    .line 55
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 58
    :try_start_0
    sget-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    if-nez v0, :cond_0

    .line 59
    invoke-static {}, Lpubgm/loader/service/MainService;->RunServer()V

    .line 60
    const/4 v0, 0x1

    sput-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :cond_0
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "err":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 65
    .end local v0    # "err":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 89
    invoke-static {}, Lpubgm/loader/service/MainService;->closeSocket()V

    .line 90
    const/4 v0, 0x0

    sput-boolean v0, Lpubgm/loader/service/MainService;->isRunning:Z

    .line 91
    invoke-virtual {p0}, Lpubgm/loader/service/MainService;->stopSelf()V

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lpubgm/loader/service/MainService;->instance:Lpubgm/loader/service/MainService;

    .line 93
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 94
    return-void
.end method

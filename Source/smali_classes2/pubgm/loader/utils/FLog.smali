.class public Lpubgm/loader/utils/FLog;
.super Ljava/lang/Object;
.source "FLog.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    const-class v0, Lpubgm/loader/utils/FLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/utils/FLog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debug(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 12
    sget-boolean v0, Lpubgm/loader/BuildConfig;->DEBUG:Z

    if-nez v0, :cond_0

    .line 13
    return-void

    .line 15
    :cond_0
    sget-object v0, Lpubgm/loader/utils/FLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void
.end method

.method public static error(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 33
    sget-boolean v0, Lpubgm/loader/BuildConfig;->DEBUG:Z

    if-nez v0, :cond_0

    .line 34
    return-void

    .line 36
    :cond_0
    sget-object v0, Lpubgm/loader/utils/FLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    return-void
.end method

.method public static info(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 19
    sget-boolean v0, Lpubgm/loader/BuildConfig;->DEBUG:Z

    if-nez v0, :cond_0

    .line 20
    return-void

    .line 22
    :cond_0
    sget-object v0, Lpubgm/loader/utils/FLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    return-void
.end method

.method public static warning(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 26
    sget-boolean v0, Lpubgm/loader/BuildConfig;->DEBUG:Z

    if-nez v0, :cond_0

    .line 27
    return-void

    .line 29
    :cond_0
    sget-object v0, Lpubgm/loader/utils/FLog;->TAG:Ljava/lang/String;

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method

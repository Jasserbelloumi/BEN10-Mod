.class public Lpubgm/loader/BoxApplication;
.super Landroidx/multidex/MultiDexApplication;
.source "BoxApplication.java"


# static fields
.field public static final STATUS_BY:Ljava/lang/String;

.field public static gApp:Lpubgm/loader/BoxApplication;


# instance fields
.field private isNetworkConnected:Z


# direct methods
.method private static constructor <clinit>()V
    .locals 2

    const-wide v0, -0x71e98c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lpubgm/loader/BoxApplication;->STATUS_BY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroidx/multidex/MultiDexApplication;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lpubgm/loader/BoxApplication;->isNetworkConnected:Z

    return-void
.end method

.method public static get()Lpubgm/loader/BoxApplication;
    .locals 1

    .line 29
    sget-object v0, Lpubgm/loader/BoxApplication;->gApp:Lpubgm/loader/BoxApplication;

    return-object v0
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "base"    # Landroid/content/Context;

    .line 42
    invoke-super {p0, p1}, Landroidx/multidex/MultiDexApplication;->attachBaseContext(Landroid/content/Context;)V

    .line 43
    invoke-static {p1}, Landroidx/multidex/MultiDex;->install(Landroid/content/Context;)V

    .line 44
    invoke-static {p1}, Lpubgm/loader/utils/FPrefs;->with(Landroid/content/Context;)Lpubgm/loader/utils/FPrefs;

    move-result-object v0

    .line 45
    .local v0, "prefs":Lpubgm/loader/utils/FPrefs;
    return-void
.end method

.method public checkRootAccess()Z
    .locals 2

    .line 65
    invoke-static {}, Lcom/topjohnwu/superuser/Shell;->rootAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-wide v0, -0x71d88c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpubgm/loader/utils/FLog;->info(Ljava/lang/String;)V

    .line 67
    const/4 v0, 0x1

    return v0

    .line 69
    :cond_0
    const-wide v0, -0x71cb8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpubgm/loader/utils/FLog;->info(Ljava/lang/String;)V

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public doChmod(Ljava/lang/String;I)V
    .locals 3
    .param p1, "shell"    # Ljava/lang/String;
    .param p2, "mask"    # I

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x71e28c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v1, -0x71eb8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lpubgm/loader/BoxApplication;->doExe(Ljava/lang/String;)V

    .line 94
    return-void
.end method

.method public doExe(Ljava/lang/String;)V
    .locals 3
    .param p1, "shell"    # Ljava/lang/String;

    .line 75
    invoke-virtual {p0}, Lpubgm/loader/BoxApplication;->checkRootAccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/topjohnwu/superuser/Shell;->su([Ljava/lang/String;)Lcom/topjohnwu/superuser/Shell$Job;

    move-result-object v0

    invoke-virtual {v0}, Lcom/topjohnwu/superuser/Shell$Job;->exec()Lcom/topjohnwu/superuser/Shell$Result;

    goto :goto_0

    .line 79
    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v1, -0x71fa8c1d73e5L

    invoke-static {v1, v2}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lpubgm/loader/utils/FLog;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 85
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    return-void
.end method

.method public doExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "shell"    # Ljava/lang/String;

    .line 88
    const/16 v0, 0x309

    invoke-virtual {p0, p1, v0}, Lpubgm/loader/BoxApplication;->doChmod(Ljava/lang/String;I)V

    .line 89
    invoke-virtual {p0, p1}, Lpubgm/loader/BoxApplication;->doExe(Ljava/lang/String;)V

    .line 90
    return-void
.end method

.method public isInternetAvailable()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lpubgm/loader/BoxApplication;->isNetworkConnected:Z

    return v0
.end method

.method public onCreate()V
    .locals 1

    .line 49
    invoke-super {p0}, Landroidx/multidex/MultiDexApplication;->onCreate()V

    .line 50
    sput-object p0, Lpubgm/loader/BoxApplication;->gApp:Lpubgm/loader/BoxApplication;

    .line 52
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->applyToActivitiesIfAvailable(Landroid/app/Application;)V

    .line 53
    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/appcompat/app/AppCompatDelegate;->setDefaultNightMode(I)V

    .line 54
    invoke-virtual {p0}, Lpubgm/loader/BoxApplication;->setCrashHandler()V

    .line 55
    new-instance v0, Lpubgm/loader/utils/NetworkConnection$CheckInternet;

    invoke-direct {v0, p0}, Lpubgm/loader/utils/NetworkConnection$CheckInternet;-><init>(Landroid/content/Context;)V

    .line 56
    .local v0, "network":Lpubgm/loader/utils/NetworkConnection$CheckInternet;
    invoke-virtual {v0}, Lpubgm/loader/utils/NetworkConnection$CheckInternet;->registerNetworkCallback()V

    .line 57
    return-void
.end method

.method public setCrashHandler()V
    .locals 1

    .line 61
    new-instance v0, Lpubgm/loader/activity/CrashHandler;

    invoke-direct {v0, p0}, Lpubgm/loader/activity/CrashHandler;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 62
    return-void
.end method

.method public setInternetAvailable(Z)V
    .locals 0
    .param p1, "b"    # Z

    .line 37
    iput-boolean p1, p0, Lpubgm/loader/BoxApplication;->isNetworkConnected:Z

    .line 38
    return-void
.end method

.method public showToastWithImage(ILjava/lang/CharSequence;)V
    .locals 2
    .param p1, "id"    # I
    .param p2, "msg"    # Ljava/lang/CharSequence;

    .line 101
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->make()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v0

    .line 102
    .local v0, "_toast":Lcom/blankj/molihuan/utilcode/util/ToastUtils;
    const v1, 0x106000b

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setBgColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 103
    invoke-virtual {v0, p1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setLeftIcon(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 104
    const v1, 0x106000c

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setTextColor(I)Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 105
    invoke-virtual {v0}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->setNotUseSystemToast()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    .line 106
    invoke-virtual {v0, p2}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->show(Ljava/lang/CharSequence;)V

    .line 107
    return-void
.end method

.method public toast(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/CharSequence;

    .line 97
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 98
    return-void
.end method

.class public Lpubgm/loader/libhelper/ApkEnv;
.super Ljava/lang/Object;
.source "ApkEnv.java"


# static fields
.field private static singleton:Lpubgm/loader/libhelper/ApkEnv;


# instance fields
.field obbContaine:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lpubgm/loader/libhelper/ApkEnv;
    .locals 1

    .line 24
    sget-object v0, Lpubgm/loader/libhelper/ApkEnv;->singleton:Lpubgm/loader/libhelper/ApkEnv;

    if-nez v0, :cond_0

    .line 25
    new-instance v0, Lpubgm/loader/libhelper/ApkEnv;

    invoke-direct {v0}, Lpubgm/loader/libhelper/ApkEnv;-><init>()V

    sput-object v0, Lpubgm/loader/libhelper/ApkEnv;->singleton:Lpubgm/loader/libhelper/ApkEnv;

    .line 27
    :cond_0
    sget-object v0, Lpubgm/loader/libhelper/ApkEnv;->singleton:Lpubgm/loader/libhelper/ApkEnv;

    return-object v0
.end method


# virtual methods
.method public getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    .line 33
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v1

    invoke-virtual {v1}, Lpubgm/loader/BoxApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 38
    nop

    .line 45
    return-object v0

    .line 34
    :catch_0
    move-exception v1

    .line 35
    .local v1, "err":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 36
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v2

    const v3, 0x7f0800f3

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lpubgm/loader/BoxApplication;->showToastWithImage(ILjava/lang/CharSequence;)V

    .line 37
    const/4 v2, 0x0

    return-object v2
.end method

.method public getApplicationInfoContainer(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 49
    invoke-virtual {p0, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v0

    const v2, 0x7f0800f3

    const-string v3, "App not install, install first"

    invoke-virtual {v0, v2, v3}, Lpubgm/loader/BoxApplication;->showToastWithImage(ILjava/lang/CharSequence;)V

    .line 51
    return-object v1

    .line 54
    :cond_0
    const/4 v0, 0x0

    .line 56
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-static {p1}, Lnet_62v/external/MetaPackageManager;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 59
    nop

    .line 60
    if-nez v0, :cond_1

    .line 61
    return-object v1

    .line 63
    :cond_1
    return-object v0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getObbContainerPath(Ljava/lang/String;)Ljava/io/File;
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 124
    :try_start_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Lnet_62v/external/MetaStorageManager;->obtainAppExternalStorageDir(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/obb"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public installByFile(Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 85
    invoke-virtual {p0, p1}, Lpubgm/loader/libhelper/ApkEnv;->getApplicationInfo(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 86
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_0

    .line 87
    const/4 v1, 0x0

    return v1

    .line 90
    :cond_0
    :try_start_0
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v1}, Lnet_62v/external/MetaApplicationInstaller;->installAppByPath(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    nop

    .line 94
    const/4 v1, 0x1

    return v1

    .line 91
    :catch_0
    move-exception v1

    .line 92
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public installByPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 99
    :try_start_0
    invoke-static {p1}, Lnet_62v/external/MetaApplicationInstaller;->cloneApp(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    nop

    .line 103
    const/4 v0, 0x1

    return v0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 68
    :try_start_0
    invoke-static {p1}, Lnet_62v/external/MetaPackageManager;->isInnerAppInstalled(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public isRunning(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 77
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Lnet_62v/external/MetaActivityManager;->isAppRunning(Ljava/lang/String;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public launchApk(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;

    .line 131
    invoke-virtual {p0, p1}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v0

    const v1, 0x7f080113

    const-string v2, "Client not installed"

    invoke-virtual {v0, v1, v2}, Lpubgm/loader/BoxApplication;->showToastWithImage(ILjava/lang/CharSequence;)V

    .line 133
    return-void

    .line 136
    :cond_0
    :try_start_0
    invoke-static {p1}, Lnet_62v/external/MetaActivityManager;->launchApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    nop

    .line 140
    return-void

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public stopRunningApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 116
    :try_start_0
    invoke-static {p1}, Lnet_62v/external/MetaActivityManager;->killAppByPkg(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    nop

    .line 120
    return-void

    .line 117
    :catch_0
    move-exception v0

    .line 118
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unInstallApp(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 108
    :try_start_0
    invoke-static {p1}, Lnet_62v/external/MetaPackageManager;->uninstallAppFully(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    nop

    .line 112
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

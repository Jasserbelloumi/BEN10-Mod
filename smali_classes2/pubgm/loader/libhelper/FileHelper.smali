.class public Lpubgm/loader/libhelper/FileHelper;
.super Ljava/lang/Object;
.source "FileHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static handleInstallationError(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Lpubgm/loader/activity/MainActivity;
    .param p1, "prog"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .param p2, "errorMessage"    # Ljava/lang/String;

    .line 167
    new-instance v0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p2}, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda1;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method static synthetic lambda$handleInstallationError$6(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Lpubgm/loader/activity/MainActivity;
    .param p1, "errorMessage"    # Ljava/lang/String;

    .line 168
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->doHideProgress()V

    .line 169
    invoke-static {}, Lpubgm/loader/utils/ActivityCompat;->getActivityCompat()Lpubgm/loader/utils/ActivityCompat;

    const v0, 0x7f0800f3

    invoke-static {v0, p1}, Lpubgm/loader/utils/ActivityCompat;->toastImage(ILjava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method static synthetic lambda$tryInstallWithCopyObb$0(Lpubgm/loader/activity/MainActivity;)V
    .locals 1
    .param p0, "activity"    # Lpubgm/loader/activity/MainActivity;

    .line 55
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->doHideProgress()V

    .line 56
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->doShowProgress(Z)V

    .line 57
    return-void
.end method

.method static synthetic lambda$tryInstallWithCopyObb$1(Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lpubgm/loader/activity/MainActivity;)V
    .locals 2
    .param p0, "prog"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .param p1, "activity"    # Lpubgm/loader/activity/MainActivity;

    .line 81
    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lpubgm/loader/activity/MainActivity;->updateButtonStates()V

    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndeterminate(Z)V

    .line 83
    invoke-virtual {p1}, Lpubgm/loader/activity/MainActivity;->doHideProgress()V

    .line 84
    invoke-static {}, Lpubgm/loader/utils/ActivityCompat;->getActivityCompat()Lpubgm/loader/utils/ActivityCompat;

    const-wide v0, -0x6e918c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800e8

    invoke-static {v1, v0}, Lpubgm/loader/utils/ActivityCompat;->toastImage(ILjava/lang/CharSequence;)V

    .line 85
    return-void
.end method

.method static synthetic lambda$tryInstallWithCopyObb$2(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V
    .locals 17
    .param p0, "activity"    # Lpubgm/loader/activity/MainActivity;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "prog"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 24
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 26
    .local v4, "info":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 29
    goto :goto_0

    .line 27
    :catch_0
    move-exception v0

    .line 28
    .local v0, "err":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 31
    .end local v0    # "err":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v4, :cond_0

    .line 32
    const-wide v5, -0x6d4b8c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lpubgm/loader/libhelper/FileHelper;->handleInstallationError(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    .line 33
    return-void

    .line 36
    :cond_0
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-wide v6, -0x6d608c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 37
    const-wide v5, -0x6d658c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lpubgm/loader/libhelper/FileHelper;->handleInstallationError(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    .line 38
    return-void

    .line 41
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x6d0a8c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v6, -0x6d0c8c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v6, -0x6d328c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 42
    .local v6, "gameObb":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v8, -0x6d358c1d73e5L

    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    .line 44
    .local v7, "obbDest":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 45
    const-wide v8, -0x6ed58c1d73e5L

    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lpubgm/loader/libhelper/FileHelper;->handleInstallationError(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    .line 46
    return-void

    .line 49
    :cond_2
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpubgm/loader/libhelper/ApkEnv;->getObbContainerPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 50
    .local v8, "virObbDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 52
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 54
    .local v9, "virObbDest":Ljava/io/File;
    new-instance v0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda2;

    invoke-direct {v0, v1}, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda2;-><init>(Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 60
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/blankj/molihuan/utilcode/util/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    nop

    .line 66
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 67
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpubgm/loader/libhelper/ApkEnv;->installByFile(Ljava/lang/String;)Z

    move-result v0

    .line 68
    .local v0, "installResult":Z
    if-nez v0, :cond_4

    .line 69
    const-wide v10, -0x6eca8c1d73e5L

    invoke-static {v10, v11}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lpubgm/loader/libhelper/FileHelper;->handleInstallationError(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    .line 70
    return-void

    .line 74
    .end local v0    # "installResult":Z
    :cond_4
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpubgm/loader/libhelper/ApkEnv;->getApplicationInfoContainer(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 75
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_5

    .line 76
    const-wide v10, -0x6ef98c1d73e5L

    invoke-static {v10, v11}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lpubgm/loader/libhelper/FileHelper;->handleInstallationError(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    .line 77
    return-void

    .line 80
    :cond_5
    new-instance v10, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda3;

    invoke-direct {v10, v3, v1}, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v1, v10}, Lpubgm/loader/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 87
    new-instance v10, Ljava/io/File;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 88
    .local v10, "listAbi":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v12, v11

    :goto_1
    if-ge v5, v12, :cond_6

    aget-object v13, v11, v5

    .line 89
    .local v13, "abi":Ljava/io/File;
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v16, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v0, 0x2f3

    invoke-virtual {v14, v15, v0}, Lpubgm/loader/BoxApplication;->doChmod(Ljava/lang/String;I)V

    .line 88
    .end local v13    # "abi":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    .line 91
    .end local v16    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    return-void

    .line 61
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "listAbi":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 62
    .local v0, "err":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method static synthetic lambda$tryInstallWithCopyObb32$3(Lpubgm/loader/activity/MainActivity;)V
    .locals 1
    .param p0, "activity"    # Lpubgm/loader/activity/MainActivity;

    .line 126
    invoke-virtual {p0}, Lpubgm/loader/activity/MainActivity;->doHideProgress()V

    .line 127
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lpubgm/loader/activity/MainActivity;->doShowProgress(Z)V

    .line 128
    return-void
.end method

.method static synthetic lambda$tryInstallWithCopyObb32$4(Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lpubgm/loader/activity/MainActivity;)V
    .locals 2
    .param p0, "prog"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .param p1, "activity"    # Lpubgm/loader/activity/MainActivity;

    .line 152
    invoke-static {}, Lpubgm/loader/activity/MainActivity;->get()Lpubgm/loader/activity/MainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lpubgm/loader/activity/MainActivity;->updateButtonStates()V

    .line 153
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/material/progressindicator/LinearProgressIndicator;->setIndeterminate(Z)V

    .line 154
    invoke-virtual {p1}, Lpubgm/loader/activity/MainActivity;->doHideProgress()V

    .line 155
    invoke-static {}, Lpubgm/loader/utils/ActivityCompat;->getActivityCompat()Lpubgm/loader/utils/ActivityCompat;

    const-wide v0, -0x6dad8c1d73e5L

    invoke-static {v0, v1}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0800e8

    invoke-static {v1, v0}, Lpubgm/loader/utils/ActivityCompat;->toastImage(ILjava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method static synthetic lambda$tryInstallWithCopyObb32$5(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V
    .locals 17
    .param p0, "activity"    # Lpubgm/loader/activity/MainActivity;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "prog"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;

    .line 95
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    .line 97
    .local v4, "info":Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lpubgm/loader/activity/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    .line 100
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "err":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 102
    .end local v0    # "err":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    if-nez v4, :cond_0

    .line 103
    const-wide v5, -0x6c008c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lpubgm/loader/libhelper/FileHelper;->handleInstallationError(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    .line 104
    return-void

    .line 107
    :cond_0
    iget-object v0, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    const-wide v6, -0x6c3d8c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 108
    const-wide v5, -0x6c228c1d73e5L

    invoke-static {v5, v6}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lpubgm/loader/libhelper/FileHelper;->handleInstallationError(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    .line 109
    return-void

    .line 112
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v6, -0x6dc68c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v6, v4, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v6, -0x6dc88c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v6, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-wide v6, -0x6dce8c1d73e5L

    invoke-static {v6, v7}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 113
    .local v6, "gameObb":Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-wide v8, -0x6df18c1d73e5L

    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v7, v0

    .line 115
    .local v7, "obbDest":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 116
    const-wide v8, -0x6d918c1d73e5L

    invoke-static {v8, v9}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lpubgm/loader/libhelper/FileHelper;->handleInstallationError(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    .line 117
    return-void

    .line 120
    :cond_2
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpubgm/loader/libhelper/ApkEnv;->getObbContainerPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 121
    .local v8, "virObbDir":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 123
    :cond_3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v8, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v9, v0

    .line 125
    .local v9, "virObbDest":Ljava/io/File;
    new-instance v0, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda5;

    invoke-direct {v0, v1}, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda5;-><init>(Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v1, v0}, Lpubgm/loader/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 131
    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/blankj/molihuan/utilcode/util/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 135
    nop

    .line 137
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpubgm/loader/libhelper/ApkEnv;->isInstalled(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 138
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpubgm/loader/libhelper/ApkEnv;->installByFile(Ljava/lang/String;)Z

    move-result v0

    .line 139
    .local v0, "installResult":Z
    if-nez v0, :cond_4

    .line 140
    const-wide v10, -0x6d868c1d73e5L

    invoke-static {v10, v11}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lpubgm/loader/libhelper/FileHelper;->handleInstallationError(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    .line 141
    return-void

    .line 145
    .end local v0    # "installResult":Z
    :cond_4
    invoke-static {}, Lpubgm/loader/libhelper/ApkEnv;->getInstance()Lpubgm/loader/libhelper/ApkEnv;

    move-result-object v0

    invoke-virtual {v0, v2}, Lpubgm/loader/libhelper/ApkEnv;->getApplicationInfoContainer(Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 146
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-nez v0, :cond_5

    .line 147
    const-wide v10, -0x6db58c1d73e5L

    invoke-static {v10, v11}, Lio/michaelrocks/paranoid/Deobfuscator$app$Debug;->getString(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v3, v5}, Lpubgm/loader/libhelper/FileHelper;->handleInstallationError(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V

    .line 148
    return-void

    .line 151
    :cond_5
    new-instance v10, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda6;

    invoke-direct {v10, v3, v1}, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda6;-><init>(Lcom/google/android/material/progressindicator/LinearProgressIndicator;Lpubgm/loader/activity/MainActivity;)V

    invoke-virtual {v1, v10}, Lpubgm/loader/activity/MainActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 158
    new-instance v10, Ljava/io/File;

    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    .local v10, "listAbi":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    array-length v12, v11

    :goto_1
    if-ge v5, v12, :cond_6

    aget-object v13, v11, v5

    .line 160
    .local v13, "abi":Ljava/io/File;
    invoke-static {}, Lpubgm/loader/BoxApplication;->get()Lpubgm/loader/BoxApplication;

    move-result-object v14

    invoke-virtual {v13}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v0

    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .local v16, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    const/16 v0, 0x2f3

    invoke-virtual {v14, v15, v0}, Lpubgm/loader/BoxApplication;->doChmod(Ljava/lang/String;I)V

    .line 159
    .end local v13    # "abi":Ljava/io/File;
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v16

    goto :goto_1

    .line 162
    .end local v16    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :cond_6
    return-void

    .line 132
    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    .end local v10    # "listAbi":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 133
    .local v0, "err":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lpubgm/loader/utils/FLog;->error(Ljava/lang/String;)V

    .line 134
    return-void
.end method

.method public static tryInstallWithCopyObb(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Lpubgm/loader/activity/MainActivity;
    .param p1, "prog"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2, p1}, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda4;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 91
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 92
    return-void
.end method

.method public static tryInstallWithCopyObb32(Lpubgm/loader/activity/MainActivity;Lcom/google/android/material/progressindicator/LinearProgressIndicator;Ljava/lang/String;)V
    .locals 2
    .param p0, "activity"    # Lpubgm/loader/activity/MainActivity;
    .param p1, "prog"    # Lcom/google/android/material/progressindicator/LinearProgressIndicator;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, p1}, Lpubgm/loader/libhelper/FileHelper$$ExternalSyntheticLambda0;-><init>(Lpubgm/loader/activity/MainActivity;Ljava/lang/String;Lcom/google/android/material/progressindicator/LinearProgressIndicator;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 162
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 163
    return-void
.end method

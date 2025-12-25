.class final Lcom/hjq/permissions/GetInstalledAppsPermissionCompat;
.super Ljava/lang/Object;
.source "GetInstalledAppsPermissionCompat.java"


# static fields
.field private static final MIUI_OP_GET_INSTALLED_APPS_DEFAULT_VALUE:I = 0x2726

.field private static final MIUI_OP_GET_INSTALLED_APPS_FIELD_NAME:Ljava/lang/String; = "OP_GET_INSTALLED_APPS"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 72
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiuiOptimization()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 75
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getMiuiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 78
    :cond_0
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 79
    return-object v0

    .line 82
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static isGrantedPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 25
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_4()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 26
    return v1

    .line 29
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid6()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/hjq/permissions/GetInstalledAppsPermissionCompat;->isSupportGetInstalledAppsPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 33
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/hjq/permissions/GetInstalledAppsPermissionCompat;->isMiuiSupportGetInstalledAppsPermission()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 34
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiuiOptimization()Z

    move-result v0

    if-nez v0, :cond_2

    .line 38
    return v1

    .line 41
    :cond_2
    const/16 v0, 0x2726

    const-string v1, "OP_GET_INSTALLED_APPS"

    invoke-static {p0, v1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkOpNoThrow(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 45
    :cond_3
    return v1
.end method

.method private static isMiuiSupportGetInstalledAppsPermission()Z
    .locals 3

    .line 119
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_4()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 120
    return v1

    .line 123
    :cond_0
    :try_start_0
    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 124
    .local v0, "appOpsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "OP_GET_INSTALLED_APPS"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    return v1

    .line 129
    .end local v0    # "appOpsClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 130
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 127
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 131
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    nop

    .line 132
    :goto_0
    return v1
.end method

.method static isPermissionPermanentDenied(Landroid/app/Activity;)Z
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .line 49
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_4()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 50
    return v1

    .line 53
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid6()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/hjq/permissions/GetInstalledAppsPermissionCompat;->isSupportGetInstalledAppsPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 55
    const-string v0, "com.android.permission.GET_INSTALLED_APPS"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 56
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    nop

    .line 55
    :goto_0
    return v1

    .line 59
    :cond_2
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/hjq/permissions/GetInstalledAppsPermissionCompat;->isMiuiSupportGetInstalledAppsPermission()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 60
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiuiOptimization()Z

    move-result v0

    if-nez v0, :cond_3

    .line 61
    return v1

    .line 64
    :cond_3
    invoke-static {p0}, Lcom/hjq/permissions/GetInstalledAppsPermissionCompat;->isGrantedPermission(Landroid/content/Context;)Z

    move-result v0

    xor-int/2addr v0, v2

    return v0

    .line 68
    :cond_4
    return v1
.end method

.method private static isSupportGetInstalledAppsPermission(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 91
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.android.permission.GET_INSTALLED_APPS"

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 92
    .local v2, "permissionInfo":Landroid/content/pm/PermissionInfo;
    if-eqz v2, :cond_3

    .line 93
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid9()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 94
    invoke-virtual {v2}, Landroid/content/pm/PermissionInfo;->getProtection()I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    :cond_0
    return v0

    .line 96
    :cond_1
    iget v3, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v3, v3, 0xf

    if-ne v3, v1, :cond_2

    move v0, v1

    :cond_2
    return v0

    .line 101
    .end local v2    # "permissionInfo":Landroid/content/pm/PermissionInfo;
    :cond_3
    goto :goto_0

    .line 99
    :catch_0
    move-exception v2

    .line 100
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 107
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_installed_apps_runtime_permission_enable"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    if-ne v2, v1, :cond_4

    move v0, v1

    :cond_4
    return v0

    .line 108
    :catch_1
    move-exception v1

    .line 109
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    .line 112
    .end local v1    # "e":Landroid/provider/Settings$SettingNotFoundException;
    return v0
.end method

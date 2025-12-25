.class final Lcom/hjq/permissions/NotificationListenerPermissionCompat;
.super Ljava/lang/Object;
.source "NotificationListenerPermissionCompat.java"


# static fields
.field private static final SETTING_ENABLED_NOTIFICATION_LISTENERS:Ljava/lang/String; = "enabled_notification_listeners"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .line 53
    const/4 v0, 0x0

    .line 54
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid11()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 55
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->getAndroidManifestInfo(Landroid/content/Context;)Lcom/hjq/permissions/AndroidManifestInfo;

    move-result-object v1

    .line 56
    .local v1, "androidManifestInfo":Lcom/hjq/permissions/AndroidManifestInfo;
    const/4 v2, 0x0

    .line 57
    .local v2, "serviceInfo":Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;
    if-eqz v1, :cond_2

    .line 58
    iget-object v3, v1, Lcom/hjq/permissions/AndroidManifestInfo;->serviceInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;

    .line 59
    .local v4, "info":Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;
    iget-object v5, v4, Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;->permission:Ljava/lang/String;

    const-string v6, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    if-eqz v2, :cond_1

    .line 65
    const/4 v2, 0x0

    .line 66
    goto :goto_1

    .line 69
    :cond_1
    move-object v2, v4

    .line 70
    .end local v4    # "info":Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;
    goto :goto_0

    .line 72
    :cond_2
    :goto_1
    if-eqz v2, :cond_3

    .line 73
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.NOTIFICATION_LISTENER_DETAIL_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v3

    .line 74
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 75
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 74
    const-string v4, "android.provider.extra.NOTIFICATION_LISTENER_COMPONENT_NAME"

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 76
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 77
    const/4 v0, 0x0

    .line 82
    .end local v1    # "androidManifestInfo":Lcom/hjq/permissions/AndroidManifestInfo;
    .end local v2    # "serviceInfo":Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;
    :cond_3
    if-nez v0, :cond_5

    .line 83
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid5_1()Z

    move-result v1

    const-string v2, "android.settings.ACTION_NOTIFICATION_LISTENER_SETTINGS"

    if-eqz v1, :cond_4

    .line 84
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    goto :goto_2

    .line 87
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 91
    :cond_5
    :goto_2
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 92
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    :cond_6
    return-object v0
.end method

.method static isGrantedPermission(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 23
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_3()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 24
    return v1

    .line 26
    :cond_0
    nop

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 26
    const-string v2, "enabled_notification_listeners"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    .local v0, "enabledNotificationListeners":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 29
    return v3

    .line 32
    :cond_1
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "components":[Ljava/lang/String;
    array-length v4, v2

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v2, v5

    .line 34
    .local v6, "component":Ljava/lang/String;
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    .line 35
    .local v7, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 36
    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v8

    .line 43
    .local v8, "className":Ljava/lang/String;
    :try_start_0
    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    return v1

    .line 45
    :catch_0
    move-exception v9

    .line 46
    .local v9, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v9}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 33
    .end local v6    # "component":Ljava/lang/String;
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "className":Ljava/lang/String;
    .end local v9    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 49
    :cond_3
    return v3
.end method

.class final Lcom/hjq/permissions/WindowPermissionCompat;
.super Ljava/lang/Object;
.source "WindowPermissionCompat.java"


# static fields
.field private static final OP_SYSTEM_ALERT_WINDOW_DEFAULT_VALUE:I = 0x18

.field private static final OP_SYSTEM_ALERT_WINDOW_FIELD_NAME:Ljava/lang/String; = "OP_SYSTEM_ALERT_WINDOW"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 35
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid6()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid11()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiuiOptimization()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getMiuiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 41
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 42
    return-object v0

    .line 45
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 48
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 50
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 51
    return-object v0

    .line 54
    :cond_1
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    return-object v0

    .line 59
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isEmui()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 60
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getEmuiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 61
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    return-object v0

    .line 65
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiui()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 67
    const/4 v0, 0x0

    .line 68
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isMiuiOptimization()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 70
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getMiuiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 74
    :cond_4
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 75
    return-object v0

    .line 78
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_5
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isColorOs()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 79
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getColorOsWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 80
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    return-object v0

    .line 84
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_6
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isOriginOs()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 85
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getOriginOsWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 87
    return-object v0

    .line 90
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_7
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->isOneUi()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 91
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getOneUiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 93
    return-object v0

    .line 100
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_8
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static isGrantedPermission(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 20
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid6()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {p0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 24
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_4()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 28
    const/16 v0, 0x18

    const-string v1, "OP_SYSTEM_ALERT_WINDOW"

    invoke-static {p0, v1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkOpNoThrow(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    return v0

    .line 31
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

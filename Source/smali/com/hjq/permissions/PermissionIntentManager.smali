.class final Lcom/hjq/permissions/PermissionIntentManager;
.super Ljava/lang/Object;
.source "PermissionIntentManager.java"


# static fields
.field private static final COLOR_OS_SAFE_CENTER_APP_PACKAGE_NAME_1:Ljava/lang/String; = "com.oppo.safe"

.field private static final COLOR_OS_SAFE_CENTER_APP_PACKAGE_NAME_2:Ljava/lang/String; = "com.color.safecenter"

.field private static final COLOR_OS_SAFE_CENTER_APP_PACKAGE_NAME_3:Ljava/lang/String; = "com.oplus.safecenter"

.field private static final EMUI_MOBILE_MANAGER_APP_PACKAGE_NAME:Ljava/lang/String; = "com.huawei.systemmanager"

.field private static final MIUI_MOBILE_MANAGER_APP_PACKAGE_NAME:Ljava/lang/String; = "com.miui.securitycenter"

.field private static final ORIGIN_OS_MOBILE_MANAGER_APP_PACKAGE_NAME:Ljava/lang/String; = "com.iqoo.secure"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAndroidSettingAppIntent()Landroid/content/Intent;
    .locals 2

    .line 305
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method static getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 284
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 285
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 286
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 287
    return-object v0

    .line 290
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 291
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 292
    return-object v0

    .line 295
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.MANAGE_APPLICATIONS_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 296
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 297
    return-object v0

    .line 299
    :cond_2
    invoke-static {}, Lcom/hjq/permissions/PermissionIntentManager;->getAndroidSettingAppIntent()Landroid/content/Intent;

    move-result-object v1

    return-object v1
.end method

.method static getColorOsWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 121
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.safe.permission.PermissionTopActivity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 123
    .local v0, "permissionTopActivityActionIntent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getOppoSafeCenterAppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 125
    .local v1, "oppoSafeCenterAppIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 127
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 128
    move-object v2, v0

    .line 131
    :cond_0
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 132
    invoke-static {v2, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 135
    :cond_1
    return-object v2
.end method

.method static getEmuiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 42
    .local v0, "addViewMonitorActivityIntent":Landroid/content/Intent;
    const-string v1, "com.huawei.systemmanager"

    const-string v2, "com.huawei.systemmanager.addviewmonitor.AddViewMonitorActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 46
    .local v2, "notificationManagementActivityIntent":Landroid/content/Intent;
    const-string v3, "com.huawei.notificationmanager.ui.NotificationManagmentActivity"

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getHuaWeiMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 52
    .local v1, "huaWeiMobileManagerAppIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/hjq/permissions/PhoneRomUtils;->getRomVersionName()Ljava/lang/String;

    move-result-object v3

    .line 53
    .local v3, "romVersionName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 54
    const-string v3, ""

    .line 57
    :cond_0
    const/4 v4, 0x0

    .line 58
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "3.0"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 60
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 61
    move-object v4, v2

    .line 64
    :cond_1
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 65
    invoke-static {v4, v0}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 70
    move-object v4, v0

    .line 73
    :cond_3
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 74
    invoke-static {v4, v2}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    .line 78
    :cond_4
    :goto_0
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 79
    invoke-static {v4, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v4

    .line 82
    :cond_5
    return-object v4
.end method

.method static getHuaWeiMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 226
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.huawei.systemmanager"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 227
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 228
    return-object v0

    .line 230
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static getMiuiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 173
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 174
    const-string v1, "miui.intent.action.APP_PERM_EDITOR"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_pkgname"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 177
    .local v0, "appPermEditorActionIntent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getXiaoMiMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 179
    .local v1, "xiaoMiMobileManagerAppIntent":Landroid/content/Intent;
    const/4 v2, 0x0

    .line 180
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 181
    move-object v2, v0

    .line 184
    :cond_0
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 185
    invoke-static {v2, v1}, Lcom/hjq/permissions/StartActivityManager;->addSubIntentToMainIntent(Landroid/content/Intent;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    .line 188
    :cond_1
    return-object v2
.end method

.method static getMiuiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 90
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getMiuiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static getOneUiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$AppOpsDetailsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 210
    .local v1, "extraShowFragmentArguments":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "package"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    const-string v2, ":settings:show_fragment_args"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 212
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->getPackageNameUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 213
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 214
    return-object v0

    .line 216
    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method static getOneUiWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 166
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getOneUiPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static getOppoSafeCenterAppIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 250
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.safe"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 251
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 252
    return-object v0

    .line 254
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.color.safecenter"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 255
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    return-object v0

    .line 258
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oplus.safecenter"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 259
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 260
    return-object v0

    .line 262
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method static getOriginOsPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "permission.intent.action.softPermissionDetail"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 195
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packagename"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    return-object v0

    .line 199
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static getOriginOsWindowPermissionPageIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 156
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getVivoMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 157
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 158
    return-object v0

    .line 161
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static getVivoMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.iqoo.secure"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 271
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 272
    return-object v0

    .line 274
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method static getXiaoMiMobileManagerAppIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 238
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.miui.securitycenter"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 239
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 240
    return-object v0

    .line 242
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

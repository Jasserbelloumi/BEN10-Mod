.class Lcom/hjq/permissions/PermissionDelegateImplV33;
.super Lcom/hjq/permissions/PermissionDelegateImplV31;
.source "PermissionDelegateImplV33.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/hjq/permissions/PermissionDelegateImplV31;-><init>()V

    return-void
.end method


# virtual methods
.method public getPermissionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .line 93
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    invoke-static {p1}, Lcom/hjq/permissions/NotificationPermissionCompat;->getPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 96
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/PermissionDelegateImplV31;->getPermissionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .line 20
    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 22
    const-string v1, "android.permission.BODY_SENSORS"

    invoke-static {p1, v1}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 23
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    nop

    .line 22
    :goto_0
    return v2

    .line 26
    :cond_1
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 27
    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 28
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 29
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p2, v1}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 30
    const-string v4, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p2, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_2

    .line 34
    :cond_2
    invoke-static {p1}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0x21

    if-lt v5, v6, :cond_5

    .line 37
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p2, v5}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 38
    return v3

    .line 41
    :cond_3
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p2, v5}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 42
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 43
    invoke-static {p1, v1}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 44
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    nop

    .line 42
    :goto_1
    return v2

    .line 48
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/PermissionDelegateImplV31;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 31
    :cond_6
    :goto_2
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPermissionPermanentDenied(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permission"    # Ljava/lang/String;

    .line 53
    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 54
    const-string v0, "android.permission.BODY_SENSORS"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 55
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    .line 57
    :cond_0
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 58
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 57
    :goto_0
    return v1

    .line 61
    :cond_2
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 62
    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 63
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 64
    const-string v3, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p2, v3}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    .line 65
    const-string v4, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p2, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    .line 70
    :cond_3
    invoke-static {p1}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v5

    const/16 v6, 0x21

    if-lt v5, v6, :cond_6

    .line 72
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p2, v5}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 73
    return v2

    .line 76
    :cond_4
    const-string v5, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p2, v5}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 77
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 78
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 79
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 80
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 81
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 82
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    move v1, v2

    .line 77
    :goto_1
    return v1

    .line 86
    :cond_6
    invoke-super {p0, p1, p2}, Lcom/hjq/permissions/PermissionDelegateImplV31;->isPermissionPermanentDenied(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0

    .line 66
    :cond_7
    :goto_2
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 67
    invoke-static {p1, p2}, Lcom/hjq/permissions/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_3

    :cond_8
    move v1, v2

    .line 66
    :goto_3
    return v1
.end method

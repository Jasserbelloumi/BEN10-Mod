.class final Lcom/hjq/permissions/PermissionChecker;
.super Ljava/lang/Object;
.source "PermissionChecker.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkActivityStatus(Landroid/app/Activity;Z)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "checkMode"    # Z

    .line 30
    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 31
    if-nez p1, :cond_0

    .line 35
    return v0

    .line 33
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The instance of the context must be an activity object"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 39
    if-nez p1, :cond_2

    .line 45
    return v0

    .line 42
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The activity has been finishing, please manually determine the status of the activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_3
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_2()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 49
    if-nez p1, :cond_4

    .line 55
    return v0

    .line 52
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The activity has been destroyed, please manually determine the status of the activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method static checkBodySensorsPermission(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 233
    .local p0, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 234
    return-void

    .line 237
    :cond_0
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 238
    const-string v0, "android.permission.BODY_SENSORS"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Applying for background sensor permissions must contain android.permission.BODY_SENSORS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 243
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 244
    .local v1, "permission":Ljava/lang/String;
    const-string v2, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 250
    const-string v2, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {v1, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 255
    .end local v1    # "permission":Ljava/lang/String;
    goto :goto_1

    .line 252
    .restart local v1    # "permission":Ljava/lang/String;
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Applying for permissions android.permission.BODY_SENSORS_BACKGROUND and android.permission.ACCESS_MEDIA_LOCATION at the same time is not supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Applying for permissions android.permission.BODY_SENSORS_BACKGROUND and android.permission.ACCESS_BACKGROUND_LOCATION at the same time is not supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 256
    .end local v1    # "permission":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method static checkLocationPermission(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 283
    .local p0, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 284
    return-void

    .line 290
    :cond_0
    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "android.permission.ACCESS_FINE_LOCATION"

    if-eqz v2, :cond_2

    .line 291
    invoke-static {p0, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 292
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Applying for background positioning permissions must include android.permission.ACCESS_FINE_LOCATION"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 297
    .local v4, "permission":Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 298
    invoke-static {v4, v1}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 299
    invoke-static {v4, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 300
    goto :goto_1

    .line 306
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Because it includes background location permissions, do not apply for permissions unrelated to location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 309
    .end local v4    # "permission":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method static checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .param p1, "checkPermission"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 593
    .local p0, "permissionInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;>;"
    const v0, 0x7fffffff

    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 594
    return-void
.end method

.method static checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V
    .locals 6
    .param p1, "checkPermission"    # Ljava/lang/String;
    .param p2, "maxSdkVersion"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 605
    .local p0, "permissionInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;>;"
    const/4 v0, 0x0

    .line 606
    .local v0, "permissionInfo":Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;

    .line 607
    .local v2, "info":Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;
    iget-object v3, v2, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 608
    move-object v0, v2

    .line 609
    goto :goto_1

    .line 611
    .end local v2    # "info":Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;
    :cond_0
    goto :goto_0

    .line 612
    :cond_1
    :goto_1
    if-eqz v0, :cond_4

    .line 623
    iget v1, v0, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->maxSdkVersion:I

    .line 625
    .local v1, "manifestMaxSdkVersion":I
    if-ge v1, p2, :cond_3

    .line 631
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The AndroidManifest.xml file <uses-permission android:name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" android:maxSdkVersion=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" /> does not meet the requirements, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7fffffff

    if-eq p2, v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the minimum requirement for maxSdkVersion is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    goto :goto_2

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "please delete the android:maxSdkVersion=\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" attribute"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    :goto_2
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 639
    :cond_3
    return-void

    .line 619
    .end local v1    # "manifestMaxSdkVersion":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Please register permissions in the AndroidManifest.xml file <uses-permission android:name=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" />"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static checkManifestPermissions(Landroid/content/Context;Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "androidManifestInfo"    # Lcom/hjq/permissions/AndroidManifestInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    .line 479
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p2, :cond_0

    .line 480
    return-void

    .line 483
    :cond_0
    iget-object v0, p2, Lcom/hjq/permissions/AndroidManifestInfo;->permissionInfoList:Ljava/util/List;

    .line 484
    .local v0, "permissionInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 489
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid7()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 490
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->minSdkVersion:I

    .local v1, "minSdkVersion":I
    goto :goto_0

    .line 492
    .end local v1    # "minSdkVersion":I
    :cond_1
    iget-object v1, p2, Lcom/hjq/permissions/AndroidManifestInfo;->usesSdkInfo:Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;

    if-eqz v1, :cond_2

    .line 493
    iget-object v1, p2, Lcom/hjq/permissions/AndroidManifestInfo;->usesSdkInfo:Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;

    iget v1, v1, Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;->minSdkVersion:I

    .restart local v1    # "minSdkVersion":I
    goto :goto_0

    .line 495
    .end local v1    # "minSdkVersion":I
    :cond_2
    const/16 v1, 0x17

    .line 499
    .restart local v1    # "minSdkVersion":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 501
    .local v3, "permission":Ljava/lang/String;
    const-string v4, "android.permission.NOTIFICATION_SERVICE"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 502
    const-string v4, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 503
    const-string v4, "android.permission.BIND_VPN_SERVICE"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 504
    const-string v4, "android.permission.PICTURE_IN_PICTURE"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 506
    goto :goto_1

    .line 510
    :cond_4
    invoke-static {v0, v3}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V

    .line 512
    const-string v4, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 514
    const-string v4, "android.permission.BODY_SENSORS"

    invoke-static {v0, v4}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V

    .line 515
    goto :goto_1

    .line 518
    :cond_5
    const-string v4, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/16 v5, 0x1f

    const-string v6, "android.permission.ACCESS_FINE_LOCATION"

    const/16 v7, 0x1e

    if-eqz v4, :cond_7

    .line 521
    invoke-static {p0}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v4

    if-lt v4, v5, :cond_6

    .line 522
    invoke-static {v0, v6, v7}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 523
    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v4}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1

    .line 525
    :cond_6
    invoke-static {v0, v6}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V

    .line 527
    goto :goto_1

    .line 530
    :cond_7
    const/16 v4, 0x21

    const-string v8, "android.permission.READ_EXTERNAL_STORAGE"

    if-ge v1, v4, :cond_a

    .line 532
    const-string v4, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const/16 v9, 0x20

    if-nez v4, :cond_9

    .line 533
    const-string v4, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 534
    const-string v4, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_2

    .line 539
    :cond_8
    const-string v4, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 540
    invoke-static {v0, v6, v9}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 541
    goto/16 :goto_1

    .line 535
    :cond_9
    :goto_2
    invoke-static {v0, v8, v9}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 536
    goto/16 :goto_1

    .line 545
    :cond_a
    if-ge v1, v5, :cond_d

    .line 547
    const-string v4, "android.permission.BLUETOOTH_SCAN"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    const-string v5, "android.permission.BLUETOOTH_ADMIN"

    if-eqz v4, :cond_b

    .line 548
    invoke-static {v0, v5, v7}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 550
    invoke-static {v0, v6, v7}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 551
    goto/16 :goto_1

    .line 554
    :cond_b
    const-string v4, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 555
    const-string v4, "android.permission.BLUETOOTH"

    invoke-static {v0, v4, v7}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 556
    goto/16 :goto_1

    .line 559
    :cond_c
    const-string v4, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 560
    invoke-static {v0, v5, v7}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 561
    goto/16 :goto_1

    .line 565
    :cond_d
    if-ge v1, v7, :cond_e

    .line 567
    const-string v4, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 568
    const/16 v4, 0x1d

    invoke-static {v0, v8, v4}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 569
    const-string v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v5, v4}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 570
    goto/16 :goto_1

    .line 574
    :cond_e
    const/16 v4, 0x1a

    if-ge v1, v4, :cond_f

    .line 576
    const-string v4, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 577
    const/16 v4, 0x19

    const-string v5, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v5, v4}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;I)V

    .line 578
    goto/16 :goto_1

    .line 582
    :cond_f
    const-string v4, "com.android.permission.GET_INSTALLED_APPS"

    invoke-static {v3, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 586
    const-string v4, "android.permission.QUERY_ALL_PACKAGES"

    invoke-static {v0, v4}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermission(Ljava/util/List;Ljava/lang/String;)V

    .line 588
    .end local v3    # "permission":Ljava/lang/String;
    :cond_10
    goto/16 :goto_1

    .line 589
    :cond_11
    return-void

    .line 485
    .end local v1    # "minSdkVersion":I
    :cond_12
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No permissions are registered in the AndroidManifest.xml file"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static checkMediaLocationPermission(Landroid/content/Context;Ljava/util/List;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 118
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "android.permission.READ_MEDIA_IMAGES"

    const-string v4, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v5, "android.permission.MANAGE_EXTERNAL_STORAGE"

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 123
    .local v2, "permission":Ljava/lang/String;
    invoke-static {v2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 124
    invoke-static {v2, v3}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 125
    invoke-static {v2, v4}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 126
    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v2, v3}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 127
    invoke-static {v2, v5}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 128
    goto :goto_0

    .line 132
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Because it includes access media location permissions, do not apply for permissions unrelated to access media location"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    .end local v2    # "permission":Ljava/lang/String;
    :cond_3
    invoke-static {p0}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v0

    const/16 v1, 0x21

    if-lt v0, v1, :cond_5

    .line 137
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 138
    invoke-static {p1, v5}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_1

    .line 140
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must add android.permission.READ_MEDIA_IMAGES or android.permission.MANAGE_EXTERNAL_STORAGE rights to apply for android.permission.ACCESS_MEDIA_LOCATION rights"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_5
    invoke-static {p1, v4}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 145
    invoke-static {p1, v5}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_1

    .line 147
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must add android.permission.READ_EXTERNAL_STORAGE or android.permission.MANAGE_EXTERNAL_STORAGE rights to apply for android.permission.ACCESS_MEDIA_LOCATION rights"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 151
    :cond_7
    :goto_1
    return-void
.end method

.method static checkNearbyDevicesPermission(Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V
    .locals 8
    .param p1, "androidManifestInfo"    # Lcom/hjq/permissions/AndroidManifestInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    .line 318
    .local p0, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.permission.NEARBY_WIFI_DEVICES"

    if-nez v1, :cond_0

    .line 319
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 320
    return-void

    .line 324
    :cond_0
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 325
    return-void

    .line 328
    :cond_1
    if-nez p1, :cond_2

    .line 329
    return-void

    .line 332
    :cond_2
    iget-object v3, p1, Lcom/hjq/permissions/AndroidManifestInfo;->permissionInfoList:Ljava/util/List;

    .line 334
    .local v3, "permissionInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;

    .line 336
    .local v5, "permissionInfo":Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;
    iget-object v6, v5, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-static {v6, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v5, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    .line 337
    invoke-static {v6, v2}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 338
    goto :goto_0

    .line 341
    :cond_3
    invoke-virtual {v5}, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->neverForLocation()Z

    move-result v6

    if-nez v6, :cond_5

    .line 349
    iget v0, v5, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->maxSdkVersion:I

    const v2, 0x7fffffff

    const-string v4, "\" "

    if-eq v0, v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "android:maxSdkVersion=\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v5, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->maxSdkVersion:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    const-string v0, ""

    .line 355
    .local v0, "maxSdkVersionString":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "If your app doesn\'t use "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to get physical location, please change the <uses-permission android:name=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/> node in the manifest file to <uses-permission android:name=\""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\" android:usesPermissionFlags=\"neverForLocation\" "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/> node, if your app need use "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v5, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " to get physical location, also need to add "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " permissions"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 363
    .end local v0    # "maxSdkVersionString":Ljava/lang/String;
    .end local v5    # "permissionInfo":Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;
    :cond_5
    goto/16 :goto_0

    .line 364
    :cond_6
    return-void
.end method

.method static checkNotificationListenerPermission(Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V
    .locals 5
    .param p1, "androidManifestInfo"    # Lcom/hjq/permissions/AndroidManifestInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    .line 372
    .local p0, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 373
    return-void

    .line 376
    :cond_0
    if-nez p1, :cond_1

    .line 377
    return-void

    .line 380
    :cond_1
    iget-object v1, p1, Lcom/hjq/permissions/AndroidManifestInfo;->serviceInfoList:Ljava/util/List;

    .line 381
    .local v1, "serviceInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 382
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;

    iget-object v3, v3, Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;->permission:Ljava/lang/String;

    .line 383
    .local v3, "permission":Ljava/lang/String;
    invoke-static {v3, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    return-void

    .line 381
    .end local v3    # "permission":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 391
    .end local v2    # "i":I
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "No service registered permission attribute, please register <service android:permission=\"android.permission.BIND_NOTIFICATION_LISTENER_SERVICE\" > in AndroidManifest.xml"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkPermissionArgument(Ljava/util/List;Z)Z
    .locals 8
    .param p1, "checkMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .line 69
    .local p0, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_7

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_3

    .line 77
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->getAndroidVersionCode()I

    move-result v1

    const/16 v2, 0x21

    const/4 v3, 0x1

    if-le v1, v2, :cond_1

    .line 79
    return v3

    .line 82
    :cond_1
    if-eqz p1, :cond_6

    .line 83
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 84
    .local v1, "allPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v2, Lcom/hjq/permissions/Permission;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 87
    .local v2, "fields":[Ljava/lang/reflect/Field;
    array-length v4, v2

    if-nez v4, :cond_2

    .line 88
    return v3

    .line 90
    :cond_2
    array-length v4, v2

    :goto_0
    if-ge v0, v4, :cond_4

    aget-object v5, v2, v0

    .line 91
    .local v5, "field":Ljava/lang/reflect/Field;
    const-class v6, Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 92
    goto :goto_1

    .line 95
    :cond_3
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_1

    .line 96
    :catch_0
    move-exception v6

    .line 97
    .local v6, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v6}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 90
    .end local v5    # "field":Ljava/lang/reflect/Field;
    .end local v6    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 100
    :cond_4
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 101
    .local v4, "permission":Ljava/lang/String;
    invoke-static {v1, v4}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 102
    goto :goto_2

    .line 105
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is not a dangerous permission or special permission, please do not request dynamically"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    .end local v1    # "allPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "fields":[Ljava/lang/reflect/Field;
    .end local v4    # "permission":Ljava/lang/String;
    :cond_6
    return v3

    .line 70
    :cond_7
    :goto_3
    if-nez p1, :cond_8

    .line 74
    return v0

    .line 72
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The requested permission cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkPictureInPicturePermission(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "androidManifestInfo"    # Lcom/hjq/permissions/AndroidManifestInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    .line 402
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "android.permission.PICTURE_IN_PICTURE"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 403
    return-void

    .line 406
    :cond_0
    if-nez p2, :cond_1

    .line 407
    return-void

    .line 410
    :cond_1
    iget-object v0, p2, Lcom/hjq/permissions/AndroidManifestInfo;->activityInfoList:Ljava/util/List;

    .line 411
    .local v0, "activityInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 412
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;

    iget-boolean v2, v2, Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;->supportsPictureInPicture:Z

    .line 413
    .local v2, "supportsPictureInPicture":Z
    if-eqz v2, :cond_2

    .line 415
    return-void

    .line 411
    .end local v2    # "supportsPictureInPicture":Z
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 419
    .end local v1    # "i":I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 422
    .local v1, "activityName":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity registered supportsPictureInPicture attribute, please register \n<activity android:name=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\" android:supportsPictureInPicture=\"true\" > in AndroidManifest.xml"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method static checkStoragePermission(Landroid/content/Context;Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "androidManifestInfo"    # Lcom/hjq/permissions/AndroidManifestInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/AndroidManifestInfo;",
            ")V"
        }
    .end annotation

    .line 159
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.MANAGE_EXTERNAL_STORAGE"

    if-nez v1, :cond_0

    .line 160
    const-string v1, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p1, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    const-string v1, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p1, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 162
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    invoke-static {p1, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 165
    return-void

    .line 168
    :cond_0
    invoke-static {p0}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v1

    const/16 v4, 0x21

    if-lt v1, v4, :cond_2

    .line 169
    invoke-static {p1, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 172
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "When targetSdkVersion >= 33 should use android.permission.READ_MEDIA_IMAGES, android.permission.READ_MEDIA_VIDEO, android.permission.READ_MEDIA_AUDIO instead of android.permission.READ_EXTERNAL_STORAGE"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 178
    :cond_2
    :goto_0
    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    return-void

    .line 183
    :cond_3
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 184
    return-void

    .line 187
    :cond_4
    if-nez p2, :cond_5

    .line 188
    return-void

    .line 191
    :cond_5
    iget-object v0, p2, Lcom/hjq/permissions/AndroidManifestInfo;->applicationInfo:Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;

    .line 193
    .local v0, "applicationInfo":Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;
    if-nez v0, :cond_6

    .line 194
    return-void

    .line 198
    :cond_6
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->isScopedStorage(Landroid/content/Context;)Z

    move-result v1

    .line 200
    .local v1, "scopedStorage":Z
    invoke-static {p0}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v2

    .line 202
    .local v2, "targetSdkVersion":I
    iget-boolean v4, v0, Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;->requestLegacyExternalStorage:Z

    .line 204
    .local v4, "requestLegacyExternalStorage":Z
    const/16 v5, 0x1d

    if-lt v2, v5, :cond_8

    if-nez v4, :cond_8

    .line 205
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    if-eqz v1, :cond_7

    goto :goto_1

    .line 210
    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "Please register the android:requestLegacyExternalStorage=\"true\" attribute in the AndroidManifest.xml file, otherwise it will cause incompatibility with the old version"

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 215
    :cond_8
    :goto_1
    const/16 v5, 0x1e

    if-lt v2, v5, :cond_a

    .line 216
    invoke-static {p1, v3}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_a

    if-eqz v1, :cond_9

    goto :goto_2

    .line 222
    :cond_9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v5, "The storage permission application is abnormal. If you have adapted the scope storage, please register the <meta-data android:name=\"ScopedStorage\" android:value=\"true\" /> attribute in the AndroidManifest.xml file. If there is no adaptation scope storage, please use android.permission.MANAGE_EXTERNAL_STORAGE to apply for permission"

    invoke-direct {v3, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 226
    :cond_a
    :goto_2
    return-void
.end method

.method static checkTargetSdkVersion(Landroid/content/Context;Ljava/util/List;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 434
    .local p1, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 435
    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 436
    const-string v0, "android.permission.BODY_SENSORS_BACKGROUND"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 437
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 438
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 439
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 441
    :cond_0
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 442
    const-string v0, "android.permission.BLUETOOTH_CONNECT"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 443
    const-string v0, "android.permission.BLUETOOTH_ADVERTISE"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 444
    const-string v0, "android.permission.SCHEDULE_EXACT_ALARM"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 446
    :cond_1
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    const/16 v0, 0x1e

    .local v0, "targetSdkMinVersion":I
    goto :goto_4

    .line 449
    .end local v0    # "targetSdkMinVersion":I
    :cond_2
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 450
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 451
    const-string v0, "android.permission.ACCESS_MEDIA_LOCATION"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    .line 453
    :cond_3
    const-string v0, "android.permission.ACCEPT_HANDOVER"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 454
    const/16 v0, 0x1c

    .restart local v0    # "targetSdkMinVersion":I
    goto :goto_4

    .line 455
    .end local v0    # "targetSdkMinVersion":I
    :cond_4
    const-string v0, "android.permission.REQUEST_INSTALL_PACKAGES"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 456
    const-string v0, "android.permission.ANSWER_PHONE_CALLS"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 457
    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 458
    const-string v0, "android.permission.PICTURE_IN_PICTURE"

    invoke-static {p1, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    .line 461
    :cond_5
    const/16 v0, 0x17

    .restart local v0    # "targetSdkMinVersion":I
    goto :goto_4

    .line 459
    .end local v0    # "targetSdkMinVersion":I
    :cond_6
    :goto_0
    const/16 v0, 0x1a

    .restart local v0    # "targetSdkMinVersion":I
    goto :goto_4

    .line 452
    .end local v0    # "targetSdkMinVersion":I
    :cond_7
    :goto_1
    const/16 v0, 0x1d

    .restart local v0    # "targetSdkMinVersion":I
    goto :goto_4

    .line 445
    .end local v0    # "targetSdkMinVersion":I
    :cond_8
    :goto_2
    const/16 v0, 0x1f

    .restart local v0    # "targetSdkMinVersion":I
    goto :goto_4

    .line 440
    .end local v0    # "targetSdkMinVersion":I
    :cond_9
    :goto_3
    const/16 v0, 0x21

    .line 465
    .restart local v0    # "targetSdkMinVersion":I
    :goto_4
    invoke-static {p0}, Lcom/hjq/permissions/AndroidVersion;->getTargetSdkVersionCode(Landroid/content/Context;)I

    move-result v1

    if-lt v1, v0, :cond_a

    .line 470
    return-void

    .line 466
    :cond_a
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The targetSdkVersion SDK must be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " or more, if you do not want to upgrade targetSdkVersion, please apply with the old permissions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static optimizeDeprecatedPermission(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 648
    .local p0, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid13()Z

    move-result v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    if-nez v0, :cond_3

    .line 649
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 650
    const-string v0, "android.permission.NOTIFICATION_SERVICE"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 652
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 655
    :cond_0
    const-string v0, "android.permission.NEARBY_WIFI_DEVICES"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 656
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 661
    :cond_1
    const-string v0, "android.permission.READ_MEDIA_IMAGES"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 662
    const-string v0, "android.permission.READ_MEDIA_VIDEO"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 663
    const-string v0, "android.permission.READ_MEDIA_AUDIO"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 666
    :cond_2
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 667
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 673
    :cond_3
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid12()Z

    move-result v0

    if-nez v0, :cond_4

    .line 674
    const-string v0, "android.permission.BLUETOOTH_SCAN"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 675
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 677
    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 681
    :cond_4
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 683
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 684
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 691
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid11()Z

    move-result v1

    if-nez v1, :cond_6

    .line 693
    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 694
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 687
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "If you have applied for MANAGE_EXTERNAL_STORAGE permissions, do not apply for the READ_EXTERNAL_STORAGE and WRITE_EXTERNAL_STORAGE permissions"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 698
    :cond_6
    :goto_0
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid10()Z

    move-result v0

    if-nez v0, :cond_7

    .line 699
    const-string v0, "android.permission.ACTIVITY_RECOGNITION"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 700
    const-string v0, "android.permission.BODY_SENSORS"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 702
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 705
    :cond_7
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid8()Z

    move-result v0

    if-nez v0, :cond_8

    .line 706
    const-string v0, "android.permission.READ_PHONE_NUMBERS"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 707
    const-string v0, "android.permission.READ_PHONE_STATE"

    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 709
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_8
    return-void
.end method

.class public Lcom/molihuan/pathselector/utils/PermissionsTools;
.super Ljava/lang/Object;
.source "PermissionsTools.java"


# static fields
.field public static final DEFAULT_URI_BUILD_SUFFIX_ANDROID_DATA:I = 0x9c

.field public static final DEFAULT_URI_BUILD_SUFFIX_ANDROID_OBB:I = 0x9d

.field public static final PERMISSION_REQUEST_CODE:I = 0xd35f


# instance fields
.field public generalPermissionCallback:Lcom/hjq/permissions/OnPermissionCallback;

.field public specialPermissionCallback:Lcom/hjq/permissions/OnPermissionCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyUriPermissionByDefault(ILandroid/app/Activity;)V
    .locals 1
    .param p0, "defaultUriBuildSuf"    # I
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 266
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/molihuan/pathselector/utils/PermissionsTools;->applyUriPermissionByDefault(ILandroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 267
    return-void
.end method

.method private static applyUriPermissionByDefault(ILandroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p0, "defaultUriBuildSuf"    # I
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 285
    invoke-static {}, Lcom/molihuan/pathselector/utils/VersionTool;->isAndroid13()Z

    move-result v0

    if-nez v0, :cond_2

    .line 289
    packed-switch p0, :pswitch_data_0

    .line 297
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter does not conform to a predefined value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 294
    :pswitch_0
    const-string v0, "primary:Android/obb"

    .line 295
    .local v0, "uriSuf":Ljava/lang/String;
    goto :goto_0

    .line 291
    .end local v0    # "uriSuf":Ljava/lang/String;
    :pswitch_1
    const-string v0, "primary:Android/data"

    .line 292
    .restart local v0    # "uriSuf":Ljava/lang/String;
    nop

    .line 300
    :goto_0
    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 301
    invoke-static {v0, v1, p2}, Lcom/molihuan/pathselector/utils/PermissionsTools;->goApplyUriPermissionPage(Ljava/lang/String;ZLandroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 302
    :cond_0
    if-eqz p1, :cond_1

    .line 303
    invoke-static {v0, v1, p1}, Lcom/molihuan/pathselector/utils/PermissionsTools;->goApplyUriPermissionPage(Ljava/lang/String;ZLandroid/app/Activity;)V

    .line 307
    :goto_1
    return-void

    .line 305
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "fragment and activity cannot both be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 286
    .end local v0    # "uriSuf":Ljava/lang/String;
    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Android13 cannot get read and write permissions for the Android/data or obb directory and can only get read and write permissions for subdirectories. Use another reload method to obtain read and write permissions for the Android/data or obb subdirectory"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x9c
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static applyUriPermissionByDefault(ILandroidx/fragment/app/Fragment;)V
    .locals 1
    .param p0, "defaultUriBuildSuf"    # I
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 271
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/molihuan/pathselector/utils/PermissionsTools;->applyUriPermissionByDefault(ILandroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 272
    return-void
.end method

.method public static existsGrantedUriPermission(Landroid/net/Uri;Landroid/app/Activity;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 226
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/molihuan/pathselector/utils/PermissionsTools;->existsGrantedUriPermission(Landroid/net/Uri;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static existsGrantedUriPermission(Landroid/net/Uri;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .locals 7
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 231
    if-eqz p2, :cond_0

    .line 232
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    goto :goto_0

    .line 233
    :cond_0
    if-eqz p1, :cond_4

    .line 236
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "\u8bf7\u6c42\u6743\u9650\u7684\u539f\u59cburi\u662f:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "documents/document/primary"

    const-string v2, "documents/tree/primary"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 241
    .local v0, "reqUri":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "\u8bf7\u6c42\u6743\u9650\u5904\u7406\u540e\u7684uri(\u4e3a\u4e86\u8fdb\u884c\u5224\u65ad\u662f\u5426\u5df2\u7ecf\u6388\u6743)\u662f:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v1

    .line 246
    .local v1, "uriPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u5df2\u7ecf\u6388\u6743\u7684uri\u96c6\u5408\u662f:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 251
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/UriPermission;

    .line 252
    .local v3, "uriP":Landroid/content/UriPermission;
    invoke-virtual {v3}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    .local v4, "tempUri":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "%2F"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".*"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Landroid/content/UriPermission;->isReadPermission()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v3}, Landroid/content/UriPermission;->isWritePermission()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_2

    .line 258
    .end local v3    # "uriP":Landroid/content/UriPermission;
    :cond_1
    goto :goto_1

    .line 255
    .restart local v3    # "uriP":Landroid/content/UriPermission;
    :cond_2
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v5, "\u5df2\u7ecf\u6388\u6743"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 256
    return-object v4

    .line 259
    .end local v3    # "uriP":Landroid/content/UriPermission;
    .end local v4    # "tempUri":Ljava/lang/String;
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\u672a\u6388\u6743"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 260
    const/4 v2, 0x0

    return-object v2

    .line 234
    .end local v0    # "reqUri":Ljava/lang/String;
    .end local v1    # "uriPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "fragment and activity cannot both be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static existsGrantedUriPermission(Landroid/net/Uri;Landroidx/fragment/app/Fragment;)Ljava/lang/String;
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 221
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/molihuan/pathselector/utils/PermissionsTools;->existsGrantedUriPermission(Landroid/net/Uri;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static generalPermissionsOfStorage(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "generalPermissionCallback"    # Lcom/hjq/permissions/OnPermissionCallback;

    .line 118
    sget-object v0, Lcom/hjq/permissions/Permission$Group;->STORAGE:[Ljava/lang/String;

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 120
    .local v0, "isGet":Z
    if-eqz v0, :cond_0

    .line 121
    const-string/jumbo v1, "\u4e00\u822c\u5b58\u50a8\u6743\u9650------\u5df2\u83b7\u53d6"

    invoke-static {v1}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-static {p0}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v1

    sget-object v2, Lcom/hjq/permissions/Permission$Group;->STORAGE:[Ljava/lang/String;

    .line 126
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->permission([Ljava/lang/String;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/hjq/permissions/XXPermissions;->unchecked()Lcom/hjq/permissions/XXPermissions;

    move-result-object v1

    new-instance v2, Lcom/molihuan/pathselector/utils/PermissionsTools$3;

    invoke-direct {v2, p1, p0}, Lcom/molihuan/pathselector/utils/PermissionsTools$3;-><init>(Lcom/hjq/permissions/OnPermissionCallback;Landroid/content/Context;)V

    .line 129
    invoke-virtual {v1, v2}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 151
    return-void
.end method

.method public static getAndroidUriPermission(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
    .locals 1
    .param p0, "requestUri"    # Ljava/lang/String;
    .param p1, "savedUri"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 540
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/molihuan/pathselector/utils/PermissionsTools;->getAndroidUriPermission(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 541
    return-void
.end method

.method private static getAndroidUriPermission(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 7
    .param p0, "requestUri"    # Ljava/lang/String;
    .param p1, "savedUri"    # Ljava/lang/String;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 481
    const-string v0, "requestUri is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 482
    const-string/jumbo v0, "savedUri is null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 484
    invoke-static {}, Lcom/molihuan/pathselector/utils/VersionTool;->isAndroid11()Z

    move-result v0

    if-nez v0, :cond_0

    .line 485
    return-void

    .line 489
    :cond_0
    const-string v0, "fragment and activity cannot both be null"

    if-eqz p3, :cond_1

    .line 490
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    goto :goto_0

    .line 491
    :cond_1
    if-eqz p2, :cond_7

    .line 496
    :goto_0
    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContentResolver;->getPersistedUriPermissions()Ljava/util/List;

    move-result-object v1

    .line 498
    .local v1, "uriPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-static {v3}, Lcom/blankj/molihuan/utilcode/util/LogUtils;->e([Ljava/lang/Object;)V

    .line 502
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/UriPermission;

    .line 503
    .local v4, "uriP":Landroid/content/UriPermission;
    invoke-virtual {v4}, Landroid/content/UriPermission;->getUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    .line 504
    .local v5, "tempUri":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v4}, Landroid/content/UriPermission;->isReadPermission()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Landroid/content/UriPermission;->isWritePermission()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 505
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "\u5df2\u7ecf\u6388\u6743"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 506
    return-void

    .line 508
    .end local v4    # "uriP":Landroid/content/UriPermission;
    :cond_3
    goto :goto_1

    .line 510
    .end local v5    # "tempUri":Ljava/lang/String;
    :cond_4
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 511
    .local v3, "uri":Landroid/net/Uri;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 512
    .local v4, "intent":Landroid/content/Intent;
    const/16 v5, 0xc3

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 518
    const-string v5, "android.provider.extra.SHOW_ADVANCED"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    .line 519
    const-string v6, "android.content.extra.SHOW_ADVANCED"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 520
    const-string v5, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 523
    const v2, 0xd35f

    if-eqz p3, :cond_5

    .line 524
    invoke-virtual {p3, v4, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2

    .line 525
    :cond_5
    if-eqz p2, :cond_6

    .line 526
    invoke-virtual {p2, v4, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 536
    :goto_2
    return-void

    .line 528
    :cond_6
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-direct {v2, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 492
    .end local v1    # "uriPermissions":Ljava/util/List;, "Ljava/util/List<Landroid/content/UriPermission;>;"
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_7
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static getAndroidUriPermission(Ljava/lang/String;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p0, "requestUri"    # Ljava/lang/String;
    .param p1, "savedUri"    # Ljava/lang/String;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 545
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/molihuan/pathselector/utils/PermissionsTools;->getAndroidUriPermission(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 546
    return-void
.end method

.method public static getStoragePermissions(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "specialPermissionCallback"    # Lcom/hjq/permissions/OnPermissionCallback;
    .param p2, "generalPermissionCallback"    # Lcom/hjq/permissions/OnPermissionCallback;

    .line 56
    invoke-static {p0, p1}, Lcom/molihuan/pathselector/utils/PermissionsTools;->specialPermissionsOfStorage(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 59
    invoke-static {p0, p2}, Lcom/molihuan/pathselector/utils/PermissionsTools;->generalPermissionsOfStorage(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 61
    return-void
.end method

.method public static goApplyUriPermissionPage(Landroid/net/Uri;Landroid/app/Activity;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 394
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/molihuan/pathselector/utils/PermissionsTools;->goApplyUriPermissionPage(Landroid/net/Uri;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 395
    return-void
.end method

.method private static goApplyUriPermissionPage(Landroid/net/Uri;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 5
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 416
    invoke-static {}, Lcom/molihuan/pathselector/utils/VersionTool;->isAndroid11()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    return-void

    .line 421
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/molihuan/pathselector/utils/PermissionsTools;->isGrantedUriPermission(Landroid/net/Uri;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Z

    move-result v0

    .line 422
    .local v0, "isGet":Z
    if-eqz v0, :cond_1

    .line 423
    return-void

    .line 426
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.OPEN_DOCUMENT_TREE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 427
    .local v1, "intent":Landroid/content/Intent;
    const/16 v2, 0xc3

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 433
    const-string v2, "android.provider.extra.SHOW_ADVANCED"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 434
    const-string v4, "android.content.extra.SHOW_ADVANCED"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v2

    .line 435
    const-string v3, "android.provider.extra.INITIAL_URI"

    invoke-virtual {v2, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 437
    const v2, 0xd35f

    if-eqz p2, :cond_2

    .line 438
    invoke-virtual {p2, v1, v2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 440
    :cond_2
    invoke-virtual {p1, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 442
    :goto_0
    return-void
.end method

.method public static goApplyUriPermissionPage(Landroid/net/Uri;Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 379
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/molihuan/pathselector/utils/PermissionsTools;->goApplyUriPermissionPage(Landroid/net/Uri;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 380
    return-void
.end method

.method private static goApplyUriPermissionPage(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 2
    .param p0, "completeUri"    # Ljava/lang/String;
    .param p1, "activity"    # Landroid/app/Activity;

    .line 389
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 390
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/molihuan/pathselector/utils/PermissionsTools;->goApplyUriPermissionPage(Landroid/net/Uri;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 391
    return-void
.end method

.method private static goApplyUriPermissionPage(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p0, "completeUri"    # Ljava/lang/String;
    .param p1, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 374
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 375
    .local v0, "uri":Landroid/net/Uri;
    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/molihuan/pathselector/utils/PermissionsTools;->goApplyUriPermissionPage(Landroid/net/Uri;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 376
    return-void
.end method

.method public static goApplyUriPermissionPage(Ljava/lang/String;ZLandroid/app/Activity;)V
    .locals 1
    .param p0, "uriSuf"    # Ljava/lang/String;
    .param p1, "tree"    # Z
    .param p2, "activity"    # Landroid/app/Activity;

    .line 330
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/molihuan/pathselector/utils/PermissionsTools;->goApplyUriPermissionPage(Ljava/lang/String;ZLandroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 331
    return-void
.end method

.method private static goApplyUriPermissionPage(Ljava/lang/String;ZLandroid/app/Activity;Landroidx/fragment/app/Fragment;)V
    .locals 3
    .param p0, "uriSuf"    # Ljava/lang/String;
    .param p1, "tree"    # Z
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 356
    const-string v0, "com.android.externalstorage.documents"

    if-eqz p1, :cond_0

    .line 357
    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .local v0, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 359
    .end local v0    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {v0, p0}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 363
    .restart local v0    # "uri":Landroid/net/Uri;
    :goto_0
    if-eqz p3, :cond_1

    .line 364
    invoke-static {v0, p3}, Lcom/molihuan/pathselector/utils/PermissionsTools;->goApplyUriPermissionPage(Landroid/net/Uri;Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 365
    :cond_1
    if-eqz p2, :cond_2

    .line 366
    invoke-static {v0, p2}, Lcom/molihuan/pathselector/utils/PermissionsTools;->goApplyUriPermissionPage(Landroid/net/Uri;Landroid/app/Activity;)V

    .line 370
    :goto_1
    return-void

    .line 368
    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "fragment and activity cannot both be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static goApplyUriPermissionPage(Ljava/lang/String;ZLandroidx/fragment/app/Fragment;)V
    .locals 1
    .param p0, "uriSuf"    # Ljava/lang/String;
    .param p1, "tree"    # Z
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 335
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/molihuan/pathselector/utils/PermissionsTools;->goApplyUriPermissionPage(Ljava/lang/String;ZLandroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    .line 336
    return-void
.end method

.method private static isGrantedUriPermission(Landroid/net/Uri;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Z
    .locals 1
    .param p0, "uri"    # Landroid/net/Uri;
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 216
    invoke-static {p0, p1, p2}, Lcom/molihuan/pathselector/utils/PermissionsTools;->existsGrantedUriPermission(Landroid/net/Uri;Landroid/app/Activity;Landroidx/fragment/app/Fragment;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static specialPermissionsOfStorage(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "specialPermissionCallback"    # Lcom/hjq/permissions/OnPermissionCallback;

    .line 162
    invoke-static {}, Lcom/molihuan/pathselector/utils/VersionTool;->isAndroid11()Z

    move-result v0

    if-nez v0, :cond_0

    .line 163
    return-void

    .line 166
    :cond_0
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 168
    .local v0, "isGet":Z
    if-eqz v0, :cond_1

    .line 169
    const-string/jumbo v1, "\u5168\u6587\u4ef6\u8bfb\u53d6\u6743\u9650------\u5df2\u83b7\u53d6"

    invoke-static {v1}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 170
    return-void

    .line 173
    :cond_1
    invoke-static {p0, p1}, Lcom/molihuan/pathselector/utils/PermissionsTools;->specialPermissionsOfStorageNoCheck(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 175
    return-void
.end method

.method public static specialPermissionsOfStorageNoCheck(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "specialPermissionCallback"    # Lcom/hjq/permissions/OnPermissionCallback;

    .line 178
    invoke-static {p0}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->permission([Ljava/lang/String;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/hjq/permissions/XXPermissions;->unchecked()Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    new-instance v1, Lcom/molihuan/pathselector/utils/PermissionsTools$4;

    invoke-direct {v1, p1, p0}, Lcom/molihuan/pathselector/utils/PermissionsTools$4;-><init>(Lcom/hjq/permissions/OnPermissionCallback;Landroid/content/Context;)V

    .line 183
    invoke-virtual {v0, v1}, Lcom/hjq/permissions/XXPermissions;->request(Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 204
    return-void
.end method

.method public static specialPermissionsOfStorageWithDialog(Landroid/content/Context;ZLcom/hjq/permissions/OnPermissionCallback;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "useDialog"    # Z
    .param p2, "specialPermissionCallback"    # Lcom/hjq/permissions/OnPermissionCallback;

    .line 71
    if-eqz p1, :cond_2

    .line 73
    invoke-static {}, Lcom/molihuan/pathselector/utils/VersionTool;->isAndroid11()Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    return-void

    .line 77
    :cond_0
    const-string v0, "android.permission.MANAGE_EXTERNAL_STORAGE"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->isGranted(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    .line 79
    .local v0, "isGet":Z
    if-eqz v0, :cond_1

    .line 80
    const-string/jumbo v1, "\u5168\u6587\u4ef6\u8bfb\u53d6\u6743\u9650------\u5df2\u83b7\u53d6"

    invoke-static {v1}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 81
    return-void

    .line 84
    :cond_1
    new-instance v1, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;

    invoke-direct {v1, p0}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/molihuan/pathselector/entity/FontBean;

    sget v3, Lcom/molihuan/pathselector/R$string;->tip_dialog_get_special_permissions_mlh:I

    .line 85
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/molihuan/pathselector/entity/FontBean;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->setContent(Lcom/molihuan/pathselector/entity/FontBean;)Lcom/molihuan/pathselector/dialog/impl/MessageDialog;

    move-result-object v1

    new-instance v2, Lcom/molihuan/pathselector/entity/FontBean;

    sget v3, Lcom/molihuan/pathselector/R$string;->option_confirm_mlh:I

    .line 86
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/molihuan/pathselector/entity/FontBean;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/molihuan/pathselector/utils/PermissionsTools$2;

    invoke-direct {v3, p0, p2}, Lcom/molihuan/pathselector/utils/PermissionsTools$2;-><init>(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V

    invoke-virtual {v1, v2, v3}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->setConfirm(Lcom/molihuan/pathselector/entity/FontBean;Lcom/molihuan/pathselector/dialog/BaseDialog$IOnConfirmListener;)Lcom/molihuan/pathselector/dialog/impl/MessageDialog;

    move-result-object v1

    new-instance v2, Lcom/molihuan/pathselector/entity/FontBean;

    sget v3, Lcom/molihuan/pathselector/R$string;->option_cancel_mlh:I

    .line 94
    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/molihuan/pathselector/entity/FontBean;-><init>(Ljava/lang/CharSequence;)V

    new-instance v3, Lcom/molihuan/pathselector/utils/PermissionsTools$1;

    invoke-direct {v3}, Lcom/molihuan/pathselector/utils/PermissionsTools$1;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->setCancel(Lcom/molihuan/pathselector/entity/FontBean;Lcom/molihuan/pathselector/dialog/BaseDialog$IOnCancelListener;)Lcom/molihuan/pathselector/dialog/impl/MessageDialog;

    move-result-object v1

    .line 101
    invoke-virtual {v1}, Lcom/molihuan/pathselector/dialog/impl/MessageDialog;->show()V

    .line 103
    .end local v0    # "isGet":Z
    goto :goto_0

    .line 104
    :cond_2
    invoke-static {p0, p2}, Lcom/molihuan/pathselector/utils/PermissionsTools;->specialPermissionsOfStorage(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 106
    :goto_0
    return-void
.end method

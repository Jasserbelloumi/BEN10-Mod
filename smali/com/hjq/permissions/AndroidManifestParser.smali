.class final Lcom/hjq/permissions/AndroidManifestParser;
.super Ljava/lang/Object;
.source "AndroidManifestParser.java"


# static fields
.field private static final ANDROID_MANIFEST_FILE_NAME:Ljava/lang/String; = "AndroidManifest.xml"

.field private static final ANDROID_NAMESPACE_URI:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final ATTR_MAX_SDK_VERSION:Ljava/lang/String; = "maxSdkVersion"

.field private static final ATTR_MIN_SDK_VERSION:Ljava/lang/String; = "minSdkVersion"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "package"

.field private static final ATTR_PERMISSION:Ljava/lang/String; = "permission"

.field private static final ATTR_REQUEST_LEGACY_EXTERNAL_STORAGE:Ljava/lang/String; = "requestLegacyExternalStorage"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supportsPictureInPicture"

.field private static final ATTR_USES_PERMISSION_FLAGS:Ljava/lang/String; = "usesPermissionFlags"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_ACTIVITY_ALIAS:Ljava/lang/String; = "activity-alias"

.field private static final TAG_APPLICATION:Ljava/lang/String; = "application"

.field private static final TAG_MANIFEST:Ljava/lang/String; = "manifest"

.field private static final TAG_SERVICE:Ljava/lang/String; = "service"

.field private static final TAG_USES_PERMISSION:Ljava/lang/String; = "uses-permission"

.field private static final TAG_USES_PERMISSION_SDK_23:Ljava/lang/String; = "uses-permission-sdk-23"

.field private static final TAG_USES_PERMISSION_SDK_M:Ljava/lang/String; = "uses-permission-sdk-m"

.field private static final TAG_USES_SDK:Ljava/lang/String; = "uses-sdk"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseActivityFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;
    .locals 4
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 130
    new-instance v0, Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;

    invoke-direct {v0}, Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;-><init>()V

    .line 131
    .local v0, "activityInfo":Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "name"

    invoke-interface {p0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;->name:Ljava/lang/String;

    .line 132
    const-string/jumbo v2, "supportsPictureInPicture"

    const/4 v3, 0x0

    invoke-interface {p0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;->supportsPictureInPicture:Z

    .line 134
    return-object v0
.end method

.method static parseAndroidManifest(Landroid/content/Context;I)Lcom/hjq/permissions/AndroidManifestInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "apkCookie"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 55
    new-instance v0, Lcom/hjq/permissions/AndroidManifestInfo;

    invoke-direct {v0}, Lcom/hjq/permissions/AndroidManifestInfo;-><init>()V

    .line 56
    .local v0, "manifestInfo":Lcom/hjq/permissions/AndroidManifestInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    .line 57
    const-string v2, "AndroidManifest.xml"

    invoke-virtual {v1, p1, v2}, Landroid/content/res/AssetManager;->openXmlResourceParser(ILjava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    .line 61
    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 62
    goto/16 :goto_1

    .line 65
    :cond_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "tagName":Ljava/lang/String;
    const-string v3, "manifest"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 68
    const/4 v3, 0x0

    const-string v4, "package"

    invoke-interface {v1, v3, v4}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/hjq/permissions/AndroidManifestInfo;->packageName:Ljava/lang/String;

    .line 71
    :cond_1
    const-string/jumbo v3, "uses-sdk"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 72
    invoke-static {v1}, Lcom/hjq/permissions/AndroidManifestParser;->parseUsesSdkFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/hjq/permissions/AndroidManifestInfo;->usesSdkInfo:Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;

    .line 75
    :cond_2
    const-string/jumbo v3, "uses-permission"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 76
    const-string/jumbo v3, "uses-permission-sdk-23"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 77
    const-string/jumbo v3, "uses-permission-sdk-m"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 78
    :cond_3
    invoke-static {v1}, Lcom/hjq/permissions/AndroidManifestParser;->parsePermissionFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;

    move-result-object v3

    .line 79
    .local v3, "permissionInfo":Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;
    iget-object v4, v0, Lcom/hjq/permissions/AndroidManifestInfo;->permissionInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v3    # "permissionInfo":Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;
    :cond_4
    const-string v3, "application"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 83
    invoke-static {v1}, Lcom/hjq/permissions/AndroidManifestParser;->parseApplicationFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;

    move-result-object v3

    iput-object v3, v0, Lcom/hjq/permissions/AndroidManifestInfo;->applicationInfo:Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;

    .line 86
    :cond_5
    const-string v3, "activity"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 87
    const-string v3, "activity-alias"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 88
    :cond_6
    invoke-static {v1}, Lcom/hjq/permissions/AndroidManifestParser;->parseActivityFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;

    move-result-object v3

    .line 89
    .local v3, "activityInfo":Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;
    iget-object v4, v0, Lcom/hjq/permissions/AndroidManifestInfo;->activityInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    .end local v3    # "activityInfo":Lcom/hjq/permissions/AndroidManifestInfo$ActivityInfo;
    :cond_7
    const-string/jumbo v3, "service"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 93
    invoke-static {v1}, Lcom/hjq/permissions/AndroidManifestParser;->parseServerFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;

    move-result-object v3

    .line 94
    .local v3, "serviceInfo":Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;
    iget-object v4, v0, Lcom/hjq/permissions/AndroidManifestInfo;->serviceInfoList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    .end local v2    # "tagName":Ljava/lang/String;
    .end local v3    # "serviceInfo":Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;
    :cond_8
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_9

    .line 99
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 101
    return-object v0

    .line 97
    :cond_9
    goto/16 :goto_0
.end method

.method private static parseApplicationFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;
    .locals 4
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 122
    new-instance v0, Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;

    invoke-direct {v0}, Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;-><init>()V

    .line 123
    .local v0, "applicationInfo":Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "name"

    invoke-interface {p0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;->name:Ljava/lang/String;

    .line 124
    const-string v2, "requestLegacyExternalStorage"

    const/4 v3, 0x0

    invoke-interface {p0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, v0, Lcom/hjq/permissions/AndroidManifestInfo$ApplicationInfo;->requestLegacyExternalStorage:Z

    .line 126
    return-object v0
.end method

.method private static parsePermissionFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;
    .locals 4
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 112
    new-instance v0, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;

    invoke-direct {v0}, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;-><init>()V

    .line 113
    .local v0, "permissionInfo":Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "name"

    invoke-interface {p0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->name:Ljava/lang/String;

    .line 114
    const-string v2, "maxSdkVersion"

    const v3, 0x7fffffff

    invoke-interface {p0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    iput v2, v0, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->maxSdkVersion:I

    .line 116
    const-string/jumbo v2, "usesPermissionFlags"

    const/4 v3, 0x0

    invoke-interface {p0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hjq/permissions/AndroidManifestInfo$PermissionInfo;->usesPermissionFlags:I

    .line 118
    return-object v0
.end method

.method private static parseServerFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;
    .locals 3
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 138
    new-instance v0, Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;

    invoke-direct {v0}, Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;-><init>()V

    .line 139
    .local v0, "serviceInfo":Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "name"

    invoke-interface {p0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;->name:Ljava/lang/String;

    .line 140
    const-string v2, "permission"

    invoke-interface {p0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/hjq/permissions/AndroidManifestInfo$ServiceInfo;->permission:Ljava/lang/String;

    .line 141
    return-object v0
.end method

.method private static parseUsesSdkFromXml(Landroid/content/res/XmlResourceParser;)Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;
    .locals 4
    .param p0, "parser"    # Landroid/content/res/XmlResourceParser;

    .line 105
    new-instance v0, Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;

    invoke-direct {v0}, Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;-><init>()V

    .line 106
    .local v0, "usesSdkInfo":Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "minSdkVersion"

    const/4 v3, 0x0

    invoke-interface {p0, v1, v2, v3}, Landroid/content/res/XmlResourceParser;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Lcom/hjq/permissions/AndroidManifestInfo$UsesSdkInfo;->minSdkVersion:I

    .line 108
    return-object v0
.end method

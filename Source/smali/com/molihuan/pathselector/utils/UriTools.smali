.class public Lcom/molihuan/pathselector/utils/UriTools;
.super Ljava/lang/Object;
.source "UriTools.java"


# static fields
.field public static final URI_PERMISSION_REQUEST_COMPLETE_PREFIX:Ljava/lang/String; = "content://com.android.externalstorage.documents"

.field public static final URI_PERMISSION_REQUEST_PREFIX:Ljava/lang/String; = "com.android.externalstorage.documents"

.field public static final URI_PERMISSION_REQUEST_SUFFIX_SPECIAL_SYMBOL:Ljava/lang/String; = "primary:"

.field public static final URI_SEPARATOR:Ljava/lang/String; = "%2F"

.field public static final URI_STORAGE_JUMP_ANRROID_DATA:Ljava/lang/String; = "content://com.android.externalstorage.documents/tree/primary%3AAndroid%2Fdata/document/primary%3AAndroid%2Fdata"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final URI_STORAGE_JUMP_ANRROID_OBB:Ljava/lang/String; = "content://com.android.externalstorage.documents/tree/primary%3AAndroid%2Fdata/document/primary%3AAndroid%2Fobb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final URI_STORAGE_SAVED_ANRROID_DATA:Ljava/lang/String; = "content://com.android.externalstorage.documents/tree/primary%3AAndroid%2Fdata"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final URI_STORAGE_SAVED_ANRROID_OBB:Ljava/lang/String; = "content://com.android.externalstorage.documents/tree/primary%3AAndroid%2Fobb"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAndroidDataPackageNames(Landroid/content/Context;)Ljava/util/List;
    .locals 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 59
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 61
    .local v1, "packageNameList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 64
    .local v2, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 67
    .local v3, "resolveInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 68
    .local v5, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 69
    .local v6, "packageName":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/molihuan/pathselector/utils/MConstants;->PATH_ANRROID_DATA:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/blankj/molihuan/utilcode/util/FileUtils;->isFileExists(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 70
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    .end local v5    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    goto :goto_0

    .line 74
    .end local v6    # "packageName":Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public static path2Uri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "tree"    # Z

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "primary:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/molihuan/pathselector/utils/MConstants;->DEFAULT_ROOTPATH:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "uriSuf":Ljava/lang/String;
    const-string v1, "com.android.externalstorage.documents"

    if-eqz p1, :cond_0

    .line 96
    invoke-static {v1, v0}, Landroid/provider/DocumentsContract;->buildTreeDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .local v1, "uri":Landroid/net/Uri;
    goto :goto_0

    .line 98
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    invoke-static {v1, v0}, Landroid/provider/DocumentsContract;->buildDocumentUri(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 100
    .restart local v1    # "uri":Landroid/net/Uri;
    :goto_0
    return-object v1
.end method

.class public final Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/blankj/molihuan/utilcode/util/PermissionUtils$ThemeCallback;,
        Lcom/blankj/molihuan/utilcode/util/PermissionUtils$FullCallback;,
        Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;,
        Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SingleCallback;,
        Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener;,
        Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;,
        Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

.field private static sSimpleCallback4DrawOverlays:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

.field private static sSimpleCallback4WriteSettings:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;


# instance fields
.field private mFullCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$FullCallback;

.field private mOnExplainListener:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;

.field private mOnRationaleListener:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener;

.field private mPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsDenied:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsDeniedForever:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsGranted:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPermissionsParam:[Ljava/lang/String;

.field private mPermissionsRequest:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSimpleCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

.field private mSingleCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SingleCallback;

.field private mThemeCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$ThemeCallback;


# direct methods
.method private varargs constructor <init>([Ljava/lang/String;)V
    .locals 0
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    .line 226
    sput-object p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->sInstance:Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    .line 227
    return-void
.end method

.method static synthetic access$002(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .param p1, "x1"    # Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1000(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .param p1, "x1"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->shouldRationale(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .param p1, "x1"    # Ljava/util/List;

    .line 38
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .param p1, "x1"    # Landroid/app/Activity;

    .line 38
    invoke-direct {p0, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->onRequestPermissionsResult(Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$1200()Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;
    .locals 1

    .line 38
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;
    .locals 0
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    .line 38
    sput-object p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    return-object p0
.end method

.method static synthetic access$1300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;
    .locals 1

    .line 38
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;
    .locals 0
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    .line 38
    sput-object p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)V
    .locals 0
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    .line 38
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->requestCallback()V

    return-void
.end method

.method static synthetic access$300()Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .locals 1

    .line 38
    sget-object v0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->sInstance:Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    return-object v0
.end method

.method static synthetic access$400(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    .line 38
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$ThemeCallback;
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    .line 38
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mThemeCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$ThemeCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;
    .locals 1
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    .line 38
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mOnExplainListener:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;

    return-object v0
.end method

.method static synthetic access$602(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;
    .locals 0
    .param p0, "x0"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .param p1, "x1"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;

    .line 38
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mOnExplainListener:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;

    return-object p1
.end method

.method static synthetic access$800(Landroid/app/Activity;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # I

    .line 38
    invoke-static {p0, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->startWriteSettingsActivity(Landroid/app/Activity;I)V

    return-void
.end method

.method static synthetic access$900(Landroid/app/Activity;I)V
    .locals 0
    .param p0, "x0"    # Landroid/app/Activity;
    .param p1, "x1"    # I

    .line 38
    invoke-static {p0, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->startOverlayPermissionActivity(Landroid/app/Activity;I)V

    return-void
.end method

.method public static getPermissions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 64
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->getPermissions(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getPermissions(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .param p0, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 74
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 76
    .local v0, "pm":Landroid/content/pm/PackageManager;
    const/16 v1, 0x1000

    :try_start_0
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .line 77
    .local v1, "permissions":[Ljava/lang/String;
    if-nez v1, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 78
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 79
    .end local v1    # "permissions":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 80
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 81
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    return-object v2
.end method

.method private getPermissionsStatus(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .line 373
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 374
    .local v1, "permission":Ljava/lang/String;
    invoke-static {v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->isGranted(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 375
    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 377
    :cond_0
    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 378
    invoke-virtual {p1, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 379
    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 382
    .end local v1    # "permission":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 383
    :cond_2
    return-void
.end method

.method private static varargs getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;
    .locals 13
    .param p0, "permissionsParam"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v1, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->getPermissions()Ljava/util/List;

    move-result-object v2

    .line 110
    .local v2, "appPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, p0

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_3

    aget-object v6, p0, v5

    .line 111
    .local v6, "param":Ljava/lang/String;
    const/4 v7, 0x0

    .line 112
    .local v7, "isIncludeInManifest":Z
    invoke-static {v6}, Lcom/blankj/molihuan/utilcode/constant/PermissionConstants;->getPermissions(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 113
    .local v8, "permissions":[Ljava/lang/String;
    array-length v9, v8

    move v10, v4

    :goto_1
    if-ge v10, v9, :cond_1

    aget-object v11, v8, v10

    .line 114
    .local v11, "permission":Ljava/lang/String;
    invoke-interface {v2, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 115
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    const/4 v7, 0x1

    .line 113
    .end local v11    # "permission":Ljava/lang/String;
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 119
    :cond_1
    if-nez v7, :cond_2

    .line 120
    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "U should add the permission of "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " in manifest."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "PermissionUtils"

    invoke-static {v10, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    .end local v6    # "param":Ljava/lang/String;
    .end local v7    # "isIncludeInManifest":Z
    .end local v8    # "permissions":[Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 124
    :cond_3
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    return-object v3
.end method

.method private static isGranted(Ljava/lang/String;)Z
    .locals 2
    .param p0, "permission"    # Ljava/lang/String;

    .line 128
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 130
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0, p0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 128
    :goto_1
    return v0
.end method

.method public static varargs isGranted([Ljava/lang/String;)Z
    .locals 7
    .param p0, "permissions"    # [Ljava/lang/String;

    .line 92
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 93
    .local v0, "requestAndDeniedPermissions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 94
    .local v1, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 95
    return v3

    .line 97
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/List;

    .line 98
    .local v2, "requestPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 99
    .local v5, "permission":Ljava/lang/String;
    invoke-static {v5}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->isGranted(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 100
    return v3

    .line 102
    .end local v5    # "permission":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 103
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public static isGrantedDrawOverlays()Z
    .locals 1

    .line 171
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings;->canDrawOverlays(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isGrantedWriteSettings()Z
    .locals 1

    .line 140
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$System;->canWrite(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static launchAppDetailsSettings()V
    .locals 2

    .line 199
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->getLaunchAppDetailsSettingsIntent(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    .line 200
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 201
    :cond_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Application;->startActivity(Landroid/content/Intent;)V

    .line 202
    return-void
.end method

.method private onRequestPermissionsResult(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .line 414
    invoke-direct {p0, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->getPermissionsStatus(Landroid/app/Activity;)V

    .line 415
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->requestCallback()V

    .line 416
    return-void
.end method

.method public static varargs permission([Ljava/lang/String;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .locals 1
    .param p0, "permissions"    # [Ljava/lang/String;

    .line 221
    new-instance v0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    invoke-direct {v0, p0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method public static varargs permissionGroup([Ljava/lang/String;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .locals 1
    .param p0, "permissions"    # [Ljava/lang/String;

    .line 211
    invoke-static {p0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->permission([Ljava/lang/String;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils;

    move-result-object v0

    return-object v0
.end method

.method private rationalInner(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "activity"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;
    .param p2, "againRunnable"    # Ljava/lang/Runnable;

    .line 356
    invoke-direct {p0, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->getPermissionsStatus(Landroid/app/Activity;)V

    .line 357
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mOnRationaleListener:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener;

    new-instance v1, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$1;-><init>(Lcom/blankj/molihuan/utilcode/util/PermissionUtils;Ljava/lang/Runnable;Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;)V

    invoke-interface {v0, p1, v1}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener;->rationale(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener$ShouldRequest;)V

    .line 370
    return-void
.end method

.method private requestCallback()V
    .locals 6

    .line 386
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mSingleCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SingleCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 387
    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    iget-object v3, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    iget-object v4, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    iget-object v5, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v0, v2, v3, v4, v5}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SingleCallback;->callback(ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 389
    iput-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mSingleCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SingleCallback;

    .line 391
    :cond_0
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mSimpleCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    if-eqz v0, :cond_2

    .line 392
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mSimpleCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    invoke-interface {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    goto :goto_0

    .line 395
    :cond_1
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mSimpleCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    invoke-interface {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;->onDenied()V

    .line 397
    :goto_0
    iput-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mSimpleCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    .line 399
    :cond_2
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mFullCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$FullCallback;

    if-eqz v0, :cond_6

    .line 400
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    .line 401
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 402
    :cond_3
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mFullCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$FullCallback;

    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    invoke-interface {v0, v2}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$FullCallback;->onGranted(Ljava/util/List;)V

    .line 404
    :cond_4
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 405
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mFullCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$FullCallback;

    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    iget-object v3, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$FullCallback;->onDenied(Ljava/util/List;Ljava/util/List;)V

    .line 407
    :cond_5
    iput-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mFullCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$FullCallback;

    .line 409
    :cond_6
    iput-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mOnRationaleListener:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener;

    .line 410
    iput-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mThemeCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$ThemeCallback;

    .line 411
    return-void
.end method

.method public static requestDrawOverlays(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    .line 176
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->isGrantedDrawOverlays()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 177
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    .line 178
    :cond_0
    return-void

    .line 180
    :cond_1
    sput-object p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->sSimpleCallback4DrawOverlays:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    .line 181
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->start(I)V

    .line 182
    return-void
.end method

.method public static requestWriteSettings(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;)V
    .locals 1
    .param p0, "callback"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    .line 145
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->isGrantedWriteSettings()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;->onGranted()V

    .line 147
    :cond_0
    return-void

    .line 149
    :cond_1
    sput-object p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->sSimpleCallback4WriteSettings:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    .line 150
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->start(I)V

    .line 151
    return-void
.end method

.method private shouldRationale(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)Z
    .locals 4
    .param p1, "activity"    # Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;
    .param p2, "againRunnable"    # Ljava/lang/Runnable;

    .line 341
    const/4 v0, 0x0

    .line 342
    .local v0, "isRationale":Z
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mOnRationaleListener:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener;

    if-eqz v1, :cond_2

    .line 343
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 344
    .local v2, "permission":Ljava/lang/String;
    invoke-virtual {p1, v2}, Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 345
    invoke-direct {p0, p1, p2}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->rationalInner(Lcom/blankj/molihuan/utilcode/util/UtilsTransActivity;Ljava/lang/Runnable;)V

    .line 346
    const/4 v0, 0x1

    .line 347
    goto :goto_1

    .line 349
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 350
    :cond_1
    :goto_1
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mOnRationaleListener:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener;

    .line 352
    :cond_2
    return v0
.end method

.method private static startOverlayPermissionActivity(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_OVERLAY_PERMISSION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 188
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 189
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->launchAppDetailsSettings()V

    .line 190
    return-void

    .line 192
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 193
    return-void
.end method

.method private startPermissionActivity()V
    .locals 1

    .line 335
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils$PermissionActivityImpl;->start(I)V

    .line 336
    return-void
.end method

.method private static startWriteSettingsActivity(Landroid/app/Activity;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "requestCode"    # I

    .line 155
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/Utils;->getApp()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 157
    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/UtilsBridge;->isIntentAvailable(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 158
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->launchAppDetailsSettings()V

    .line 159
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 162
    return-void
.end method


# virtual methods
.method public callback(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$FullCallback;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .locals 0
    .param p1, "callback"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$FullCallback;

    .line 280
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mFullCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$FullCallback;

    .line 281
    return-object p0
.end method

.method public callback(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .locals 0
    .param p1, "callback"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    .line 269
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mSimpleCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SimpleCallback;

    .line 270
    return-object p0
.end method

.method public callback(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SingleCallback;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .locals 0
    .param p1, "callback"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SingleCallback;

    .line 258
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mSingleCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$SingleCallback;

    .line 259
    return-object p0
.end method

.method public explain(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .locals 0
    .param p1, "listener"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;

    .line 236
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mOnExplainListener:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnExplainListener;

    .line 237
    return-object p0
.end method

.method public rationale(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .locals 0
    .param p1, "listener"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener;

    .line 247
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mOnRationaleListener:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$OnRationaleListener;

    .line 248
    return-object p0
.end method

.method public request()V
    .locals 4

    .line 299
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    if-eqz v0, :cond_5

    array-length v0, v0

    if-gtz v0, :cond_0

    goto/16 :goto_3

    .line 304
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    .line 307
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDeniedForever:Ljava/util/List;

    .line 310
    iget-object v0, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsParam:[Ljava/lang/String;

    invoke-static {v0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->getRequestAndDeniedPermissions([Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v0

    .line 311
    .local v0, "requestAndDeniedPermissions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;"
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 312
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsDenied:Ljava/util/List;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-ge v1, v2, :cond_1

    .line 315
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    iget-object v2, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 316
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->requestCallback()V

    goto :goto_2

    .line 318
    :cond_1
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 319
    .local v2, "permission":Ljava/lang/String;
    invoke-static {v2}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->isGranted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 320
    iget-object v3, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsGranted:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 322
    :cond_2
    iget-object v3, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    .end local v2    # "permission":Ljava/lang/String;
    :goto_1
    goto :goto_0

    .line 325
    :cond_3
    iget-object v1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mPermissionsRequest:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 326
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->requestCallback()V

    goto :goto_2

    .line 328
    :cond_4
    invoke-direct {p0}, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->startPermissionActivity()V

    .line 331
    :goto_2
    return-void

    .line 300
    .end local v0    # "requestAndDeniedPermissions":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/List<Ljava/lang/String;>;Ljava/util/List<Ljava/lang/String;>;>;"
    :cond_5
    :goto_3
    const-string v0, "PermissionUtils"

    const-string v1, "No permissions to request."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    return-void
.end method

.method public theme(Lcom/blankj/molihuan/utilcode/util/PermissionUtils$ThemeCallback;)Lcom/blankj/molihuan/utilcode/util/PermissionUtils;
    .locals 0
    .param p1, "callback"    # Lcom/blankj/molihuan/utilcode/util/PermissionUtils$ThemeCallback;

    .line 291
    iput-object p1, p0, Lcom/blankj/molihuan/utilcode/util/PermissionUtils;->mThemeCallback:Lcom/blankj/molihuan/utilcode/util/PermissionUtils$ThemeCallback;

    .line 292
    return-object p0
.end method

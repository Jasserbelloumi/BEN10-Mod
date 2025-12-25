.class public final Lcom/hjq/permissions/XXPermissions;
.super Ljava/lang/Object;
.source "XXPermissions.java"


# static fields
.field public static final REQUEST_CODE:I = 0x401

.field private static sCheckMode:Ljava/lang/Boolean;

.field private static sInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;


# instance fields
.field private mCheckMode:Ljava/lang/Boolean;

.field private final mContext:Landroid/content/Context;

.field private mInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

.field private final mPermissions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mPermissions:Ljava/util/List;

    .line 92
    iput-object p1, p0, Lcom/hjq/permissions/XXPermissions;->mContext:Landroid/content/Context;

    .line 93
    return-void
.end method

.method public static containsSpecial(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 305
    .local p0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/hjq/permissions/PermissionApi;->containsSpecialPermission(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static varargs containsSpecial([Ljava/lang/String;)Z
    .locals 1
    .param p0, "permissions"    # [Ljava/lang/String;

    .line 301
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/hjq/permissions/XXPermissions;->containsSpecial(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static getDenied(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 287
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/hjq/permissions/PermissionApi;->getDeniedPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getDenied(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 279
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->getDenied(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs getDenied(Landroid/content/Context;[[Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 283
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayLists([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->getDenied(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static getInterceptor()Lcom/hjq/permissions/IPermissionInterceptor;
    .locals 1

    .line 66
    sget-object v0, Lcom/hjq/permissions/XXPermissions;->sInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/hjq/permissions/XXPermissions$1;

    invoke-direct {v0}, Lcom/hjq/permissions/XXPermissions$1;-><init>()V

    sput-object v0, Lcom/hjq/permissions/XXPermissions;->sInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    .line 69
    :cond_0
    sget-object v0, Lcom/hjq/permissions/XXPermissions;->sInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    return-object v0
.end method

.method private isCheckMode(Landroid/content/Context;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 251
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mCheckMode:Ljava/lang/Boolean;

    if-nez v0, :cond_1

    .line 252
    sget-object v0, Lcom/hjq/permissions/XXPermissions;->sCheckMode:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 253
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->isDebugMode(Landroid/content/Context;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/XXPermissions;->sCheckMode:Ljava/lang/Boolean;

    .line 255
    :cond_0
    sget-object v0, Lcom/hjq/permissions/XXPermissions;->sCheckMode:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mCheckMode:Ljava/lang/Boolean;

    .line 257
    :cond_1
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mCheckMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static isGranted(Landroid/content/Context;Ljava/util/List;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 272
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/hjq/permissions/PermissionApi;->isGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static varargs isGranted(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 264
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->isGranted(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static varargs isGranted(Landroid/content/Context;[[Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [[Ljava/lang/String;

    .line 268
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayLists([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->isGranted(Landroid/content/Context;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isPermanentDenied(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 324
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/hjq/permissions/PermissionApi;->isPermissionPermanentDenied(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static varargs isPermanentDenied(Landroid/app/Activity;[Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 316
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->isPermanentDenied(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static varargs isPermanentDenied(Landroid/app/Activity;[[Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [[Ljava/lang/String;

    .line 320
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayLists([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->isPermanentDenied(Landroid/app/Activity;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public static isSpecial(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .line 294
    invoke-static {p0}, Lcom/hjq/permissions/PermissionApi;->isSpecialPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static setCheckMode(Z)V
    .locals 1
    .param p0, "checkMode"    # Z

    .line 52
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/hjq/permissions/XXPermissions;->sCheckMode:Ljava/lang/Boolean;

    .line 53
    return-void
.end method

.method public static setInterceptor(Lcom/hjq/permissions/IPermissionInterceptor;)V
    .locals 0
    .param p0, "interceptor"    # Lcom/hjq/permissions/IPermissionInterceptor;

    .line 59
    sput-object p0, Lcom/hjq/permissions/XXPermissions;->sInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    .line 60
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .line 362
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V

    .line 363
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;Ljava/lang/String;Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/hjq/permissions/OnPermissionPageCallback;

    .line 390
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionPageCallback;)V

    .line 391
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 377
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x401

    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;I)V

    .line 378
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;Ljava/util/List;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 383
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/hjq/permissions/PermissionUtils;->getSmartPermissionIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 384
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0, p2}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Landroid/app/Activity;Landroid/content/Intent;I)Z

    .line 385
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p2, "callback"    # Lcom/hjq/permissions/OnPermissionPageCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionPageCallback;",
            ")V"
        }
    .end annotation

    .line 402
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Landroid/app/Activity;Landroid/content/Intent;)Z

    .line 404
    return-void

    .line 406
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {p0, v0, p2}, Lcom/hjq/permissions/PermissionPageFragment;->beginRequest(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/hjq/permissions/OnPermissionPageCallback;)V

    .line 407
    return-void
.end method

.method public static varargs startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 367
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V

    .line 368
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Activity;[Ljava/lang/String;Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/hjq/permissions/OnPermissionPageCallback;

    .line 396
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/hjq/permissions/PermissionUtils;->asArrayLists([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionPageCallback;)V

    .line 397
    return-void
.end method

.method public static varargs startPermissionActivity(Landroid/app/Activity;[[Ljava/lang/String;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permissions"    # [[Ljava/lang/String;

    .line 372
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayLists([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V

    .line 373
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Fragment;)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;

    .line 412
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;)V

    .line 413
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Fragment;Ljava/lang/String;Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/hjq/permissions/OnPermissionPageCallback;

    .line 448
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionPageCallback;)V

    .line 449
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;)V
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 427
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x401

    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;I)V

    .line 428
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;I)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 433
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 434
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 435
    return-void

    .line 437
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 438
    invoke-static {v0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    .line 439
    return-void

    .line 441
    :cond_1
    invoke-static {v0, p1}, Lcom/hjq/permissions/PermissionUtils;->getSmartPermissionIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    .line 442
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v1, p2}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Landroid/app/Fragment;Landroid/content/Intent;I)Z

    .line 443
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p2, "callback"    # Lcom/hjq/permissions/OnPermissionPageCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionPageCallback;",
            ")V"
        }
    .end annotation

    .line 460
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 461
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 464
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_2()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 465
    return-void

    .line 467
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 468
    invoke-static {v0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Landroid/app/Fragment;Landroid/content/Intent;)Z

    .line 469
    return-void

    .line 471
    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p2}, Lcom/hjq/permissions/PermissionPageFragment;->beginRequest(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/hjq/permissions/OnPermissionPageCallback;)V

    .line 472
    return-void

    .line 462
    :cond_3
    :goto_0
    return-void
.end method

.method public static varargs startPermissionActivity(Landroid/app/Fragment;[Ljava/lang/String;)V
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 417
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;)V

    .line 418
    return-void
.end method

.method public static startPermissionActivity(Landroid/app/Fragment;[Ljava/lang/String;Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 2
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/hjq/permissions/OnPermissionPageCallback;

    .line 454
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/hjq/permissions/PermissionUtils;->asArrayLists([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionPageCallback;)V

    .line 455
    return-void
.end method

.method public static varargs startPermissionActivity(Landroid/app/Fragment;[[Ljava/lang/String;)V
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;
    .param p1, "permissions"    # [[Ljava/lang/String;

    .line 422
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayLists([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Fragment;Ljava/util/List;)V

    .line 423
    return-void
.end method

.method public static startPermissionActivity(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 330
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/content/Context;Ljava/util/List;)V

    .line 331
    return-void
.end method

.method public static startPermissionActivity(Landroid/content/Context;Ljava/util/List;)V
    .locals 3
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

    .line 347
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    .line 348
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 349
    invoke-static {v0, p1}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/app/Activity;Ljava/util/List;)V

    .line 350
    return-void

    .line 352
    :cond_0
    invoke-static {p0, p1}, Lcom/hjq/permissions/PermissionUtils;->getSmartPermissionIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    .line 353
    .local v1, "intent":Landroid/content/Intent;
    instance-of v2, p0, Landroid/app/Activity;

    if-nez v2, :cond_1

    .line 354
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 356
    :cond_1
    invoke-static {p0, v1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 357
    return-void
.end method

.method public static varargs startPermissionActivity(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 334
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/content/Context;Ljava/util/List;)V

    .line 335
    return-void
.end method

.method public static varargs startPermissionActivity(Landroid/content/Context;[[Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permissions"    # [[Ljava/lang/String;

    .line 338
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayLists([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroid/content/Context;Ljava/util/List;)V

    .line 339
    return-void
.end method

.method public static startPermissionActivity(Landroidx/fragment/app/Fragment;)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 477
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    .line 478
    return-void
.end method

.method public static startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/lang/String;Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "permission"    # Ljava/lang/String;
    .param p2, "callback"    # Lcom/hjq/permissions/OnPermissionPageCallback;

    .line 513
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionPageCallback;)V

    .line 514
    return-void
.end method

.method public static startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 492
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/16 v0, 0x401

    invoke-static {p0, p1, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;I)V

    .line 493
    return-void
.end method

.method public static startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;I)V
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "requestCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 498
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 499
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 500
    return-void

    .line 502
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    invoke-static {v0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)Z

    .line 504
    return-void

    .line 506
    :cond_1
    invoke-static {v0, p1}, Lcom/hjq/permissions/PermissionUtils;->getSmartPermissionIntent(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v1

    .line 507
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p0, v1, p2}, Lcom/hjq/permissions/StartActivityManager;->startActivityForResult(Landroidx/fragment/app/Fragment;Landroid/content/Intent;I)Z

    .line 508
    return-void
.end method

.method public static startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p2, "callback"    # Lcom/hjq/permissions/OnPermissionPageCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/hjq/permissions/OnPermissionPageCallback;",
            ")V"
        }
    .end annotation

    .line 525
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 526
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 529
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_2()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 530
    return-void

    .line 532
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    invoke-static {v0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/hjq/permissions/StartActivityManager;->startActivity(Landroidx/fragment/app/Fragment;Landroid/content/Intent;)Z

    .line 534
    return-void

    .line 536
    :cond_2
    move-object v1, p1

    check-cast v1, Ljava/util/ArrayList;

    invoke-static {v0, v1, p2}, Lcom/hjq/permissions/PermissionPageFragment;->beginRequest(Landroid/app/Activity;Ljava/util/ArrayList;Lcom/hjq/permissions/OnPermissionPageCallback;)V

    .line 537
    return-void

    .line 527
    :cond_3
    :goto_0
    return-void
.end method

.method public static varargs startPermissionActivity(Landroidx/fragment/app/Fragment;[Ljava/lang/String;)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 482
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    .line 483
    return-void
.end method

.method public static startPermissionActivity(Landroidx/fragment/app/Fragment;[Ljava/lang/String;Lcom/hjq/permissions/OnPermissionPageCallback;)V
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "permissions"    # [Ljava/lang/String;
    .param p2, "callback"    # Lcom/hjq/permissions/OnPermissionPageCallback;

    .line 519
    const/4 v0, 0x1

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/hjq/permissions/PermissionUtils;->asArrayLists([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;Lcom/hjq/permissions/OnPermissionPageCallback;)V

    .line 520
    return-void
.end method

.method public static varargs startPermissionActivity(Landroidx/fragment/app/Fragment;[[Ljava/lang/String;)V
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "permissions"    # [[Ljava/lang/String;

    .line 487
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayLists([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/hjq/permissions/XXPermissions;->startPermissionActivity(Landroidx/fragment/app/Fragment;Ljava/util/List;)V

    .line 488
    return-void
.end method

.method public static with(Landroid/app/Fragment;)Lcom/hjq/permissions/XXPermissions;
    .locals 1
    .param p0, "fragment"    # Landroid/app/Fragment;

    .line 41
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    return-object v0
.end method

.method public static with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 37
    new-instance v0, Lcom/hjq/permissions/XXPermissions;

    invoke-direct {v0, p0}, Lcom/hjq/permissions/XXPermissions;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static with(Landroidx/fragment/app/Fragment;)Lcom/hjq/permissions/XXPermissions;
    .locals 1
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/hjq/permissions/XXPermissions;->with(Landroid/content/Context;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public interceptor(Lcom/hjq/permissions/IPermissionInterceptor;)Lcom/hjq/permissions/XXPermissions;
    .locals 0
    .param p1, "interceptor"    # Lcom/hjq/permissions/IPermissionInterceptor;

    .line 124
    iput-object p1, p0, Lcom/hjq/permissions/XXPermissions;->mInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    .line 125
    return-object p0
.end method

.method public permission(Ljava/util/List;)Lcom/hjq/permissions/XXPermissions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/hjq/permissions/XXPermissions;"
        }
    .end annotation

    .line 107
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 111
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 112
    .local v1, "permission":Ljava/lang/String;
    iget-object v2, p0, Lcom/hjq/permissions/XXPermissions;->mPermissions:Ljava/util/List;

    invoke-static {v2, v1}, Lcom/hjq/permissions/PermissionUtils;->containsPermission(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 113
    goto :goto_0

    .line 115
    :cond_1
    iget-object v2, p0, Lcom/hjq/permissions/XXPermissions;->mPermissions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    .end local v1    # "permission":Ljava/lang/String;
    goto :goto_0

    .line 117
    :cond_2
    return-object p0

    .line 108
    :cond_3
    :goto_1
    return-object p0
.end method

.method public varargs permission([Ljava/lang/String;)Lcom/hjq/permissions/XXPermissions;
    .locals 1
    .param p1, "permissions"    # [Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hjq/permissions/XXPermissions;->permission(Ljava/util/List;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    return-object v0
.end method

.method public varargs permission([[Ljava/lang/String;)Lcom/hjq/permissions/XXPermissions;
    .locals 1
    .param p1, "permissions"    # [[Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/hjq/permissions/PermissionUtils;->asArrayLists([[Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/hjq/permissions/XXPermissions;->permission(Ljava/util/List;)Lcom/hjq/permissions/XXPermissions;

    move-result-object v0

    return-object v0
.end method

.method public request(Lcom/hjq/permissions/OnPermissionCallback;)V
    .locals 11
    .param p1, "callback"    # Lcom/hjq/permissions/OnPermissionCallback;

    .line 140
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 141
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    if-nez v0, :cond_1

    .line 145
    invoke-static {}, Lcom/hjq/permissions/XXPermissions;->getInterceptor()Lcom/hjq/permissions/IPermissionInterceptor;

    move-result-object v0

    iput-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mContext:Landroid/content/Context;

    .line 150
    .local v0, "context":Landroid/content/Context;
    iget-object v7, p0, Lcom/hjq/permissions/XXPermissions;->mInterceptor:Lcom/hjq/permissions/IPermissionInterceptor;

    .line 153
    .local v7, "interceptor":Lcom/hjq/permissions/IPermissionInterceptor;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/hjq/permissions/XXPermissions;->mPermissions:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object v8, v1

    .line 155
    .local v8, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Lcom/hjq/permissions/XXPermissions;->isCheckMode(Landroid/content/Context;)Z

    move-result v9

    .line 158
    .local v9, "checkMode":Z
    invoke-static {v0}, Lcom/hjq/permissions/PermissionUtils;->findActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v10

    .line 159
    .local v10, "activity":Landroid/app/Activity;
    invoke-static {v10, v9}, Lcom/hjq/permissions/PermissionChecker;->checkActivityStatus(Landroid/app/Activity;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 160
    return-void

    .line 164
    :cond_2
    invoke-static {v8, v9}, Lcom/hjq/permissions/PermissionChecker;->checkPermissionArgument(Ljava/util/List;Z)Z

    move-result v1

    if-nez v1, :cond_3

    .line 165
    return-void

    .line 168
    :cond_3
    if-eqz v9, :cond_4

    .line 170
    invoke-static {v0}, Lcom/hjq/permissions/PermissionUtils;->getAndroidManifestInfo(Landroid/content/Context;)Lcom/hjq/permissions/AndroidManifestInfo;

    move-result-object v1

    .line 172
    .local v1, "androidManifestInfo":Lcom/hjq/permissions/AndroidManifestInfo;
    invoke-static {v0, v8}, Lcom/hjq/permissions/PermissionChecker;->checkMediaLocationPermission(Landroid/content/Context;Ljava/util/List;)V

    .line 174
    invoke-static {v0, v8, v1}, Lcom/hjq/permissions/PermissionChecker;->checkStoragePermission(Landroid/content/Context;Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V

    .line 176
    invoke-static {v8}, Lcom/hjq/permissions/PermissionChecker;->checkBodySensorsPermission(Ljava/util/List;)V

    .line 178
    invoke-static {v8}, Lcom/hjq/permissions/PermissionChecker;->checkLocationPermission(Ljava/util/List;)V

    .line 180
    invoke-static {v10, v8, v1}, Lcom/hjq/permissions/PermissionChecker;->checkPictureInPicturePermission(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V

    .line 182
    invoke-static {v8, v1}, Lcom/hjq/permissions/PermissionChecker;->checkNotificationListenerPermission(Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V

    .line 184
    invoke-static {v8, v1}, Lcom/hjq/permissions/PermissionChecker;->checkNearbyDevicesPermission(Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V

    .line 186
    invoke-static {v0, v8}, Lcom/hjq/permissions/PermissionChecker;->checkTargetSdkVersion(Landroid/content/Context;Ljava/util/List;)V

    .line 188
    invoke-static {v0, v8, v1}, Lcom/hjq/permissions/PermissionChecker;->checkManifestPermissions(Landroid/content/Context;Ljava/util/List;Lcom/hjq/permissions/AndroidManifestInfo;)V

    .line 192
    .end local v1    # "androidManifestInfo":Lcom/hjq/permissions/AndroidManifestInfo;
    :cond_4
    invoke-static {v8}, Lcom/hjq/permissions/PermissionChecker;->optimizeDeprecatedPermission(Ljava/util/List;)V

    .line 194
    invoke-static {v0, v8}, Lcom/hjq/permissions/PermissionApi;->isGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 196
    if-eqz p1, :cond_5

    .line 197
    const/4 v5, 0x1

    move-object v1, v7

    move-object v2, v10

    move-object v3, v8

    move-object v4, v8

    move-object v6, p1

    invoke-interface/range {v1 .. v6}, Lcom/hjq/permissions/IPermissionInterceptor;->grantedPermissionRequest(Landroid/app/Activity;Ljava/util/List;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    .line 198
    const/4 v1, 0x1

    invoke-interface {v7, v10, v8, v1, p1}, Lcom/hjq/permissions/IPermissionInterceptor;->finishPermissionRequest(Landroid/app/Activity;Ljava/util/List;ZLcom/hjq/permissions/OnPermissionCallback;)V

    .line 200
    :cond_5
    return-void

    .line 204
    :cond_6
    invoke-interface {v7, v10, v8, p1}, Lcom/hjq/permissions/IPermissionInterceptor;->launchPermissionRequest(Landroid/app/Activity;Ljava/util/List;Lcom/hjq/permissions/OnPermissionCallback;)V

    .line 205
    return-void
.end method

.method public revokeOnKill()Z
    .locals 5

    .line 213
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 214
    return v1

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mContext:Landroid/content/Context;

    .line 219
    .local v0, "context":Landroid/content/Context;
    iget-object v2, p0, Lcom/hjq/permissions/XXPermissions;->mPermissions:Ljava/util/List;

    .line 221
    .local v2, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    return v1

    .line 225
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid13()Z

    move-result v3

    if-nez v3, :cond_2

    .line 226
    return v1

    .line 230
    :cond_2
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 232
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/content/Context;->revokeSelfPermissionOnKill(Ljava/lang/String;)V

    goto :goto_0

    .line 235
    :cond_3
    invoke-virtual {v0, v2}, Landroid/content/Context;->revokeSelfPermissionsOnKill(Ljava/util/Collection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return v4

    .line 238
    :catch_0
    move-exception v3

    .line 239
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    invoke-direct {p0, v0}, Lcom/hjq/permissions/XXPermissions;->isCheckMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 242
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 243
    return v1

    .line 240
    :cond_4
    throw v3
.end method

.method public unchecked()Lcom/hjq/permissions/XXPermissions;
    .locals 1

    .line 132
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/hjq/permissions/XXPermissions;->mCheckMode:Ljava/lang/Boolean;

    .line 133
    return-object p0
.end method

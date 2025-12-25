.class Lcom/hjq/permissions/PermissionDelegateImplV14;
.super Ljava/lang/Object;
.source "PermissionDelegateImplV14.java"

# interfaces
.implements Lcom/hjq/permissions/PermissionDelegate;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getVpnPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 54
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 55
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/hjq/permissions/PermissionUtils;->areActivityIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 56
    invoke-static {p0}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 58
    :cond_0
    return-object v0
.end method

.method private static isGrantedVpnPermission(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .line 47
    invoke-static {p0}, Landroid/net/VpnService;->prepare(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getPermissionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .line 36
    const-string v0, "android.permission.BIND_VPN_SERVICE"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {p1}, Lcom/hjq/permissions/PermissionDelegateImplV14;->getVpnPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 40
    :cond_0
    invoke-static {p1}, Lcom/hjq/permissions/PermissionIntentManager;->getApplicationDetailsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "permission"    # Ljava/lang/String;

    .line 22
    const-string v0, "android.permission.BIND_VPN_SERVICE"

    invoke-static {p2, v0}, Lcom/hjq/permissions/PermissionUtils;->equalsPermission(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-static {p1}, Lcom/hjq/permissions/PermissionDelegateImplV14;->isGrantedVpnPermission(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 26
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isPermissionPermanentDenied(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "permission"    # Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    return v0
.end method

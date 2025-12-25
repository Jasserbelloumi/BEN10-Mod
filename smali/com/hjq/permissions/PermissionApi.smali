.class final Lcom/hjq/permissions/PermissionApi;
.super Ljava/lang/Object;
.source "PermissionApi.java"


# static fields
.field private static final DELEGATE:Lcom/hjq/permissions/PermissionDelegate;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid13()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    new-instance v0, Lcom/hjq/permissions/PermissionDelegateImplV33;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionDelegateImplV33;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    goto/16 :goto_0

    .line 25
    :cond_0
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid12()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 26
    new-instance v0, Lcom/hjq/permissions/PermissionDelegateImplV31;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionDelegateImplV31;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    goto/16 :goto_0

    .line 27
    :cond_1
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid11()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 28
    new-instance v0, Lcom/hjq/permissions/PermissionDelegateImplV30;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionDelegateImplV30;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    goto/16 :goto_0

    .line 29
    :cond_2
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid10()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 30
    new-instance v0, Lcom/hjq/permissions/PermissionDelegateImplV29;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionDelegateImplV29;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    goto :goto_0

    .line 31
    :cond_3
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid9()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 32
    new-instance v0, Lcom/hjq/permissions/PermissionDelegateImplV28;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionDelegateImplV28;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    goto :goto_0

    .line 33
    :cond_4
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid8()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 34
    new-instance v0, Lcom/hjq/permissions/PermissionDelegateImplV26;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionDelegateImplV26;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    goto :goto_0

    .line 35
    :cond_5
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid6()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    new-instance v0, Lcom/hjq/permissions/PermissionDelegateImplV23;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionDelegateImplV23;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    goto :goto_0

    .line 37
    :cond_6
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid5()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 38
    new-instance v0, Lcom/hjq/permissions/PermissionDelegateImplV21;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionDelegateImplV21;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    goto :goto_0

    .line 39
    :cond_7
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_4()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 40
    new-instance v0, Lcom/hjq/permissions/PermissionDelegateImplV19;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionDelegateImplV19;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    goto :goto_0

    .line 41
    :cond_8
    invoke-static {}, Lcom/hjq/permissions/AndroidVersion;->isAndroid4_3()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 42
    new-instance v0, Lcom/hjq/permissions/PermissionDelegateImplV18;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionDelegateImplV18;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    goto :goto_0

    .line 44
    :cond_9
    new-instance v0, Lcom/hjq/permissions/PermissionDelegateImplV14;

    invoke-direct {v0}, Lcom/hjq/permissions/PermissionDelegateImplV14;-><init>()V

    sput-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    .line 46
    :goto_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static containsSpecialPermission(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 80
    .local p0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 84
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    .local v2, "permission":Ljava/lang/String;
    invoke-static {v2}, Lcom/hjq/permissions/PermissionApi;->isSpecialPermission(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 86
    const/4 v0, 0x1

    return v0

    .line 88
    .end local v2    # "permission":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 89
    :cond_2
    return v0

    .line 81
    :cond_3
    :goto_1
    return v0
.end method

.method static getDeniedPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    .line 126
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    .local v0, "deniedPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 128
    .local v2, "permission":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionApi;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 129
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 132
    :cond_1
    return-object v0
.end method

.method static getDeniedPermissions(Ljava/util/List;[I)Ljava/util/List;
    .locals 4
    .param p1, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 157
    .local p0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v0, "deniedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 160
    aget v2, p1, v1

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 161
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 164
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method static getGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;
    .locals 4
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

    .line 113
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 114
    .local v0, "grantedPermission":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 115
    .local v2, "permission":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionApi;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    .end local v2    # "permission":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 119
    :cond_1
    return-object v0
.end method

.method static getGrantedPermissions(Ljava/util/List;[I)Ljava/util/List;
    .locals 3
    .param p1, "grantResults"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 174
    .local p0, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 175
    .local v0, "grantedPermissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 177
    aget v2, p1, v1

    if-nez v2, :cond_0

    .line 178
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 181
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method static getPermissionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 66
    sget-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    invoke-interface {v0, p0, p1}, Lcom/hjq/permissions/PermissionDelegate;->getPermissionIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 52
    sget-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    invoke-interface {v0, p0, p1}, Lcom/hjq/permissions/PermissionDelegate;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isGrantedPermissions(Landroid/content/Context;Ljava/util/List;)Z
    .locals 4
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

    .line 96
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 97
    return v1

    .line 100
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 101
    .local v2, "permission":Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/hjq/permissions/PermissionApi;->isGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 102
    return v1

    .line 104
    .end local v2    # "permission":Ljava/lang/String;
    :cond_1
    goto :goto_0

    .line 106
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method static isPermissionPermanentDenied(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "permission"    # Ljava/lang/String;

    .line 59
    sget-object v0, Lcom/hjq/permissions/PermissionApi;->DELEGATE:Lcom/hjq/permissions/PermissionDelegate;

    invoke-interface {v0, p0, p1}, Lcom/hjq/permissions/PermissionDelegate;->isPermissionPermanentDenied(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static isPermissionPermanentDenied(Landroid/app/Activity;Ljava/util/List;)Z
    .locals 3
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

    .line 142
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    .local v1, "permission":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/hjq/permissions/PermissionApi;->isPermissionPermanentDenied(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 144
    const/4 v0, 0x1

    return v0

    .line 146
    .end local v1    # "permission":Ljava/lang/String;
    :cond_0
    goto :goto_0

    .line 147
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method static isSpecialPermission(Ljava/lang/String;)Z
    .locals 1
    .param p0, "permission"    # Ljava/lang/String;

    .line 73
    invoke-static {p0}, Lcom/hjq/permissions/PermissionUtils;->isSpecialPermission(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

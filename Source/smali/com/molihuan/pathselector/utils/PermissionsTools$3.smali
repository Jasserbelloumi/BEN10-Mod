.class final Lcom/molihuan/pathselector/utils/PermissionsTools$3;
.super Ljava/lang/Object;
.source "PermissionsTools.java"

# interfaces
.implements Lcom/hjq/permissions/OnPermissionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/molihuan/pathselector/utils/PermissionsTools;->generalPermissionsOfStorage(Landroid/content/Context;Lcom/hjq/permissions/OnPermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$generalPermissionCallback:Lcom/hjq/permissions/OnPermissionCallback;


# direct methods
.method constructor <init>(Lcom/hjq/permissions/OnPermissionCallback;Landroid/content/Context;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/molihuan/pathselector/utils/PermissionsTools$3;->val$generalPermissionCallback:Lcom/hjq/permissions/OnPermissionCallback;

    iput-object p2, p0, Lcom/molihuan/pathselector/utils/PermissionsTools$3;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDenied(Ljava/util/List;Z)V
    .locals 3
    .param p2, "never"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 138
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "general"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/utils/PermissionsTools$3;->val$context:Landroid/content/Context;

    sget v2, Lcom/molihuan/pathselector/R$string;->tip_denial_authorization_mlh:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->toast(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 144
    :cond_0
    invoke-static {}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->make()Lcom/blankj/molihuan/utilcode/util/ToastUtils;

    move-result-object v0

    sget v1, Lcom/molihuan/pathselector/R$string;->tip_permission_failed_mlh:I

    invoke-virtual {v0, v1}, Lcom/blankj/molihuan/utilcode/util/ToastUtils;->show(I)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/molihuan/pathselector/utils/PermissionsTools$3;->val$generalPermissionCallback:Lcom/hjq/permissions/OnPermissionCallback;

    invoke-interface {v0, p1, p2}, Lcom/hjq/permissions/OnPermissionCallback;->onDenied(Ljava/util/List;Z)V

    .line 149
    return-void
.end method

.method public onGranted(Ljava/util/List;Z)V
    .locals 1
    .param p2, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 132
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string/jumbo v0, "\u4e00\u822c\u5b58\u50a8\u6743\u9650------\u83b7\u53d6\u6210\u529f"

    invoke-static {v0}, Lcom/molihuan/pathselector/utils/Mtools;->log(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/molihuan/pathselector/utils/PermissionsTools$3;->val$generalPermissionCallback:Lcom/hjq/permissions/OnPermissionCallback;

    invoke-interface {v0, p1, p2}, Lcom/hjq/permissions/OnPermissionCallback;->onGranted(Ljava/util/List;Z)V

    .line 134
    return-void
.end method

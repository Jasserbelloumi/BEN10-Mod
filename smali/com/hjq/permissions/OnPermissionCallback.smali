.class public interface abstract Lcom/hjq/permissions/OnPermissionCallback;
.super Ljava/lang/Object;
.source "OnPermissionCallback.java"


# virtual methods
.method public onDenied(Ljava/util/List;Z)V
    .locals 0
    .param p2, "doNotAskAgain"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 29
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    return-void
.end method

.method public abstract onGranted(Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

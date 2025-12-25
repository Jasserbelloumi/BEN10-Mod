.class public abstract Lcom/molihuan/pathselector/listener/FileItemListener;
.super Ljava/lang/Object;
.source "FileItemListener.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method


# virtual methods
.method public abstract onClick(Landroid/view/View;Lcom/molihuan/pathselector/entity/FileBean;Ljava/lang/String;Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;)Z
.end method

.method public onLongClick(Landroid/view/View;Lcom/molihuan/pathselector/entity/FileBean;Ljava/lang/String;Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "file"    # Lcom/molihuan/pathselector/entity/FileBean;
    .param p3, "currentPath"    # Ljava/lang/String;
    .param p4, "pathSelectFragment"    # Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;

    .line 37
    const/4 v0, 0x0

    return v0
.end method

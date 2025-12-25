.class public abstract Lcom/molihuan/pathselector/listener/CommonItemListener;
.super Lcom/molihuan/pathselector/listener/BaseItemListener;
.source "CommonItemListener.java"


# instance fields
.field protected needReturnNow:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcom/molihuan/pathselector/entity/FontBean;)V
    .locals 1
    .param p1, "fontBean"    # Lcom/molihuan/pathselector/entity/FontBean;

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/molihuan/pathselector/listener/CommonItemListener;-><init>(Lcom/molihuan/pathselector/entity/FontBean;Ljava/lang/Boolean;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/molihuan/pathselector/entity/FontBean;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "fontBean"    # Lcom/molihuan/pathselector/entity/FontBean;
    .param p2, "needReturnNow"    # Ljava/lang/Boolean;

    .line 43
    invoke-direct {p0, p1}, Lcom/molihuan/pathselector/listener/BaseItemListener;-><init>(Lcom/molihuan/pathselector/entity/FontBean;)V

    .line 44
    iput-object p2, p0, Lcom/molihuan/pathselector/listener/CommonItemListener;->needReturnNow:Ljava/lang/Boolean;

    .line 45
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 25
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/molihuan/pathselector/listener/CommonItemListener;-><init>(Ljava/lang/CharSequence;Ljava/lang/Boolean;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "needReturnNow"    # Ljava/lang/Boolean;

    .line 29
    invoke-direct {p0, p1}, Lcom/molihuan/pathselector/listener/BaseItemListener;-><init>(Ljava/lang/CharSequence;)V

    .line 30
    iput-object p2, p0, Lcom/molihuan/pathselector/listener/CommonItemListener;->needReturnNow:Ljava/lang/Boolean;

    .line 31
    return-void
.end method


# virtual methods
.method public abstract onClick(Landroid/view/View;Landroid/widget/TextView;Ljava/util/List;Ljava/lang/String;Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/TextView;",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;",
            ")Z"
        }
    .end annotation
.end method

.method public onLongClick(Landroid/view/View;Landroid/widget/TextView;Ljava/util/List;Ljava/lang/String;Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "tv"    # Landroid/widget/TextView;
    .param p4, "currentPath"    # Ljava/lang/String;
    .param p5, "pathSelectFragment"    # Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/widget/TextView;",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/molihuan/pathselector/fragment/BasePathSelectFragment;",
            ")Z"
        }
    .end annotation

    .line 71
    .local p3, "selectedFiles":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public setViewStyle(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;)Z
    .locals 1
    .param p1, "container"    # Landroid/widget/RelativeLayout;
    .param p2, "leftImg"    # Landroid/widget/ImageView;
    .param p3, "textView"    # Landroid/widget/TextView;

    .line 56
    const/4 v0, 0x0

    return v0
.end method

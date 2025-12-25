.class public Lcom/molihuan/pathselector/listener/BaseItemListener;
.super Ljava/lang/Object;
.source "BaseItemListener.java"


# instance fields
.field protected fontBean:Lcom/molihuan/pathselector/entity/FontBean;


# direct methods
.method public constructor <init>(Lcom/molihuan/pathselector/entity/FontBean;)V
    .locals 0
    .param p1, "fontBean"    # Lcom/molihuan/pathselector/entity/FontBean;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/molihuan/pathselector/listener/BaseItemListener;->fontBean:Lcom/molihuan/pathselector/entity/FontBean;

    .line 20
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/molihuan/pathselector/entity/FontBean;

    invoke-direct {v0, p1}, Lcom/molihuan/pathselector/entity/FontBean;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/molihuan/pathselector/listener/BaseItemListener;->fontBean:Lcom/molihuan/pathselector/entity/FontBean;

    .line 16
    return-void
.end method


# virtual methods
.method public getFontBean()Lcom/molihuan/pathselector/entity/FontBean;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/molihuan/pathselector/listener/BaseItemListener;->fontBean:Lcom/molihuan/pathselector/entity/FontBean;

    return-object v0
.end method

.method public setFontBean(Lcom/molihuan/pathselector/entity/FontBean;)V
    .locals 0
    .param p1, "fontBean"    # Lcom/molihuan/pathselector/entity/FontBean;

    .line 27
    iput-object p1, p0, Lcom/molihuan/pathselector/listener/BaseItemListener;->fontBean:Lcom/molihuan/pathselector/entity/FontBean;

    .line 28
    return-void
.end method

.class public Lcom/molihuan/pathselector/entity/FontBean;
.super Ljava/lang/Object;
.source "FontBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private color:Ljava/lang/Integer;

.field private leftIcoResId:Ljava/lang/Integer;

.field private size:Ljava/lang/Integer;

.field private text:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;

    .line 22
    const/16 v0, 0x12

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/molihuan/pathselector/entity/FontBean;-><init>(Ljava/lang/CharSequence;Ljava/lang/Integer;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "size"    # Ljava/lang/Integer;

    .line 26
    const/high16 v0, -0x1000000

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/molihuan/pathselector/entity/FontBean;-><init>(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "size"    # Ljava/lang/Integer;
    .param p3, "color"    # Ljava/lang/Integer;

    .line 30
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/molihuan/pathselector/entity/FontBean;-><init>(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "size"    # Ljava/lang/Integer;
    .param p3, "color"    # Ljava/lang/Integer;
    .param p4, "leftIcoResId"    # Ljava/lang/Integer;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FontBean;->text:Ljava/lang/CharSequence;

    .line 35
    iput-object p2, p0, Lcom/molihuan/pathselector/entity/FontBean;->size:Ljava/lang/Integer;

    .line 36
    iput-object p3, p0, Lcom/molihuan/pathselector/entity/FontBean;->color:Ljava/lang/Integer;

    .line 37
    iput-object p4, p0, Lcom/molihuan/pathselector/entity/FontBean;->leftIcoResId:Ljava/lang/Integer;

    .line 38
    return-void
.end method


# virtual methods
.method public getColor()Ljava/lang/Integer;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FontBean;->color:Ljava/lang/Integer;

    return-object v0
.end method

.method public getLeftIcoResId()Ljava/lang/Integer;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FontBean;->leftIcoResId:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSize()Ljava/lang/Integer;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FontBean;->size:Ljava/lang/Integer;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FontBean;->text:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public setColor(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/Integer;

    .line 61
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FontBean;->color:Ljava/lang/Integer;

    .line 62
    return-void
.end method

.method public setLeftIcoResId(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "leftIcoResId"    # Ljava/lang/Integer;

    .line 69
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FontBean;->leftIcoResId:Ljava/lang/Integer;

    .line 70
    return-void
.end method

.method public setSize(Ljava/lang/Integer;)V
    .locals 0
    .param p1, "size"    # Ljava/lang/Integer;

    .line 53
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FontBean;->size:Ljava/lang/Integer;

    .line 54
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FontBean;->text:Ljava/lang/CharSequence;

    .line 46
    return-void
.end method

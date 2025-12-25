.class public Lcom/molihuan/pathselector/entity/StorageBean;
.super Ljava/lang/Object;
.source "StorageBean.java"


# instance fields
.field private rootPath:Ljava/lang/String;

.field private selected:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "rootPath"    # Ljava/lang/String;
    .param p2, "selected"    # Ljava/lang/Boolean;

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/StorageBean;->rootPath:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lcom/molihuan/pathselector/entity/StorageBean;->selected:Ljava/lang/Boolean;

    .line 19
    return-void
.end method


# virtual methods
.method public getRootPath()Ljava/lang/String;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/StorageBean;->rootPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSelected()Ljava/lang/Boolean;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/StorageBean;->selected:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setRootPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "rootPath"    # Ljava/lang/String;

    .line 26
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/StorageBean;->rootPath:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setSelected(Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "selected"    # Ljava/lang/Boolean;

    .line 34
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/StorageBean;->selected:Ljava/lang/Boolean;

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StorageBean{rootPath=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/StorageBean;->rootPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", selected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/StorageBean;->selected:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

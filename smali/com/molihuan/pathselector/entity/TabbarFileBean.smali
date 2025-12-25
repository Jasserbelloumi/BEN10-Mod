.class public Lcom/molihuan/pathselector/entity/TabbarFileBean;
.super Ljava/lang/Object;
.source "TabbarFileBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private documentFile:Landroidx/documentfile/provider/DocumentFile;

.field private flag:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private useUri:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->path:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->name:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flag"    # Ljava/lang/Long;

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p3, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->flag:Ljava/lang/Long;

    .line 35
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->path:Ljava/lang/String;

    .line 36
    iput-object p2, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->name:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Landroidx/documentfile/provider/DocumentFile;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "flag"    # Ljava/lang/Long;
    .param p4, "useUri"    # Ljava/lang/Boolean;
    .param p5, "documentFile"    # Landroidx/documentfile/provider/DocumentFile;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p3, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->flag:Ljava/lang/Long;

    .line 41
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->path:Ljava/lang/String;

    .line 42
    iput-object p2, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->name:Ljava/lang/String;

    .line 43
    iput-object p4, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->useUri:Ljava/lang/Boolean;

    .line 44
    iput-object p5, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    .line 45
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->flag:Ljava/lang/Long;

    .line 49
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->path:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->name:Ljava/lang/String;

    .line 51
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->useUri:Ljava/lang/Boolean;

    .line 52
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    .line 53
    return-void
.end method

.method public getDocumentFile()Landroidx/documentfile/provider/DocumentFile;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    return-object v0
.end method

.method public getFlag()Ljava/lang/Long;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->flag:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getUseUri()Ljava/lang/Boolean;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->useUri:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setDocumentFile(Landroidx/documentfile/provider/DocumentFile;)Lcom/molihuan/pathselector/entity/TabbarFileBean;
    .locals 0
    .param p1, "documentFile"    # Landroidx/documentfile/provider/DocumentFile;

    .line 95
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    .line 96
    return-object p0
.end method

.method public setFlag(Ljava/lang/Long;)V
    .locals 0
    .param p1, "flag"    # Ljava/lang/Long;

    .line 60
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->flag:Ljava/lang/Long;

    .line 61
    return-void
.end method

.method public setName(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/TabbarFileBean;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->name:Ljava/lang/String;

    .line 78
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/TabbarFileBean;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->path:Ljava/lang/String;

    .line 69
    return-object p0
.end method

.method public setUseUri(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/TabbarFileBean;
    .locals 0
    .param p1, "useUri"    # Ljava/lang/Boolean;

    .line 86
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->useUri:Ljava/lang/Boolean;

    .line 87
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TabbarFileBean{flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->flag:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->useUri:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", documentFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/TabbarFileBean;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

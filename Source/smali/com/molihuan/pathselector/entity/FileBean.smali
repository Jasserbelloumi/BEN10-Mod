.class public Lcom/molihuan/pathselector/entity/FileBean;
.super Ljava/lang/Object;
.source "FileBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private boxChecked:Ljava/lang/Boolean;

.field private boxVisible:Ljava/lang/Boolean;

.field private childrenDirNumber:Ljava/lang/Integer;

.field private childrenFileNumber:Ljava/lang/Integer;

.field private dir:Ljava/lang/Boolean;

.field private documentFile:Landroidx/documentfile/provider/DocumentFile;

.field private fileExtension:Ljava/lang/String;

.field private fileIcoType:Ljava/lang/Integer;

.field private modifyTime:Ljava/lang/Long;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private size:Ljava/lang/Long;

.field private sizeString:Ljava/lang/String;

.field private useUri:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->path:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/lang/Long;Landroidx/documentfile/provider/DocumentFile;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "dir"    # Ljava/lang/Boolean;
    .param p4, "fileExtension"    # Ljava/lang/String;
    .param p5, "fileIcoType"    # Ljava/lang/Integer;
    .param p6, "childrenFileNumber"    # Ljava/lang/Integer;
    .param p7, "childrenDirNumber"    # Ljava/lang/Integer;
    .param p8, "boxVisible"    # Ljava/lang/Boolean;
    .param p9, "boxChecked"    # Ljava/lang/Boolean;
    .param p10, "modifyTime"    # Ljava/lang/Long;
    .param p11, "size"    # Ljava/lang/Long;
    .param p12, "documentFile"    # Landroidx/documentfile/provider/DocumentFile;
    .param p13, "useUri"    # Ljava/lang/Boolean;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->path:Ljava/lang/String;

    .line 53
    iput-object p2, p0, Lcom/molihuan/pathselector/entity/FileBean;->name:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lcom/molihuan/pathselector/entity/FileBean;->dir:Ljava/lang/Boolean;

    .line 55
    iput-object p4, p0, Lcom/molihuan/pathselector/entity/FileBean;->fileExtension:Ljava/lang/String;

    .line 56
    iput-object p5, p0, Lcom/molihuan/pathselector/entity/FileBean;->fileIcoType:Ljava/lang/Integer;

    .line 57
    iput-object p6, p0, Lcom/molihuan/pathselector/entity/FileBean;->childrenFileNumber:Ljava/lang/Integer;

    .line 58
    iput-object p7, p0, Lcom/molihuan/pathselector/entity/FileBean;->childrenDirNumber:Ljava/lang/Integer;

    .line 59
    iput-object p8, p0, Lcom/molihuan/pathselector/entity/FileBean;->boxVisible:Ljava/lang/Boolean;

    .line 60
    iput-object p9, p0, Lcom/molihuan/pathselector/entity/FileBean;->boxChecked:Ljava/lang/Boolean;

    .line 61
    iput-object p10, p0, Lcom/molihuan/pathselector/entity/FileBean;->modifyTime:Ljava/lang/Long;

    .line 62
    iput-object p11, p0, Lcom/molihuan/pathselector/entity/FileBean;->size:Ljava/lang/Long;

    .line 63
    iput-object p12, p0, Lcom/molihuan/pathselector/entity/FileBean;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    .line 64
    iput-object p13, p0, Lcom/molihuan/pathselector/entity/FileBean;->useUri:Ljava/lang/Boolean;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "size"    # Ljava/lang/Long;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->path:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/molihuan/pathselector/entity/FileBean;->name:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/molihuan/pathselector/entity/FileBean;->size:Ljava/lang/Long;

    .line 49
    return-void
.end method


# virtual methods
.method public clear()Lcom/molihuan/pathselector/entity/FileBean;
    .locals 1

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->path:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->name:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->dir:Ljava/lang/Boolean;

    .line 80
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->fileExtension:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->fileIcoType:Ljava/lang/Integer;

    .line 82
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->childrenFileNumber:Ljava/lang/Integer;

    .line 83
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->childrenDirNumber:Ljava/lang/Integer;

    .line 84
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->boxVisible:Ljava/lang/Boolean;

    .line 85
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->boxChecked:Ljava/lang/Boolean;

    .line 86
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->modifyTime:Ljava/lang/Long;

    .line 87
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->size:Ljava/lang/Long;

    .line 88
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    .line 89
    iput-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->useUri:Ljava/lang/Boolean;

    .line 90
    return-object p0
.end method

.method public getBoxChecked()Ljava/lang/Boolean;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->boxChecked:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getBoxVisible()Ljava/lang/Boolean;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->boxVisible:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getChildrenDirNumber()Ljava/lang/Integer;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->childrenDirNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getChildrenFileNumber()Ljava/lang/Integer;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->childrenFileNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDocumentFile()Landroidx/documentfile/provider/DocumentFile;
    .locals 1

    .line 194
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    return-object v0
.end method

.method public getFileExtension()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->fileExtension:Ljava/lang/String;

    return-object v0
.end method

.method public getFileIcoType()Ljava/lang/Integer;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->fileIcoType:Ljava/lang/Integer;

    return-object v0
.end method

.method public getModifyTime()Ljava/lang/Long;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->modifyTime:Ljava/lang/Long;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()Ljava/lang/Long;
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->size:Ljava/lang/Long;

    return-object v0
.end method

.method public getSizeString()Ljava/lang/String;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->sizeString:Ljava/lang/String;

    return-object v0
.end method

.method public getUseUri()Ljava/lang/Boolean;
    .locals 1

    .line 203
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->useUri:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isDir()Ljava/lang/Boolean;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/molihuan/pathselector/entity/FileBean;->dir:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setBoxChecked(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "boxChecked"    # Ljava/lang/Boolean;

    .line 162
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->boxChecked:Ljava/lang/Boolean;

    .line 163
    return-object p0
.end method

.method public setBoxVisible(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "boxVisible"    # Ljava/lang/Boolean;

    .line 153
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->boxVisible:Ljava/lang/Boolean;

    .line 154
    return-object p0
.end method

.method public setChildrenDirNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "childrenDirNumber"    # Ljava/lang/Integer;

    .line 144
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->childrenDirNumber:Ljava/lang/Integer;

    .line 145
    return-object p0
.end method

.method public setChildrenFileNumber(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "childrenFileNumber"    # Ljava/lang/Integer;

    .line 135
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->childrenFileNumber:Ljava/lang/Integer;

    .line 136
    return-object p0
.end method

.method public setDir(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "dir"    # Ljava/lang/Boolean;

    .line 107
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->dir:Ljava/lang/Boolean;

    .line 108
    return-object p0
.end method

.method public setDocumentFile(Landroidx/documentfile/provider/DocumentFile;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "documentFile"    # Landroidx/documentfile/provider/DocumentFile;

    .line 198
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    .line 199
    return-object p0
.end method

.method public setFileExtension(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "fileExtension"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->fileExtension:Ljava/lang/String;

    .line 117
    return-object p0
.end method

.method public setFileIcoType(Ljava/lang/Integer;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "fileIcoType"    # Ljava/lang/Integer;

    .line 125
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->fileIcoType:Ljava/lang/Integer;

    .line 126
    return-object p0
.end method

.method public setModifyTime(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "modifyTime"    # Ljava/lang/Long;

    .line 171
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->modifyTime:Ljava/lang/Long;

    .line 172
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 98
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->name:Ljava/lang/String;

    .line 99
    return-object p0
.end method

.method public setPath(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 72
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->path:Ljava/lang/String;

    .line 73
    return-object p0
.end method

.method public setSize(Ljava/lang/Long;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "size"    # Ljava/lang/Long;

    .line 180
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->size:Ljava/lang/Long;

    .line 181
    return-object p0
.end method

.method public setSizeString(Ljava/lang/String;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "sizeString"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->sizeString:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public setUseUri(Ljava/lang/Boolean;)Lcom/molihuan/pathselector/entity/FileBean;
    .locals 0
    .param p1, "useUri"    # Ljava/lang/Boolean;

    .line 207
    iput-object p1, p0, Lcom/molihuan/pathselector/entity/FileBean;->useUri:Ljava/lang/Boolean;

    .line 208
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FileBean{path=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/FileBean;->path:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", name=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/molihuan/pathselector/entity/FileBean;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", dir="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/molihuan/pathselector/entity/FileBean;->dir:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", fileExtension=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/molihuan/pathselector/entity/FileBean;->fileExtension:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileIcoType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/FileBean;->fileIcoType:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", childrenFileNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/FileBean;->childrenFileNumber:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", childrenDirNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/FileBean;->childrenDirNumber:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boxVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/FileBean;->boxVisible:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", boxChecked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/FileBean;->boxChecked:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", modifyTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/FileBean;->modifyTime:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/FileBean;->size:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", documentFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/FileBean;->documentFile:Landroidx/documentfile/provider/DocumentFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", useUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/molihuan/pathselector/entity/FileBean;->useUri:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.class Lcom/molihuan/pathselector/dao/SelectConfigData$1;
.super Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;
.source "SelectConfigData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/molihuan/pathselector/dao/SelectConfigData;->initHook()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/molihuan/pathselector/dao/SelectConfigData;


# direct methods
.method constructor <init>(Lcom/molihuan/pathselector/dao/SelectConfigData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/molihuan/pathselector/dao/SelectConfigData;

    .line 227
    iput-object p1, p0, Lcom/molihuan/pathselector/dao/SelectConfigData$1;->this$0:Lcom/molihuan/pathselector/dao/SelectConfigData;

    invoke-direct {p0}, Lcom/molihuan/pathselector/hooks/AbstractLifeCycle;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterUpdateFileList(Ljava/util/List;Lcom/molihuan/pathselector/adapter/FileListAdapter;)V
    .locals 0
    .param p2, "fileAdapter"    # Lcom/molihuan/pathselector/adapter/FileListAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/molihuan/pathselector/entity/FileBean;",
            ">;",
            "Lcom/molihuan/pathselector/adapter/FileListAdapter;",
            ")V"
        }
    .end annotation

    .line 231
    .local p1, "fileList":Ljava/util/List;, "Ljava/util/List<Lcom/molihuan/pathselector/entity/FileBean;>;"
    return-void
.end method

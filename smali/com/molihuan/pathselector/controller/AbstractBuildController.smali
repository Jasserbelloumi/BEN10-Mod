.class public abstract Lcom/molihuan/pathselector/controller/AbstractBuildController;
.super Ljava/lang/Object;
.source "AbstractBuildController.java"


# instance fields
.field protected mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getSelectConfigData()Lcom/molihuan/pathselector/dao/SelectConfigData;

    move-result-object v0

    iput-object v0, p0, Lcom/molihuan/pathselector/controller/AbstractBuildController;->mConfigData:Lcom/molihuan/pathselector/dao/SelectConfigData;

    return-void
.end method


# virtual methods
.method public abstract getDialogFragment()Lcom/molihuan/pathselector/dialog/AbstractFragmentDialog;
.end method

.method public abstract getPathSelectFragment()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
.end method

.method public abstract show()Lcom/molihuan/pathselector/fragment/impl/PathSelectFragment;
.end method

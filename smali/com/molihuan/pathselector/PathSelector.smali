.class public Lcom/molihuan/pathselector/PathSelector;
.super Ljava/lang/Object;
.source "PathSelector.java"


# static fields
.field private static fragment:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static build(Landroid/content/Context;I)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildType"    # I

    .line 42
    const/4 v0, 0x0

    sput-object v0, Lcom/molihuan/pathselector/PathSelector;->fragment:Landroidx/fragment/app/Fragment;

    .line 43
    invoke-static {p0, p1}, Lcom/molihuan/pathselector/PathSelector;->finalBuild(Landroid/content/Context;I)Lcom/molihuan/pathselector/service/IConfigDataBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static build(Landroidx/fragment/app/Fragment;I)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 2
    .param p0, "fragment"    # Landroidx/fragment/app/Fragment;
    .param p1, "buildType"    # I

    .line 35
    sput-object p0, Lcom/molihuan/pathselector/PathSelector;->fragment:Landroidx/fragment/app/Fragment;

    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 37
    .local v0, "context":Landroid/content/Context;
    const-string v1, "context is null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    invoke-static {v0, p1}, Lcom/molihuan/pathselector/PathSelector;->finalBuild(Landroid/content/Context;I)Lcom/molihuan/pathselector/service/IConfigDataBuilder;

    move-result-object v1

    return-object v1
.end method

.method private static finalBuild(Landroid/content/Context;I)Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "buildType"    # I

    .line 47
    invoke-static {}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;->getInstance()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    move-result-object v0

    .line 48
    .local v0, "builder":Lcom/molihuan/pathselector/service/IConfigDataBuilder;
    invoke-interface {v0, p0}, Lcom/molihuan/pathselector/service/IConfigDataBuilder;->setContext(Landroid/content/Context;)Lcom/molihuan/pathselector/service/IConfigDataBuilder;

    move-result-object v1

    .line 49
    invoke-interface {v1, p1}, Lcom/molihuan/pathselector/service/IConfigDataBuilder;->setBuildType(I)Lcom/molihuan/pathselector/service/IConfigDataBuilder;

    .line 50
    return-object v0
.end method

.method public static getFragment()Landroidx/fragment/app/Fragment;
    .locals 1

    .line 27
    sget-object v0, Lcom/molihuan/pathselector/PathSelector;->fragment:Landroidx/fragment/app/Fragment;

    return-object v0
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "var"    # Z

    .line 31
    invoke-static {p0}, Lcom/molihuan/pathselector/configs/PathSelectorConfig;->setDebug(Z)V

    .line 32
    return-void
.end method

.class public Lcom/molihuan/pathselector/configs/PathSelectorConfig;
.super Ljava/lang/Object;
.source "PathSelectorConfig.java"


# static fields
.field public static AUTO_GET_PERMISSION:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lcom/molihuan/pathselector/configs/PathSelectorConfig;->AUTO_GET_PERMISSION:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setAutoGetPermission(Z)V
    .locals 0
    .param p0, "need"    # Z

    .line 31
    sput-boolean p0, Lcom/molihuan/pathselector/configs/PathSelectorConfig;->AUTO_GET_PERMISSION:Z

    .line 32
    return-void
.end method

.method public static setDebug(Z)V
    .locals 0
    .param p0, "var"    # Z

    .line 26
    invoke-static {p0}, Lcom/molihuan/pathselector/utils/Mtools;->setDebug(Z)V

    .line 27
    invoke-static {p0}, Lcom/xuexiang/xtask/XTask;->debug(Z)V

    .line 28
    return-void
.end method

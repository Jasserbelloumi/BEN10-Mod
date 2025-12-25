.class public Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl$ConfigDataBuilderHolder;
.super Ljava/lang/Object;
.source "ConfigDataBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfigDataBuilderHolder"
.end annotation


# static fields
.field private static final instance:Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 320
    new-instance v0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;-><init>(Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl$1;)V

    sput-object v0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl$ConfigDataBuilderHolder;->instance:Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 319
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;
    .locals 1

    .line 319
    sget-object v0, Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl$ConfigDataBuilderHolder;->instance:Lcom/molihuan/pathselector/service/impl/ConfigDataBuilderImpl;

    return-object v0
.end method

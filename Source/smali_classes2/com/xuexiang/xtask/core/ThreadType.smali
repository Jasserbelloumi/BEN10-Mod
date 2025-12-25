.class public final enum Lcom/xuexiang/xtask/core/ThreadType;
.super Ljava/lang/Enum;
.source "ThreadType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xuexiang/xtask/core/ThreadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xuexiang/xtask/core/ThreadType;

.field public static final enum ASYNC:Lcom/xuexiang/xtask/core/ThreadType;

.field public static final enum ASYNC_BACKGROUND:Lcom/xuexiang/xtask/core/ThreadType;

.field public static final enum ASYNC_EMERGENT:Lcom/xuexiang/xtask/core/ThreadType;

.field public static final enum ASYNC_IO:Lcom/xuexiang/xtask/core/ThreadType;

.field public static final enum MAIN:Lcom/xuexiang/xtask/core/ThreadType;

.field public static final enum SYNC:Lcom/xuexiang/xtask/core/ThreadType;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 31
    new-instance v0, Lcom/xuexiang/xtask/core/ThreadType;

    const-string v1, "MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xuexiang/xtask/core/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xuexiang/xtask/core/ThreadType;->MAIN:Lcom/xuexiang/xtask/core/ThreadType;

    .line 36
    new-instance v1, Lcom/xuexiang/xtask/core/ThreadType;

    const-string v3, "ASYNC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xuexiang/xtask/core/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xuexiang/xtask/core/ThreadType;->ASYNC:Lcom/xuexiang/xtask/core/ThreadType;

    .line 41
    new-instance v3, Lcom/xuexiang/xtask/core/ThreadType;

    const-string v5, "ASYNC_IO"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xuexiang/xtask/core/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xuexiang/xtask/core/ThreadType;->ASYNC_IO:Lcom/xuexiang/xtask/core/ThreadType;

    .line 46
    new-instance v5, Lcom/xuexiang/xtask/core/ThreadType;

    const-string v7, "ASYNC_EMERGENT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/xuexiang/xtask/core/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/xuexiang/xtask/core/ThreadType;->ASYNC_EMERGENT:Lcom/xuexiang/xtask/core/ThreadType;

    .line 51
    new-instance v7, Lcom/xuexiang/xtask/core/ThreadType;

    const-string v9, "ASYNC_BACKGROUND"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/xuexiang/xtask/core/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/xuexiang/xtask/core/ThreadType;->ASYNC_BACKGROUND:Lcom/xuexiang/xtask/core/ThreadType;

    .line 56
    new-instance v9, Lcom/xuexiang/xtask/core/ThreadType;

    const-string v11, "SYNC"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/xuexiang/xtask/core/ThreadType;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/xuexiang/xtask/core/ThreadType;->SYNC:Lcom/xuexiang/xtask/core/ThreadType;

    .line 26
    const/4 v11, 0x6

    new-array v11, v11, [Lcom/xuexiang/xtask/core/ThreadType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    sput-object v11, Lcom/xuexiang/xtask/core/ThreadType;->$VALUES:[Lcom/xuexiang/xtask/core/ThreadType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xuexiang/xtask/core/ThreadType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lcom/xuexiang/xtask/core/ThreadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xuexiang/xtask/core/ThreadType;

    return-object v0
.end method

.method public static values()[Lcom/xuexiang/xtask/core/ThreadType;
    .locals 1

    .line 26
    sget-object v0, Lcom/xuexiang/xtask/core/ThreadType;->$VALUES:[Lcom/xuexiang/xtask/core/ThreadType;

    invoke-virtual {v0}, [Lcom/xuexiang/xtask/core/ThreadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xuexiang/xtask/core/ThreadType;

    return-object v0
.end method

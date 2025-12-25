.class public Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$MethodHandle;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0016\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0006R\u0016\u0010\t\u001a\u0004\u0018\u00010\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\nR\u001a\u0010\u000c\u001a\u00020\u000b8\u0004X\u0084D\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001a\u0010\u0011\u001a\u00020\u00108\u0004X\u0084D\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u0015"
    }
    d2 = {
        "top/bienvenido/mundo/common/reflection/MundoReflectionStub$MethodHandle",
        "",
        "<init>",
        "()V",
        "Ljava/lang/invoke/MethodType;",
        "type",
        "Ljava/lang/invoke/MethodType;",
        "nominalType",
        "Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$MethodHandle;",
        "cachedSpreadInvoker",
        "Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$MethodHandle;",
        "",
        "handleKind",
        "I",
        "getHandleKind",
        "()I",
        "",
        "artFieldOrMethod",
        "J",
        "getArtFieldOrMethod",
        "()J",
        "mundo_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final artFieldOrMethod:J

.field private final cachedSpreadInvoker:Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$MethodHandle;

.field private final handleKind:I

.field private final nominalType:Ljava/lang/invoke/MethodType;

.field private final type:Ljava/lang/invoke/MethodType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getArtFieldOrMethod()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$MethodHandle;->artFieldOrMethod:J

    return-wide v0
.end method

.method public final getHandleKind()I
    .locals 1

    .line 1
    iget v0, p0, Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$MethodHandle;->handleKind:I

    return v0
.end method

.class public final Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub;
.super Ljava/lang/Object;
.source "r8-map-id-f931b081dc47fffbacb9b225b872bf9fbf452f68adc05d0e92c5bfbb559823b2"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u0011\n\u0002\u0008\u0005\u0018\u0000 \u00062\u00020\u0001:\u0001\u0006B!\u0008\u0002\u0012\u0016\u0010\u0003\u001a\u000c\u0012\u0008\u0008\u0001\u0012\u0004\u0018\u00010\u00010\u0002\"\u0004\u0018\u00010\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "top/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub",
        "",
        "",
        "args",
        "<init>",
        "([Ljava/lang/Object;)V",
        "Companion",
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


# static fields
.field public static final Companion:Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub;->Companion:Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub$Companion;

    return-void
.end method

.method private varargs constructor <init>([Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final varargs invoke([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub;->Companion:Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub$Companion;

    invoke-static {v0, p0}, Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub$Companion;->access$invoke(Ltop/bienvenido/mundo/common/reflection/MundoReflectionStub$InvokeStub$Companion;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

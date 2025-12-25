.class public final enum Lcom/skydoves/powerspinner/SpinnerGravity;
.super Ljava/lang/Enum;
.source "SpinnerGravity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/skydoves/powerspinner/SpinnerGravity;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/skydoves/powerspinner/SpinnerGravity;",
        "",
        "value",
        "",
        "(Ljava/lang/String;II)V",
        "getValue",
        "()I",
        "START",
        "TOP",
        "END",
        "BOTTOM",
        "powerspinner_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/skydoves/powerspinner/SpinnerGravity;

.field public static final enum BOTTOM:Lcom/skydoves/powerspinner/SpinnerGravity;

.field public static final enum END:Lcom/skydoves/powerspinner/SpinnerGravity;

.field public static final enum START:Lcom/skydoves/powerspinner/SpinnerGravity;

.field public static final enum TOP:Lcom/skydoves/powerspinner/SpinnerGravity;


# instance fields
.field private final value:I


# direct methods
.method private static final synthetic $values()[Lcom/skydoves/powerspinner/SpinnerGravity;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/skydoves/powerspinner/SpinnerGravity;

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->START:Lcom/skydoves/powerspinner/SpinnerGravity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->TOP:Lcom/skydoves/powerspinner/SpinnerGravity;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->END:Lcom/skydoves/powerspinner/SpinnerGravity;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->BOTTOM:Lcom/skydoves/powerspinner/SpinnerGravity;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 21
    new-instance v0, Lcom/skydoves/powerspinner/SpinnerGravity;

    const-string v1, "START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/skydoves/powerspinner/SpinnerGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/skydoves/powerspinner/SpinnerGravity;->START:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 22
    new-instance v0, Lcom/skydoves/powerspinner/SpinnerGravity;

    const-string v1, "TOP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/skydoves/powerspinner/SpinnerGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/skydoves/powerspinner/SpinnerGravity;->TOP:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 23
    new-instance v0, Lcom/skydoves/powerspinner/SpinnerGravity;

    const-string v1, "END"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/skydoves/powerspinner/SpinnerGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/skydoves/powerspinner/SpinnerGravity;->END:Lcom/skydoves/powerspinner/SpinnerGravity;

    .line 24
    new-instance v0, Lcom/skydoves/powerspinner/SpinnerGravity;

    const-string v1, "BOTTOM"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/skydoves/powerspinner/SpinnerGravity;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/skydoves/powerspinner/SpinnerGravity;->BOTTOM:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-static {}, Lcom/skydoves/powerspinner/SpinnerGravity;->$values()[Lcom/skydoves/powerspinner/SpinnerGravity;

    move-result-object v0

    sput-object v0, Lcom/skydoves/powerspinner/SpinnerGravity;->$VALUES:[Lcom/skydoves/powerspinner/SpinnerGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p1, "$enum$name"    # Ljava/lang/String;
    .param p2, "$enum$ordinal"    # I
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/skydoves/powerspinner/SpinnerGravity;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/skydoves/powerspinner/SpinnerGravity;
    .locals 1

    const-class v0, Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/skydoves/powerspinner/SpinnerGravity;

    return-object v0
.end method

.method public static values()[Lcom/skydoves/powerspinner/SpinnerGravity;
    .locals 1

    sget-object v0, Lcom/skydoves/powerspinner/SpinnerGravity;->$VALUES:[Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/skydoves/powerspinner/SpinnerGravity;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 20
    iget v0, p0, Lcom/skydoves/powerspinner/SpinnerGravity;->value:I

    return v0
.end method

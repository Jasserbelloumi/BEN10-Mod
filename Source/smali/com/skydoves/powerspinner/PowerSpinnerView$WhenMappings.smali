.class public final synthetic Lcom/skydoves/powerspinner/PowerSpinnerView$WhenMappings;
.super Ljava/lang/Object;
.source "PowerSpinnerView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/skydoves/powerspinner/PowerSpinnerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "WhenMappings"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final synthetic $EnumSwitchMapping$0:[I

.field public static final synthetic $EnumSwitchMapping$1:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    invoke-static {}, Lcom/skydoves/powerspinner/SpinnerGravity;->values()[Lcom/skydoves/powerspinner/SpinnerGravity;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->START:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->TOP:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->ordinal()I

    move-result v1

    const/4 v3, 0x2

    aput v3, v0, v1

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->END:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->ordinal()I

    move-result v1

    const/4 v4, 0x3

    aput v4, v0, v1

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerGravity;->BOTTOM:Lcom/skydoves/powerspinner/SpinnerGravity;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerGravity;->ordinal()I

    move-result v1

    const/4 v5, 0x4

    aput v5, v0, v1

    sput-object v0, Lcom/skydoves/powerspinner/PowerSpinnerView$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-static {}, Lcom/skydoves/powerspinner/SpinnerAnimation;->values()[Lcom/skydoves/powerspinner/SpinnerAnimation;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->DROPDOWN:Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->ordinal()I

    move-result v1

    aput v2, v0, v1

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->FADE:Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->ordinal()I

    move-result v1

    aput v3, v0, v1

    sget-object v1, Lcom/skydoves/powerspinner/SpinnerAnimation;->BOUNCE:Lcom/skydoves/powerspinner/SpinnerAnimation;

    invoke-virtual {v1}, Lcom/skydoves/powerspinner/SpinnerAnimation;->ordinal()I

    move-result v1

    aput v4, v0, v1

    sput-object v0, Lcom/skydoves/powerspinner/PowerSpinnerView$WhenMappings;->$EnumSwitchMapping$1:[I

    return-void
.end method

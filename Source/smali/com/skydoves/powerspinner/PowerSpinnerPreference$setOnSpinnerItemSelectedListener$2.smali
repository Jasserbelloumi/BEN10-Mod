.class final Lcom/skydoves/powerspinner/PowerSpinnerPreference$setOnSpinnerItemSelectedListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "PowerSpinnerPreference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerPreference;->setOnSpinnerItemSelectedListener(Lkotlin/jvm/functions/Function4;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Ljava/lang/Integer;",
        "TT;",
        "Ljava/lang/Integer;",
        "TT;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u0006\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u0001H\u00022\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0008\u0010\t"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "oldIndex",
        "",
        "oldItem",
        "newIndex",
        "newItem",
        "invoke",
        "(ILjava/lang/Object;ILjava/lang/Object;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $block:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Ljava/lang/Integer;",
            "TT;",
            "Ljava/lang/Integer;",
            "TT;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/skydoves/powerspinner/PowerSpinnerPreference;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function4;Lcom/skydoves/powerspinner/PowerSpinnerPreference;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/Integer;",
            "-TT;-",
            "Ljava/lang/Integer;",
            "-TT;",
            "Lkotlin/Unit;",
            ">;",
            "Lcom/skydoves/powerspinner/PowerSpinnerPreference;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$setOnSpinnerItemSelectedListener$2;->$block:Lkotlin/jvm/functions/Function4;

    iput-object p2, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$setOnSpinnerItemSelectedListener$2;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerPreference;

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "p1"    # Ljava/lang/Object;
    .param p2, "p2"    # Ljava/lang/Object;
    .param p3, "p3"    # Ljava/lang/Object;
    .param p4, "p4"    # Ljava/lang/Object;

    .line 211
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move-object v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1, p4}, Lcom/skydoves/powerspinner/PowerSpinnerPreference$setOnSpinnerItemSelectedListener$2;->invoke(ILjava/lang/Object;ILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 3
    .param p1, "oldIndex"    # I
    .param p2, "oldItem"    # Ljava/lang/Object;
    .param p3, "newIndex"    # I
    .param p4, "newItem"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;ITT;)V"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$setOnSpinnerItemSelectedListener$2;->$block:Lkotlin/jvm/functions/Function4;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, p2, v2, p4}, Lkotlin/jvm/functions/Function4;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$setOnSpinnerItemSelectedListener$2;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerPreference;

    invoke-static {v0, p3}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->access$persistInt(Lcom/skydoves/powerspinner/PowerSpinnerPreference;I)Z

    .line 214
    return-void
.end method

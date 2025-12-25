.class final Lcom/skydoves/powerspinner/PowerSpinnerPreference$onBindViewHolder$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "PowerSpinnerPreference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/skydoves/powerspinner/PowerSpinnerPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
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
        "Ljava/lang/Object;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Object;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0008"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "",
        "<anonymous parameter 1>",
        "",
        "newIndex",
        "<anonymous parameter 3>",
        "invoke"
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
.field final synthetic this$0:Lcom/skydoves/powerspinner/PowerSpinnerPreference;


# direct methods
.method constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerPreference;)V
    .locals 1

    iput-object p1, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$onBindViewHolder$1$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerPreference;

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

    .line 178
    move-object v0, p1

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    move-object v1, p3

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p0, v0, p2, v1, p4}, Lcom/skydoves/powerspinner/PowerSpinnerPreference$onBindViewHolder$1$1;->invoke(ILjava/lang/Object;ILjava/lang/Object;)V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke(ILjava/lang/Object;ILjava/lang/Object;)V
    .locals 1
    .param p1, "$noName_0"    # I
    .param p2, "$noName_1"    # Ljava/lang/Object;
    .param p3, "newIndex"    # I
    .param p4, "$noName_3"    # Ljava/lang/Object;

    const-string v0, "$noName_3"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/skydoves/powerspinner/PowerSpinnerPreference$onBindViewHolder$1$1;->this$0:Lcom/skydoves/powerspinner/PowerSpinnerPreference;

    invoke-static {v0, p3}, Lcom/skydoves/powerspinner/PowerSpinnerPreference;->access$persistInt(Lcom/skydoves/powerspinner/PowerSpinnerPreference;I)Z

    .line 180
    return-void
.end method

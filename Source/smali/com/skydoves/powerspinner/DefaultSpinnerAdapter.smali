.class public final Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "DefaultSpinnerAdapter.kt"

# interfaces
.implements Lcom/skydoves/powerspinner/PowerSpinnerInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;",
        ">;",
        "Lcom/skydoves/powerspinner/PowerSpinnerInterface<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDefaultSpinnerAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DefaultSpinnerAdapter.kt\ncom/skydoves/powerspinner/DefaultSpinnerAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,103:1\n1#2:104\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010!\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0008\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0008\u0012\u0004\u0012\u00020\u00040\u0003:\u0001&B\r\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0007J\u0008\u0010\u0019\u001a\u00020\tH\u0016J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0018\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u001d\u001a\u00020\u00022\u0006\u0010\u001e\u001a\u00020\tH\u0016J\u0018\u0010\u001f\u001a\u00020\u00022\u0006\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\tH\u0016J\u0016\u0010#\u001a\u00020\u001b2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00040%H\u0016R\u001a\u0010\u0008\u001a\u00020\tX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\"\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u000fX\u0096\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0014\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0016\u001a\u00020\u0006X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;",
        "Landroidx/recyclerview/widget/RecyclerView$Adapter;",
        "Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;",
        "Lcom/skydoves/powerspinner/PowerSpinnerInterface;",
        "",
        "powerSpinnerView",
        "Lcom/skydoves/powerspinner/PowerSpinnerView;",
        "(Lcom/skydoves/powerspinner/PowerSpinnerView;)V",
        "index",
        "",
        "getIndex",
        "()I",
        "setIndex",
        "(I)V",
        "onSpinnerItemSelectedListener",
        "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;",
        "getOnSpinnerItemSelectedListener",
        "()Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;",
        "setOnSpinnerItemSelectedListener",
        "(Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;)V",
        "spinnerItems",
        "",
        "spinnerView",
        "getSpinnerView",
        "()Lcom/skydoves/powerspinner/PowerSpinnerView;",
        "getItemCount",
        "notifyItemSelected",
        "",
        "onBindViewHolder",
        "holder",
        "position",
        "onCreateViewHolder",
        "parent",
        "Landroid/view/ViewGroup;",
        "viewType",
        "setItems",
        "itemList",
        "",
        "DefaultSpinnerViewHolder",
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


# instance fields
.field private index:I

.field private onSpinnerItemSelectedListener:Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final spinnerItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private final spinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;


# direct methods
.method public static synthetic $r8$lambda$3-vjndspBtAIVd_yFV9PK-ooP3g(Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->onCreateViewHolder$lambda-2$lambda-1(Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/skydoves/powerspinner/PowerSpinnerView;)V
    .locals 1
    .param p1, "powerSpinnerView"    # Lcom/skydoves/powerspinner/PowerSpinnerView;

    const-string v0, "powerSpinnerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    invoke-virtual {p1}, Lcom/skydoves/powerspinner/PowerSpinnerView;->getSelectedIndex()I

    move-result v0

    iput v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->index:I

    .line 34
    iput-object p1, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->spinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->spinnerItems:Ljava/util/List;

    .line 28
    return-void
.end method

.method private static final onCreateViewHolder$lambda-2$lambda-1(Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;Landroid/view/View;)V
    .locals 4
    .param p0, "$this_apply"    # Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;
    .param p1, "this$0"    # Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;
    .param p2, "it"    # Landroid/view/View;

    const-string v0, "$this_apply"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;->getBindingAdapterPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 104
    .local v1, "it":I
    const/4 v2, 0x0

    .line 47
    .local v2, "$i$a$-takeIf-DefaultSpinnerAdapter$onCreateViewHolder$1$1$position$1":I
    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .end local v1    # "it":I
    .end local v2    # "$i$a$-takeIf-DefaultSpinnerAdapter$onCreateViewHolder$1$1$position$1":I
    :goto_0
    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    .line 48
    return-void

    .line 47
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 49
    .local v0, "position":I
    invoke-virtual {p1, v0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->notifyItemSelected(I)V

    .line 50
    return-void
.end method


# virtual methods
.method public getIndex()I
    .locals 1

    .line 33
    iget v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->index:I

    return v0
.end method

.method public getItemCount()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->spinnerItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOnSpinnerItemSelectedListener()Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->onSpinnerItemSelectedListener:Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;

    return-object v0
.end method

.method public getSpinnerView()Lcom/skydoves/powerspinner/PowerSpinnerView;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->spinnerView:Lcom/skydoves/powerspinner/PowerSpinnerView;

    return-object v0
.end method

.method public notifyItemSelected(I)V
    .locals 6
    .param p1, "index"    # I

    .line 66
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->getIndex()I

    move-result v1

    .line 68
    .local v1, "oldIndex":I
    invoke-virtual {p0, p1}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->setIndex(I)V

    .line 69
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->getSpinnerView()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v2

    iget-object v3, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->spinnerItems:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v2, p1, v3}, Lcom/skydoves/powerspinner/PowerSpinnerView;->notifyItemSelected(ILjava/lang/CharSequence;)V

    .line 70
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->getOnSpinnerItemSelectedListener()Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_3

    .line 71
    :cond_1
    nop

    .line 72
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 104
    nop

    .local v4, "it":I
    const/4 v5, 0x0

    .line 72
    .local v5, "$i$a$-takeIf-DefaultSpinnerAdapter$notifyItemSelected$1":I
    if-eq v4, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .end local v4    # "it":I
    .end local v5    # "$i$a$-takeIf-DefaultSpinnerAdapter$notifyItemSelected$1":I
    :goto_0
    const/4 v4, 0x0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v3, v4

    :goto_1
    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 104
    nop

    .local v0, "it":I
    const/4 v3, 0x0

    .line 72
    .local v3, "$i$a$-let-DefaultSpinnerAdapter$notifyItemSelected$2":I
    iget-object v4, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->spinnerItems:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    .line 73
    .end local v0    # "it":I
    .end local v3    # "$i$a$-let-DefaultSpinnerAdapter$notifyItemSelected$2":I
    :goto_2
    nop

    .line 74
    iget-object v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->spinnerItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 70
    invoke-interface {v2, v1, v4, p1, v0}, Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;->onItemSelected(ILjava/lang/Object;ILjava/lang/Object;)V

    .line 76
    :goto_3
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "p0"    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .param p2, "p1"    # I

    .line 28
    move-object v0, p1

    check-cast v0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;

    invoke-virtual {p0, v0, p2}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->onBindViewHolder(Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;I)V
    .locals 2
    .param p1, "holder"    # Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;
    .param p2, "position"    # I

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->spinnerItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->getSpinnerView()Lcom/skydoves/powerspinner/PowerSpinnerView;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;->bind$powerspinner_release(Ljava/lang/CharSequence;Lcom/skydoves/powerspinner/PowerSpinnerView;)V

    .line 56
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 1
    .param p1, "p0"    # Landroid/view/ViewGroup;
    .param p2, "p1"    # I

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    const-string v0, "parent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 43
    nop

    .line 41
    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;

    move-result-object v0

    const-string v1, "inflate(\n        LayoutI\u2026nt,\n        false\n      )"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    nop

    .line 45
    .local v0, "binding":Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;
    new-instance v1, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;

    invoke-direct {v1, v0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;-><init>(Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;)V

    move-object v2, v1

    .local v2, "$this$onCreateViewHolder_u24lambda_u2d2":Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;
    const/4 v3, 0x0

    .line 46
    .local v3, "$i$a$-apply-DefaultSpinnerAdapter$onCreateViewHolder$1":I
    invoke-virtual {v0}, Lcom/skydoves/powerspinner/databinding/PowerspinnerItemDefaultPowerBinding;->getRoot()Landroidx/appcompat/widget/AppCompatTextView;

    move-result-object v4

    new-instance v5, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v5, v2, p0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;)V

    invoke-virtual {v4, v5}, Landroidx/appcompat/widget/AppCompatTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 51
    nop

    .line 45
    .end local v2    # "$this$onCreateViewHolder_u24lambda_u2d2":Lcom/skydoves/powerspinner/DefaultSpinnerAdapter$DefaultSpinnerViewHolder;
    .end local v3    # "$i$a$-apply-DefaultSpinnerAdapter$onCreateViewHolder$1":I
    return-object v1
.end method

.method public setIndex(I)V
    .locals 0
    .param p1, "<set-?>"    # I

    .line 33
    iput p1, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->index:I

    return-void
.end method

.method public setItems(Ljava/util/List;)V
    .locals 2
    .param p1, "itemList"    # Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->spinnerItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 60
    iget-object v0, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->spinnerItems:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 61
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->setIndex(I)V

    .line 62
    invoke-virtual {p0}, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->notifyDataSetChanged()V

    .line 63
    return-void
.end method

.method public setOnSpinnerItemSelectedListener(Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;)V
    .locals 0
    .param p1, "<set-?>"    # Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 35
    iput-object p1, p0, Lcom/skydoves/powerspinner/DefaultSpinnerAdapter;->onSpinnerItemSelectedListener:Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;

    return-void
.end method

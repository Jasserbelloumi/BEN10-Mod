.class public interface abstract Lcom/skydoves/powerspinner/PowerSpinnerInterface;
.super Ljava/lang/Object;
.source "PowerSpinnerInterface.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0000\u0008f\u0018\u0000*\u0004\u0008\u0000\u0010\u00012\u00020\u0002J\u0008\u0010\u0013\u001a\u00020\u0004H&J\u0010\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0003\u001a\u00020\u0004H&J\u0016\u0010\u0016\u001a\u00020\u00152\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0018H&R\u0018\u0010\u0003\u001a\u00020\u0004X\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R \u0010\t\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\nX\u00a6\u000e\u00a2\u0006\u000c\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u0012\u0010\u000f\u001a\u00020\u0010X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/skydoves/powerspinner/PowerSpinnerInterface;",
        "T",
        "",
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
        "spinnerView",
        "Lcom/skydoves/powerspinner/PowerSpinnerView;",
        "getSpinnerView",
        "()Lcom/skydoves/powerspinner/PowerSpinnerView;",
        "getItemCount",
        "notifyItemSelected",
        "",
        "setItems",
        "itemList",
        "",
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


# virtual methods
.method public abstract getIndex()I
.end method

.method public abstract getItemCount()I
.end method

.method public abstract getOnSpinnerItemSelectedListener()Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract getSpinnerView()Lcom/skydoves/powerspinner/PowerSpinnerView;
.end method

.method public abstract notifyItemSelected(I)V
.end method

.method public abstract setIndex(I)V
.end method

.method public abstract setItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation
.end method

.method public abstract setOnSpinnerItemSelectedListener(Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/skydoves/powerspinner/OnSpinnerItemSelectedListener<",
            "TT;>;)V"
        }
    .end annotation
.end method

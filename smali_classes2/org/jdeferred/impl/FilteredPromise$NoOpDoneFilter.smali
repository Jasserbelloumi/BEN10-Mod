.class public final Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;
.super Ljava/lang/Object;
.source "FilteredPromise.java"

# interfaces
.implements Lorg/jdeferred/DoneFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdeferred/impl/FilteredPromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoOpDoneFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdeferred/DoneFilter<",
        "TD;TD;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 61
    .local p0, "this":Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;, "Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter<TD;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterDone(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TD;)TD;"
        }
    .end annotation

    .line 64
    .local p0, "this":Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter;, "Lorg/jdeferred/impl/FilteredPromise$NoOpDoneFilter<TD;>;"
    .local p1, "result":Ljava/lang/Object;, "TD;"
    return-object p1
.end method

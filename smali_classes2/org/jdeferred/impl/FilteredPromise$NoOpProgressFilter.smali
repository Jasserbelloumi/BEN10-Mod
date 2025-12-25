.class public final Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;
.super Ljava/lang/Object;
.source "FilteredPromise.java"

# interfaces
.implements Lorg/jdeferred/ProgressFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdeferred/impl/FilteredPromise;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NoOpProgressFilter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdeferred/ProgressFilter<",
        "TP;TP;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 75
    .local p0, "this":Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;, "Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter<TP;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterProgress(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)TP;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter;, "Lorg/jdeferred/impl/FilteredPromise$NoOpProgressFilter<TP;>;"
    .local p1, "progress":Ljava/lang/Object;, "TP;"
    return-object p1
.end method

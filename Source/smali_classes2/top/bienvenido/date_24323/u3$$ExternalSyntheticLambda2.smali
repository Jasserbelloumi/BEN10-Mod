.class public final synthetic Ltop/bienvenido/date_24323/u3$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic f$0:Landroid/content/Intent;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltop/bienvenido/date_24323/u3$$ExternalSyntheticLambda2;->f$0:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ltop/bienvenido/date_24323/u3$$ExternalSyntheticLambda2;->f$0:Landroid/content/Intent;

    check-cast p1, Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Ltop/bienvenido/date_24323/u3;->要不要把你妈卵子扣出来给你做寿司吃(Landroid/content/Intent;Landroid/content/pm/PackageManager;)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    return-object p1
.end method
